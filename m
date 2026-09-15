Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B88E340D90
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789445434; cv=none; b=qxe9wbUQMsiECuInLvJ0ke0RlSweQOMRdqBfpf1Ix98y+qF3HxSiCWc2RKpN/R2EWDNmxnhQfYwNlh71s6qzEmLzD30mhAl/VJjWs8pTUszo/Lajxl62lxSYLdRGhSEfkh7EaqEYRvsNyKzdQx/odbXpl2xHPgT3r9JvMaZIM4M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789445434; c=relaxed/simple;
	bh=Bu+ZI2XgcUbOjaRfmdErcGJCGgnHPddzLnkmc77LK/E=;
	h=To:Subject:From:Message-Id:Date; b=Vpb8NKHhbDriY4KVZEpWbkcQ3SCvDegOldBhLLGL/h+vrbUgc4WEYAqImFa2sBtcdtMm5JRO7uj+S99qPhbPD2zL5OmOq8I79ncdD04Z2CxMggHpfARMjlLAgHh0e+WufCfYRLsqm7jL7j2/JwXDgV4rancw05gk1zRURexSSSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rdixbVe5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rdixbVe5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8F3C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789445433;
	bh=Bu+ZI2XgcUbOjaRfmdErcGJCGgnHPddzLnkmc77LK/E=;
	h=To:Subject:From:Date:From;
	b=rdixbVe5Uyr/xpDxDf52JBZJwCaoB7Vlr0GeadH285DcHvC3sC04drhXKpDdhjkPm
	 nfPIT9XpM5dDqIhqgcu56HtGjT5mumFRgC/qd+YC2C2gASYHW1dyCnm1FDAlkjRCwz
	 hxRuN+EF2v+VAE7CbpW734gGKYnYMmu87hdFVf4821XpIJDWGLpvLFgphgWuF9j1sK
	 DVDmYu+mSgfEdzeRs3+ZXRPBmEFEzF/K2XdD3ubJXlZ7zJGvtMojeOQfhzi4N3RJFQ
	 8Hsp1gsXWXBsZ+XWp0QMNs10O1kxUaUu3hz/sgoDxQ8hbmpQKzH+HyPYP0VolXrVT9
	 CN4bvR6h1j+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A3C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178944543368.13915.2051753681703364572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884494e31a600a4f85c220058504cd051815e309a3bef04f293964b02b6438b4
Date: Tue, 15 Sep 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789445433
