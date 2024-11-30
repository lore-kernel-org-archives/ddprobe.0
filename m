Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45112B658
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 00:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732927554; cv=none; b=Rkj9GGFKJaoex99XpiZ06LrLRaCYHtjbpOulTpQhvsfabWziZtCPq9elEIvRFVqojTCnwP3k47c70e0gfQDXf6Ri2ejui2nMN74mOuQvcfMSu9rPoU+ayNy+HksTPAghZPWmwgY3FBVcIjkvP4Ku0GFnYs4XEknfcR56gd5Z474=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732927554; c=relaxed/simple;
	bh=rTgPNA5rrzBgPTINMxluSYCA06W8iQ24wwRKY2yQv2c=;
	h=To:Subject:From:Message-Id:Date; b=hMryrMhVyAJE4TF/mnEm/TeJL6c8DaHDN8RHIvp1bLCa2OYw5Gbv8sjPvv/erSaUrlVWWVDpgoq4dtlgdbs0OQ1IpaQxCqClJJpydSNm/A2MDt5IqD8ZxDVvn+dkndcdDkpPVedk8a49SV3qbWXxVX9H8o1Dyx12Wil46o87vs0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9zB/ekx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9zB/ekx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9882C4CECF
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 00:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732927553;
	bh=rTgPNA5rrzBgPTINMxluSYCA06W8iQ24wwRKY2yQv2c=;
	h=To:Subject:From:Date:From;
	b=g9zB/ekxEuTKCKVZq3yyZW1czBGTFTECpgVBsqw8lxFBemb7UNFUtwNZeZE3g7n0Z
	 VbyXaRKSMdeWNXH4GUyDVzZghCVEW3D3LJv1KgVJTp6ccU4u0uyzOgy0+VPgDnEGjr
	 hZTQiYrsomrD9+SlUNkI/nlxHMuBjlj81r+BdEZruPxd38guYaJjwurgtp4eTvKel6
	 eL7pstX2WNQH4gqVGNvIh0OgTC1XcK+oywITJHN/8ZBXWqmjdoeyDBgMB97PNwOGcq
	 WtSECqj+5uZLKhQLjNfEcFSgFT9amYsRxdfx8EklBnYqsxcNnzZOkF65TGBMPb6rT6
	 Cqkekq+gcPsyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0642D735E4
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 00:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173292755361.14638.5203816785946633926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c662b88807b1b955c809b7ce3770f836df55ff54b0f253661c953cacaa6d379
Date: Sat, 30 Nov 2024 00:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732927553
