Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 189CE3451C8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768211034; cv=none; b=IsCu4FqLbN2DT9X16W3gq03mNPX9r5ioUD4GtMRD/sIK9YNytzYkm1Ycur8h/ET/UcHqI5zKZxQB3FZhfHYPQn+7zNyK+TfclLimof0pU0+nE2g9oXvw0EoYx6E1SKPMBolrjDRr2b8O1ZyeST2b/Fn/mftOiaaNhMgRGEJV0oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768211034; c=relaxed/simple;
	bh=SFjaEDMgYkIqxUVtcI04vF+GMtoq2u2WRf+zH98KJ3w=;
	h=To:Subject:From:Message-Id:Date; b=AXa+rcJmlSqeBg4pjyl9fIR+2Hbs7ClFGUVgkfWTntw43YptUafn6bP4g8Nas3/uckMRG4RWevcqmCycLj1za5LgIMyv6BJvDlkHNV+5cnSq46PQdMNDK0XXeqOIbPbYkd681mWpGRQUexkEroYQQfX5tIjw6deC5UW/UFIRFzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zg583P24; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zg583P24"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B13C3C16AAE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768211033;
	bh=SFjaEDMgYkIqxUVtcI04vF+GMtoq2u2WRf+zH98KJ3w=;
	h=To:Subject:From:Date:From;
	b=Zg583P24RwbEh4/aSvEgceUrf1ivZ+gJCB6XVP+RuBz84BuRWOK1AjXTT3eh4EZku
	 d3Rz9OgWQq1ErUNpYXVUTlNFIQ8Jyf7rBCrzkCRpLUD9mljnHb8W+4wxHzLD+wgklV
	 OqpCyonhNkmC5pDqfAX8+rYve/P5dwD258zHLojFRhuMz02nth9+j7l2OgNQEOA8G7
	 wOha9CaYwEDRZo7j+Ke5jbYdhVBaUNTmjhoimc9onbgBOaOy026iVS7GHkeW5c8eVc
	 wAMEDojiE/maCMKTkh5eaQJIl4EDM84NcJmgGah87owOaD7aNe5l5zZp49sW3vEmmc
	 PV1BXVHoUgZBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A92D277C9
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 09:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176821103364.19271.7686564338908463271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6574026f02ee9dd5eb3a84e9f89c87f58b7e2d6908dd79462528795a10e0baf3
Date: Mon, 12 Jan 2026 09:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768211033
