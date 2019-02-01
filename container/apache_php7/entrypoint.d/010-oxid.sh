#!/usr/bin/env bash
set -e

# bootstrap oxid files/project
if [ ! -f /var/www/html/source/config.inc.php ]
then
	wget https://oxidforge.org/wp-content/uploads/software/OXID_ESHOP_CE_4.10.8.zip
	unzip -o OXID_ESHOP_CE_4.10.8.zip -d /var/www/html/source/
	rm OXID_ESHOP_CE_4.10.8.zip 
	mv /var/www/config.inc.php /var/www/html/source/config.inc.php
	chown -R www-data:www-data /var/www/html/source/
	echo "#####################################"
	echo "##### OXID bootstrap completed! #####"
	echo "#####################################"
fi
