curl -s 'http://127.0.0.1:7700/multi-search'   -H 'Content-Type: application/json'   --data-raw '{
    "queries":[
      {
        "indexUid":"movie_wam",
        "q":"pony",
        "hybrid": { "embedder":"small_wam", "semanticRatio":0.78 },
        "rankingScoreThreshold": 0.01,
            "showRankingScore": true,
                "showRankingScoreDetails": true
      }
    ]
  }' | jq



curl 'http://127.0.0.1:7700/multi-search' \
  -H 'Accept: */*' \
  -H 'Accept-Language: en-US,en;q=0.9,es-US;q=0.8,es;q=0.7' \
  -H 'Connection: keep-alive' \
  -H 'Origin: https://movies.wip' \
  -H 'Sec-Fetch-Dest: empty' \
  -H 'Sec-Fetch-Mode: cors' \
  -H 'Sec-Fetch-Site: cross-site' \
  -H 'User-Agent: Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/139.0.0.0 Safari/537.36' \
  -H 'content-type: application/json' \
  -H 'sec-ch-ua: "Not;A=Brand";v="99", "Google Chrome";v="139", "Chromium";v="139"' \
  -H 'sec-ch-ua-mobile: ?0' \
  -H 'sec-ch-ua-platform: "Linux"' \
  -H 'x-meilisearch-client: Meilisearch instant-meilisearch (v0.27.0) ; Meilisearch JavaScript (v0.53.0)' \
  --data-raw '{"queries":[{"indexUid":"movie_wam","q":"building","facets":["creator","keywords","subject"],"attributesToHighlight":["*"],"highlightPreTag":"__ais-highlight__","highlightPostTag":"__/ais-highlight__","limit":21,"offset":0,"showRankingScore":true,"hybrid":{"embedder":"small_wam","semanticRatio":1},"rankingScoreThreshold":0.01}]}'
