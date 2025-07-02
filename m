Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 774532E03E8
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751474994; cv=none; b=KVpgTWBBaZVUfGIl+wzDwX6JSCTxsL/0HfE7gdSNLNFedXd8J31sDietICXJuednLupU6upI7hcctoW32frfJ49cV/a53B9eOvb84muloIkdenkKhenVGhY1T1WWYRnyP1qfcAc90fJ668+Y8JhALeTEXDkzlpc4dwpK1I8ArBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751474994; c=relaxed/simple;
	bh=WtYop1+jJzpFSFjVWJp9ujAwZyM2qvT8xx52JtaDd7o=;
	h=To:Subject:From:Message-Id:Date; b=Scbw5K9M5PpYvkE6tKOvGRgVNCsZb/BGHB4n+nfjQ8Mz4sR8MDEbSbhSJ6+QYmV1BCQFAw8hA1ZCQzNjoWepZO3VV1cuPDIBkWSuUrYboyUuML+2e0+hD6dCI7KxWhD4DxLBG1KAOeiINmbt44t9qwiM8ZP5rnsXhOIbtV07aLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nlS6PcxA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nlS6PcxA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3585C4CEED
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751474993;
	bh=WtYop1+jJzpFSFjVWJp9ujAwZyM2qvT8xx52JtaDd7o=;
	h=To:Subject:From:Date:From;
	b=nlS6PcxAG2Y7N2ogZ+ajlAjGN4+mFtYkXMl01Hd0/F3kBQPmy0l7o5xoA+Q7kPqYX
	 C53wP7ltbiYNBROZ2+969upbIRkpu3ctd6Yjw90jbp3a0zjzLBxE/mV37Mv5bRF0N7
	 E83zGSHzClIeDQeXw5L6Ar/JEoqZrWH0JoYGGj+u2J31jFr0d0wyoP8HEjXSxU9U71
	 n43KZB0s0OK6vPK0DSMDzrlibk+NbFT90OGs/ZklaseGRYyQ8nuWYrkavzebBnqdIe
	 wlAr/vqR8qDNrfJxaMqQRRb51bKupiO7+4jJBDIco1aWeFJk+sBRgTqFQd+Gx1E2pc
	 Q6aWcew7vrpaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9047DC83F04
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175147499358.28785.6575221367732755771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0542c6fe3111c797af290c5633ce3c524c5239db0f20cf29af360a6c65cfb1d2
Date: Wed, 02 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751474993
