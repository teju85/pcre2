#!/bin/bash
wget -O - https://ftp.pcre.org/pub/pcre/ | \
    grep -e pcre2 | grep -e tar.gz | grep -v sig | \
    sed -e 's/.*">//' -e 's/<\/a>//' | \
    awk '{print "https://ftp.pcre.org/pub/pcre/"$1, $2, $3}'
