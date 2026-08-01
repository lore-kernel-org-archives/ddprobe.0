Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D61B3C0630
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785609034; cv=none; b=pbdFjXgWqoldSI1mt+wT+73p4F4ej2+TVLhPcbSMamb0MHywduD0KgBzCR847gxuZRUZXUlbzHYdEGb/zIQK8Um1FGykdz3f+bUEZZO43PQ8JWTBoziLfVn6U5NNz37iwK08VdQAB+koXqokP9dQ+EOvMcCqUSr7JeAi98EPUY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785609034; c=relaxed/simple;
	bh=uhzVALFi6IkPYnG1Ia97HDTYGiLx/Y7xqrZ4zN5t4zw=;
	h=To:Subject:From:Message-Id:Date; b=oviOLAveurrMbDfGIGN1b0MhVvR89JRrxmuYoK3XsqoDVGoSK97eB1UmBeZkyyCFlpurqx2F9FdMMLC8eQw4hoEiCGYSRVjv+lh4AkkwgWoT7L1R1leF3f2SPiZrglczLt7zHi9Bb+Q38ztykT+98pF57xNuIyPE7P7zLzkN24o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uEy4hKcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uEy4hKcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB597C2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785609033;
	bh=uhzVALFi6IkPYnG1Ia97HDTYGiLx/Y7xqrZ4zN5t4zw=;
	h=To:Subject:From:Date:From;
	b=uEy4hKczncYDjzZ/KClwevnmuBP1gHMp/FaMXM81ZeQXjApBVv4W47khRCn6uAmDQ
	 Acj7M/6nW3jvTgn1bn6iqLqnHLMyev5RKkyuqrCkLL8KrhgY/eP9TSljy2ATwwlhiu
	 fEpACSdAXmPEwJVKLh+BcSMQGnfCwPnUxZ8ff63RqWPTUVIFtHwMQuTe/lX1kHvN6z
	 brWuTDBO2htwk7yV5v4gBzik6XxKSJW3WZ/CHay6UmttQoItHsdzSlpaTP9Bsq3MeY
	 jFF8L0+xWcLQwAtkp3Hs/olcDnpte1jiZJkfygEOxlAGG7WRcRoKiDb7/XzPktYRGB
	 Dmhb87/gKG5lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A946FC55173
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178560903368.14272.7132959249300172530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d2209303ae0bf633cc06e09ab4e79b06306b1a7f9fe0f04e2325ab6c2184011
Date: Sat, 01 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785609033
