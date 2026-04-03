Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCD11D61BC
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775181334; cv=none; b=ibTYw/4I/KPaP07uTKyj+XdIDqeCOM3m5SNrDQm4jCgRIbsKOnGCy5o2/CgaSTOB9uO+SObgAwyrV8wKVaTcD+tM/P+Ie7g/uA4h4Os9fB7/FhqaqK3FzsDr0HdO97TBhqYKsiwIv1gGX3rVo9fJkWKtF6m6CXclqBFoKTmseLE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775181334; c=relaxed/simple;
	bh=VuPA7HvZoTRJwjlriTlzMM2yql4kRe5uRCx+Zqb8o1k=;
	h=To:Subject:From:Message-Id:Date; b=OYMDAS5xsp9seb4A319IEtesbs4SdjypRljUtmhs6aqhQDI3Mzlz/eucPLQsy+To59f0pHNGr1kVrodhbAIOS9uHhxDUF5EZ4FetRpxQgkfZGQQutkbUL2yGDn+TkW5+vlg5Ccjn+IolTkox2ZGJSPVYrBIiC1Zwd7N+K15SX6M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpzZQieG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpzZQieG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFE3DC116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775181333;
	bh=VuPA7HvZoTRJwjlriTlzMM2yql4kRe5uRCx+Zqb8o1k=;
	h=To:Subject:From:Date:From;
	b=IpzZQieGAOriqEK0doHkA8FtdBn1+vSvFqkJSbqK7xBfdBUUB8L5Ja5Ow5nfWUXK3
	 0ofFDQazQt7nVKdUve03yC2vIzuid9/x/9yqqxMX8fAzwQA0Wx+7J84mvO1w3UT5Zd
	 bqCYpv9rUm48BLYVeiZYascr0CruX0moV5HikHYmYjqAoVb8tzAZ+G8bi3XcMzXFke
	 8Q2zN54zYDTSvjje3zTHBSp5g4ca9LgjH816LlOt9WDZdKXoDkwQ2NLgsMnVMLLXk5
	 gHc0EKxDo61SJ2viw0O62Nu/HSWaAqmEtJyAYGGazFobS4BAxt8xhUF8gG1a/8XqXD
	 eW+wIV2wl6ApA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF4CCC6B1D
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518133369.22372.10079157141560128106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20acf18249b3776d3e0adc1bd522d36b10615463b16af5078d3c0e3a51b4774
Date: Fri, 03 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775181333
