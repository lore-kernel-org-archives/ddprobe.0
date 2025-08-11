Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80F4B29CEB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754888394; cv=none; b=MCxkPQhr/YJC0a7nyUbRNpX3QXemk7GKtombWdvoRjD+Tp8BsbpDV2JMW4f0gFimNOi7XyKs8OHdHDTpocuMQUclPMPFqYFs/D74ik66Dt2E586azxOe0xiaXi4kHWG+bfP42vrrN6LDmm3uT6SbmAfpl8ETBxfZQWcQFsv8r0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754888394; c=relaxed/simple;
	bh=mIrHMmh+Xco1R8HkYECyREyVIjh3dT5VxkBDcY13WYM=;
	h=To:Subject:From:Message-Id:Date; b=QfGj3Y9mWgNsJt4Xi445XKVNdZVepNnMT91SSWaevKZiT9jKKJ+2wIBRsCoojARtpuoeE3stRf+rhYdKFv1olNy2x3/QgjoVD4PzafB5SDC5Nx0sS6B2zi1mr1MtAG0NhYucmeAcq7JHqbopLoWiahyqhAQOx2INbM1AliNReBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCxGWEpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCxGWEpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CC6C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754888393;
	bh=mIrHMmh+Xco1R8HkYECyREyVIjh3dT5VxkBDcY13WYM=;
	h=To:Subject:From:Date:From;
	b=vCxGWEpuzEtmzusPfvxxpiYe84wenZhoy2pbw/iLLBEmpoXW6vEhBVJbhlTUXlyDT
	 3qF0w76JMme7ov94r8r1brqYGyk71r1+xrZD+lQiO++bRG6UcLW5uItAL1jTqCDxN8
	 8kzeOieHMoHmPdS/2TXpdGxb0JYd8pSKSPQVoP+MiMxlL3SzIvkrChTl5GFmX2R58J
	 tem6k8boYGrFH7VlaHIMfmMMvI0aH/9l+I6DLIvxAIoW7ROYFmDzKjfdurA1qjoHqm
	 wRTuorfWniuQuqbXm5XY8JYEpnTzBFXWAEKgMCt53ceJRxJG4RfY2bzhTEFCYIceWt
	 4yCEJNakz/Dlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F74FC87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175488839357.13584.15414073118561101456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86b7af8bfbd7342d9d372b4026caa3616c0b7562c8ac49caaef4ac5d2384519b
Date: Mon, 11 Aug 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754888393
