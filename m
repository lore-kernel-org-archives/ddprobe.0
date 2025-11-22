Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38D3736D4FF
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763834514; cv=none; b=iVoRQpTxYSbLlUqbpdGHYA/B628HcuyBzdci3UnjSOb+pxCMFH1R91aJDDF2yahvzy+wsuYpTwP85ejT0+Wd8vzwg0qWKJ4/NhuQXLDX441Er168YkiBfxIALsI7ephge4vMgEjFjqQa/9slUAXe+cERUKB9k6mOTCE+ko4YTuw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763834514; c=relaxed/simple;
	bh=QR4gmfsIHQ0WY5pxOFUl9+1vyOtN774lXxSPSvaTP28=;
	h=To:Subject:From:Message-Id:Date; b=MRx0c0ADusEgIu78sySVQbWEKEB+bZaDz2RN6/PG9mKbkB1op6IXjF2dwD32IgEh0MSyc7HhQMPWOITkZi7Si969/EHeDHR1pJjoryzQbqyaVV1Pn1ubyJ5VcMWprXFtqprOfB3iVubbKpacXX/sOfxkR+ZgMAgs70FPXnzm7dA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTVsViW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTVsViW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2CBC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763834513;
	bh=QR4gmfsIHQ0WY5pxOFUl9+1vyOtN774lXxSPSvaTP28=;
	h=To:Subject:From:Date:From;
	b=MTVsViW+LYWGTBI88sD0iUttwsLSSbuBnDsQyykEd0Is/Ke+4jXe0kYlNnvguA7iI
	 NnhUyk+ZJFdRH5pSUVvoDzn972nkOw194YT4ory4QMKOisfCXvhLBLRGdtvog0HAPo
	 FF1ceYs29HDN+i3FupNNf6mp+KzwTavlmELSVEASFayOPL7rdc4QuvhrCxsvFb2rYB
	 1EVnSmFtxV/b+aqEg8QRVXyYD0JkcvjcEOEyukBUQ5rDflSlnGv+UFBjirdKDmc9TM
	 ZdMOyGpgTaXLvQWF56Foot2rTpxszPcU+4kdjkZ/AxReTgyBHq/KXFHgjOR1k74BHK
	 SlwSwUj04FQfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97075CFC522
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383451358.31559.1270825396263021406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceee9a3990e0d1c9ce6a155252d8ff6641334de0d9df9784de5c3394c5985c0f
Date: Sat, 22 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763834513
