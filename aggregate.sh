#!/bin/sh

rm out.txt

touch out.txt
touch aggtemp.txt

for csv in *.csv
do
	cp out.txt aggtemp.txt
    cat $csv | tail -n +3 | cut -d',' -f2 > tempCol.txt
    paste -d , tempCol.txt aggtemp.txt > out.txt
done

rm aggtemp.txt
rm tempCol.txt

