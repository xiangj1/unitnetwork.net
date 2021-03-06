#!/bin/sh

while true; do

    curl https://api.coinmarketcap.com/v2/ticker/?structure=array -o Top100.json

    python3 GetCoinExplorer.py

    python3 EtherScan.py

    python3 BitinfoCharts.py

    python3 Ethereum.py

    rename -f 's/\.json.top100$/\.json/' CoinData/*.top100

done