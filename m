Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2DA538A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722104754; cv=none; b=dJqvV+ccrvCOLlmL+nkvBE0XOgkGAFJi4p84CydeIpwsFW5Yd3vqFUV8RAhU4GnkUof7Krf9qNOO3n6O3BskDFVcgQY/+kKAwt8l4b7Cfcq5k2mngsxp4TG7R5bdch9J40Z3nh7j0MLUX+/XiHEDTK5e8aMU3wwy6UzXjBy880M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722104754; c=relaxed/simple;
	bh=NR9kwocAg0Tv7zTQR7IM9TWnPFCvoBo2S0rkEciGzlU=;
	h=To:Subject:From:Message-Id:Date; b=S2TFy0WQjb00XU6dw6R/xQ18smh/TMuNhrCBW5N4nz8wwWnuPrNPrj7+X5U8vxJWmL+7mMkg3mPx1CkS55clWXrzH5nIBymWRE1FQwqGelw7It84gz8+FhMKPuDc/CqMqIdik/V1J1wBjz94ZP03ayxHXuMnS5a9errzELPsy/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElHI1BMH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElHI1BMH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD165C32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722104753;
	bh=NR9kwocAg0Tv7zTQR7IM9TWnPFCvoBo2S0rkEciGzlU=;
	h=To:Subject:From:Date:From;
	b=ElHI1BMHJBcx89gVCouKFsFOBDBP5h7h6RIjgNOzlKj8iLOpFENl2oDZwA6THqvnP
	 tYjfVLvFHaWfxfAfftV0ZeKtmK+qUyIG9ExJc8axOEnDji0OY/z0mtsWd+wQaOw8Wd
	 3OSdQYO/BmPU3DG8l5O82zgCKfyPdw8zvHVFfPA+6+YaHta6j5HoG4b1ewcM9iEn2k
	 SDbJLqfkLXZQBoPza4446qsc75NyeYqq0mkgYLOqosIJD3vIcYxSQJ4N8xQMa0B0xf
	 BcUidujlBq4jHWKDht0E0JSgNzple8RkPs0YUmox5J/LLp3vAHSFVzxH0zctpiPFJ6
	 50zozumWtsDyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97261C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172210475359.11594.2144430489923819255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8775f93c041242fc2e45e53d9894acc3e8a4631582ab0b02ca1a734aea81d48
Date: Sat, 27 Jul 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722104753
