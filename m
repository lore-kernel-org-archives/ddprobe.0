Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2216014B953
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758723594; cv=none; b=PSAfCAvCTcKmSt4scfIPxV/8O502LiK4JZzXOICh2w9u2nBGOhROYpUN2vcoMjpMHSyopcn0/ih1Tg2Ox6jGxlb9zmyEWbaaFKQTY6FtgOz291TpgBj8hgpdY+KVxSaRVJIVi/BSaNEB4iHJTcvVxsimjREnr+jynEmtSqYOM0A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758723594; c=relaxed/simple;
	bh=cKb7evzbr7ITFHOXLAmYoXxHweLVzSVJCWitwt3WtXA=;
	h=To:Subject:From:Message-Id:Date; b=K86CNzmMGgo1envMUGj31NqjlKl/CgifAuXe/EslxaEGn2mfQwivV/SrMUKS3p44rJ2RUL+rRm0U3SEjmjiD/CpdCYD7iVSuCurj8Q90UOKGwBZasqBy5mWPzRKBwMi7kQjp0FZ2qryFeN28vS4WBsudjYgM/CBf1ggbepOWsyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hs5wGH7w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hs5wGH7w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC06C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758723593;
	bh=cKb7evzbr7ITFHOXLAmYoXxHweLVzSVJCWitwt3WtXA=;
	h=To:Subject:From:Date:From;
	b=Hs5wGH7wlPLl7SFZcCdvHfnnPmDJ5YCxMOQVt/klm2rL+11nijn3dncNsJ/a7CDrv
	 dNj3j6fyj+GBKBdQt2tcJviBJuopYb1ohkqY4r5wj/dhfKFWEw9bcJsZ2a+T7+q0WC
	 /5H727NW4xu3LkrzJu+4m+BOHG8iltklrs56viaGUnorgsyK4UyPezkcOQo7RwpYgs
	 dhKj1pUFpVeKrZVU6ZgH+DPvIHY/pCp4bEWLMspJ975HXpZh6ZKjcNWmiIWtCmS4mb
	 OaSpB3L1ocWUbJpZoN/1rs5u7AQhBRLXh2Ixhd6N8GhUWviZlNvkjX1kWCJQ/m+KXp
	 1ZMgLW96SIbGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99077CAC5A5
	for <ddprobe@lists.linux.dev>; Wed, 24 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175872359361.10894.2253014460726696825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 313e6af43b67ad83e0284af1dcbe63ba466551fa78f55dc320f200986b49a2fc
Date: Wed, 24 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758723593
