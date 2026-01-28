Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C5DF2D1931
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769581434; cv=none; b=ffsHVOhiTrYtzoF7iJ/yELx6/UI5299u8H1hsC/8FEK7mw9NNQrQ8fYVkoA9CpvF08ttg+cJmDmaFiudQ621LvVXdMLSq5KYHUjeNmb7txewUaJmNTBCjRwDVG6HrkHJb96o5OAnAbRCVtG0lUVGguUExlnpwrr/P26XJJ34e1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769581434; c=relaxed/simple;
	bh=g/UHNV9kD/CNzQVgxgBg9lC8T1Mg3o3/6wIcE+QD8sY=;
	h=To:Subject:From:Message-Id:Date; b=iras5LRFgYyNACJQZKiLf5tUCWa2kZiotG0x00M5j/j49+7EzHRF3U1xfHCjcnqqkQNhpIDwcZvWLBsc0iPSd5SU2bWtzvF40syq62z7+M0vf070NDov5db9GvZLlHGw0lJvdqhAlaCs+5+A1QLVxI4JCPloS/aPHJnH6Im2W+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PlvQs4QN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PlvQs4QN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A735FC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769581433;
	bh=g/UHNV9kD/CNzQVgxgBg9lC8T1Mg3o3/6wIcE+QD8sY=;
	h=To:Subject:From:Date:From;
	b=PlvQs4QNWWBwFk/Bb5aIIeIbKy6UfwAFSBdBGfHPITpUA+U7ffC9G7oDdpN7hmGJE
	 vuDhKLpn95qrEiE+V94ArIwc840wjl3qjqgzbSvSndjxtA44p+OW3PH1vCcG6Cl4Cj
	 hri+W3HfAPLsj1Cl0j/a9T/cfexGAG7VEcBMvODqkqSKOCraa2OleAA5Qktt9VhfxI
	 5ZHMobpPUYxegeMDmyXQB2ii/JUijDi8z9kiv8+4bwr6fyf2ST5T6n+C+/eDFeSMOi
	 0b+Iq3i2C8bCzkSaWiDuM8y+fDrnO2r+T96atCOcpp3x8tdvvp8ukNbrLY/QPOCNlm
	 qg9dlH1K4yJBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9413DD3567C
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 06:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176958143359.30929.4590514282659205568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d20eb57a668a7969282ae4ac6c9a55f673c547eef902a6f46ee3ca2c6f3bf30
Date: Wed, 28 Jan 2026 06:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769581433
