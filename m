Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C402576
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746989394; cv=none; b=A+jsAJl8XZ/Un2LpFwhzglecFvhrdnmysHlceOf6mFRvFOd50+bHiroOPFNAl5srwfhlqrW/YWOYEwZDKOGFI+Kj90zGgD5XTYhwFpADT8Cb24qwQz8D0FgQhAv2Ae8rxuTidAISpOwLVmBNBVhsy/HI7HL1C4XW8HDJmlusf5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746989394; c=relaxed/simple;
	bh=i55NHdWeGBvreTx9QV5Ellx/IWltlYrbYExsKyJN5tA=;
	h=To:Subject:From:Message-Id:Date; b=aCMMKaJY0Y+Puw9mU+khXlJpg5GmnPDZ+S+dO0JxxSFXTJ5aPgfU+HDU5Ue0dcCNmdGrwvR3bqOk9yf+R0+6A8Nrr6bsKAzl2Hk7+G4D1RhFkA6etDnFj37KaIrzGWK3nTrX/IrLcUTRLvubc7THKWDeyxyRiKJdBzcDYGPEEgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u0wcUkX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u0wcUkX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C2EC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746989393;
	bh=i55NHdWeGBvreTx9QV5Ellx/IWltlYrbYExsKyJN5tA=;
	h=To:Subject:From:Date:From;
	b=u0wcUkX6pRrm1sOXUihSoEZIv9HGn4P6+4m5YdyPlq7dDUfyNM1FDdxWbvHFtn+JL
	 NFJ5427jGLt2QTqajjyy//WDLjANdDlokzNkQVp3kHvz5w4T4fQ9saUc+0v72UsvvR
	 u8rUkdElmiJLILNOfIxbfMs9R2A7Qf/V8slwI/Hj5vl1RcFFVt3amu/Jg44xIVhWFX
	 +uhVm2D6LO4gnys9nst2Kg+PRndWnpA4BrSdGghUVFE/wPMueM8+6YRcVj96i2zakX
	 P8C2TLfURHA3xSB4XqKEw2X055/UAXMRwiBaLfvtImpVsyppRxuna8EzADncS3IAoS
	 SUSV+RKxdwoIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BEC3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174698939357.19552.3036436015674246587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3496b7fd69099ec32043f92e8c54645bba7cc273c1d0d17568a49cfe9a31b103
Date: Sun, 11 May 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746989393
