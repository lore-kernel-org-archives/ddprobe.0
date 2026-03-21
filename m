Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02D972C17A0
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774056294; cv=none; b=p00LcITeB4m4B7XwbSW/r477n/TRuJNpAQY5W2o5/+Btgy/FctvSZ+u7anc5BItwzXm/EbkjoCVLd5a1h+R/iyBRHzh5jgqap/rCoiXvZxfUtoPyvICWEobGJsLgV5YkW5sgAo3K/cVk8wFDcrJBqLinNE1kTqU3G8h7Eud8hs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774056294; c=relaxed/simple;
	bh=xVIBBgH5qtr4SoB+4nKuvpQssh1jUtcnx2Exj32T46E=;
	h=To:Subject:From:Message-Id:Date; b=fUFC2ayriu9dO/0YLwJw5dZsB3d7B+PEwOrNk7xJ5jQK3wmb9rSd3ez9zOf7mpXVGpaBCdjHrjGi4Km/JePg6oCz4rQtJySzWEGn5rbo+ucr+TQ13rebsiGH7dBUYzBvrptyBlGbrQjU7IxW+LhH2vjr3q9qsO/MjhPP14K94ws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sR5zmynG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sR5zmynG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D38CC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774056293;
	bh=xVIBBgH5qtr4SoB+4nKuvpQssh1jUtcnx2Exj32T46E=;
	h=To:Subject:From:Date:From;
	b=sR5zmynGqZ35/mR6LpvlOkx1SmEsgIDOmaqBlXa3BugHvLWDFXKFd8HuAS2EmznlK
	 VkfDecMWVzGC1AAvJ0rhfct8CyvfdnhdL6O3oozMBQ98VfpdhSExqx2zLiBpbP2JCi
	 CUfoK1m+RlzZB5Aq7Z+WeL9QP+2q/3NBlE+9sg2L9QdN68I0peYDGewTcAVJ0S8yxB
	 YSaNMVAyHYha/cBFJ9ReSHdXr6oFmF2rwKDk98dNZ49FS+CIhQ9lHC3nE5CvpEEupX
	 FNx8wKbvNsEhRmg1dwpUo5YevVOZWZIxorlfgMthKgk39jXDjXbfTUC2zOp2j3/etj
	 Y1Fgg/GL1vVHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB861099B58
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177405629358.10275.14986974820375288432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23e000397aec634d33bd528f1d4b2a4e7e17d601a58699b04d76d7e08c44213c
Date: Sat, 21 Mar 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774056293
