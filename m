Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E10E57C8A
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714762343; cv=none; b=GsD1liibzMqqty4F2j5xeNQRaDyPS5o6Tbdx7VpK+T9tFavgtJV0R4P2jqRFG8R6pYlujx2hUYm1syD7Iad0eatnIrOZoFFLvnRisDevwphAu/LcJrgGXMGB6TVkQJJgN63S6cLKPXqekb8UEHB8ouCUqpNvM25S6JWa3KUuk8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714762343; c=relaxed/simple;
	bh=4sR41oW3xSsxNQZ2sL8Y++QYcn4aja/dO2Y+cSyh6ks=;
	h=To:Subject:From:Message-Id:Date; b=ih+xJ022QRMThRd3rKewumDLQZJM/SH+rp8Q1Am6yci3/frqG5YAL2LQAUeKUng5Y8AJ5KaixFE6G9TSt8j1sVzFYUIKMZObWJtsokNBsDTSEnF1NJkKo3jofhnX/T8lzjsY5dR8s+UOyMRWTIT4+/EPlql6qZaR/qVvlHF2k88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lpuvCf+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lpuvCf+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D38C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714762342;
	bh=4sR41oW3xSsxNQZ2sL8Y++QYcn4aja/dO2Y+cSyh6ks=;
	h=To:Subject:From:Date:From;
	b=lpuvCf+EIBXlwvqzmYnQK0Ujb8CeodSXReivvxPEaAd0LSNVGpC9NmZ5deCX81D2n
	 psWULcLqteXVGlvvKRVto8ALA+8uzgEY1qLC2hH0vuyDHAJiA+UcxS92LbwTjmEiLC
	 xCQm/UH9ZmJiKB38/in1WvpReo35O8Tjw+473INlabL6GBLKrQEJP1pxUJNsFmvMC8
	 rAuj8b+5mwdwPUI+tiwPd2CHMni6h3jFJoEewgci8k9e+B0OelsvSiASbPvtOWJ+1U
	 7tFjqHn3TDTG889ZQRpXD8B5Gi5Y+cyLAOQld0SWSrucFr/pUkwIsbB670BQYhP7Wi
	 s8O2ViAUHSbJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE626C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 18:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476234277.6924.3772819880577825028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2681823b7f608c52d005ac9204cb72f504eeeb828cf86e8f92dd9fccbecbfc3c
Date: Fri, 03 May 2024 18:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714762342
