Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F6CF40EB92
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784129914; cv=none; b=gX/IlU8SDwKCLjijS5pdeLNQYk5bi/PFwH/1qgdA+ZzmI3VljyM7esA4Pjk7RBdVsNmDoP6hRBGFCphR1gbtMg6C8/vT0bfGzVcF1imgIBdvy0ZSWZPLtDp0c9+hgO+/P4LcsQhMkxW99psZMDe23Y3pkSPGcnZmOOrTH2ggDbU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784129914; c=relaxed/simple;
	bh=zntdJ0viP2DXhUSAzV7eWnsmv7IEd86MuGqpTTyh/2o=;
	h=To:Subject:From:Message-Id:Date; b=fNPAdFuOZ1VFokC/6V5kTVBJW+TRBpRmsBjFQlBfBBQh9+BJDsPnrVORQLpScCnOdZscFyJ8gTPKHhUUFJF+nWH46+96YEyTiGx8Vti+UrQ9xJ5Me3nnollXFsIp5MiEpRhbtpW6E7JvyyZIoxq/brrXlzcEuHkoxl4hC8l/QLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DXAYk5XY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DXAYk5XY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC557C2BCB7
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784129913;
	bh=zntdJ0viP2DXhUSAzV7eWnsmv7IEd86MuGqpTTyh/2o=;
	h=To:Subject:From:Date:From;
	b=DXAYk5XYWlhgPO/bEjIVmc+fTgrnYnsbfPUvoWpi/6Hz6Ei3tL3+IC0YZxFFesHkr
	 UrAtj15UBG4pGCX0e0xp41PXDcVnyTbCtI2cUpWIRh97rp26+YDcl01g3nFdJ5YwI6
	 MI35FU/j7uiUbiwWFUHDm/d6b92L/361jpf1pvF/vJ1KQabz7hzcosDBKcyOhYSr7O
	 vICphKU5vraFDHLBEtmhRIZnvY2lh/Ja/7pzit44CEZk+0If9blbrLi893sS7MNgkh
	 bE+h6zP5qRgdSIB8K8VU7Vk7el+OgZ6RS+pWEGjdLi02gWNX4AkMPOKrGteXi6TMJs
	 3i6vsYFzunu4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93C3C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 15:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178412991368.14321.5115427432931395837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ff0a78736720a72ac7d10971d4ba7406c42ba28aaba19f80eea4fd362085e09
Date: Wed, 15 Jul 2026 15:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784129913
