Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3662E54739
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777422454; cv=none; b=R8yuC5E2uQa2e2VL5eRWBRO6u1hhoS7IxPkLjjcMaAQi79zno2VEFk5J9qiJzA5ijeUjhsDoBq46hhFlfFgtJI9Du9c15VbEtyp4cc9xySnitv9m9JpEuFdgaFPGriRIQzTrUlbsxyoZeUYfklp5ql9wRwfbIKNGC9jgoPLQkyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777422454; c=relaxed/simple;
	bh=vqhyQtU22yWtYzinVcid1MHOTWwTLuqYunvg5vhTHv8=;
	h=To:Subject:From:Message-Id:Date; b=dDsDP6n1vm5z4qn0Qmy5IQF2QVeKK9fLPRA0wOjGD04seERNn3Lfp+h9u7n3HwVLuMJe5smKD6l6PIQwLO1dfw7g4ENMurnVO3fpMmtNBe3qZzx5AWfCTDMVU61YQ55cdIG6SIr9YkRwawsm4/p4yelc6EyiYWuClkkhAOYAaPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prhTbkcb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prhTbkcb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB003C2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777422453;
	bh=vqhyQtU22yWtYzinVcid1MHOTWwTLuqYunvg5vhTHv8=;
	h=To:Subject:From:Date:From;
	b=prhTbkcb56OKFaZrDqjMAf7SI88DbT7WvRp3cSo0KrhrTO01TYX5ZgGzZEDkHUV2s
	 yHkdW05y1Z/lM8F6Zm/Sbo58apsHOIrqERTD/UtUktpun+ttnp+qXrxEEClKfPEOZc
	 7++KTvqT+BLzYPPsar2EXnsnFgjPxR19849/G+Z0Y9Gs4bboudde0updQrmgIcrimP
	 Qtdly0pVMjMPSTs8SwbhZfaLkMGm21x31HHh0tiGripkoOirf/zUsyFE4cuyD8Frqq
	 ETxT/Ffs0WLhUfqwXCJPjbwmJ2sNUaHFrUrWMFB8gCHGIpq2jfofqog3xYLhNHflzh
	 iYd1fkqcL/rcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC97FFF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 00:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742245368.24829.5712622513702647631.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28f77d53f7e917bdabd37d2d40c091b33a822974b869afc386ee9a82d4629cd3
Date: Wed, 29 Apr 2026 00:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777422453
