#!/bin/bash
# gitio.sh MODULE_NO IMG_START_NO IMG_END_NO

if [ -n "$2" ]; then
	if [ -n "$3" ]; then
		for i in $(seq $2 $3)
		do
			# echo $i;
			curl -i https://git.io -F url=https://raw.githubusercontent.com/zchli/naviforce/master/"$1"/"$1"-"$i".jpg -F code=naviforce-"$1"-"$i";
		done
	else
		# echo $2;
	    curl -i https://git.io -F url=https://raw.githubusercontent.com/zchli/naviforce/master/"$1"/"$1"-"$2".jpg -F code=naviforce-"$1"-"$2";
	fi
else
	# echo $2;
    curl -i https://raw.githubusercontent.com/zchli/naviforce/master/"$1"/"$1".jpg -F code=naviforce-"$1";
fi
