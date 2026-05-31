Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BFA83C2E
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780209874; cv=none; b=M+au6OhTMowMl1ynl5MaLCII9mxLwnonEsYDmE3B4pRF6XPZaduS1K/qAfflI4negd0rdw5GtDIdtyBThwjwVsYpW/KHY2RduX/icZ1lMWRd4eQVuAlz6EIN2R9vCh+hdF6n3osBZQyevKaYOdSt+1KDmMLz5WoKBbE7/DBppk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780209874; c=relaxed/simple;
	bh=7bCdhGvSOoPSxXHgNtbWT74gixqQbLcpmwEoJUsuGRE=;
	h=To:Subject:From:Message-Id:Date; b=mkCrgCR5hV5eGOaA0+V2Konb5dO0ZkhvnSI6A6Q0SKv2K1pUmG772QYLKy8wwVgVJMZC6u3lFzDBO28OcgNvmk+brIsWUkOvqbsJuE9F6byi/kWaiq2EbKoJvG6lYTRs4x1xUeXlvU2bGr5IsmP7fWdBwr58pQw/CopFSbT/Rqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cymreOD0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cymreOD0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF12C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780209873;
	bh=7bCdhGvSOoPSxXHgNtbWT74gixqQbLcpmwEoJUsuGRE=;
	h=To:Subject:From:Date:From;
	b=cymreOD0xuQBwfzkxthMrhaHzNr5TIzBntWIHwKbdcQttifhT0acfEKyry8UJPr8h
	 ipFvzC+oyGa7W1ptkce9o/ToSjJOxmuBsdOzXByXQEhNn9gaRq5x432lYOCPHM5Aoa
	 n+xQNNbPKkncOK6xoJk1uhDwCww66267O18EYJKSKcQBPslXCRS8az8IX0A329uz6V
	 /WxCmXmWDioa+Fiw/uCeZNfWsXNGzWUkHaADAgMMbVgzGfCg0P5hqKQhDDeIYCVZdr
	 pGch9lDYaLuC6IybHgRhniKugfmkz69gcquWS+N2PO4NK9UJ2c6U3KSjartt7LRtiF
	 lzwTiQ9NxXd6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC96CD6E51
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178020987368.14221.18154660060219193082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f3f5d5928a8dbd2f31a6e62d9a894fd7e3b87a2b5148b82e49608fbf3149d92
Date: Sun, 31 May 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780209873
