#!/bin/bash

PDF=$1
TITOLO=${PDF%.pdf}

echo $TITOLO

mv "$PDF" en.pdf
gs -sDEVICE=pdfwrite -o el.pdf en.pdf -c "[ /Title ($TITOLO) /DOCINFO pdfmark"
mv el.pdf "$PDF"
rm en.pdf

