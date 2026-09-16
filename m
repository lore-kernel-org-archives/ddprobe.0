Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 969E84E06CA
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:40:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789584035; cv=none; b=rnJZDwrHEOi+T6kCezuRvzZhc1ZK6AtQ41lejtINlB1nZ/VyL9v3oRk8PVKWQpzKyizA3JIcco4mRgNX7n/8S7nDz+bA1wTKsMV7LVs5/43fzPfmm7uq7uchPcIojKjoiSss9zBhd7r64Awu82ExTDCAHkAGerUDf6r+rxrFRlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789584035; c=relaxed/simple;
	bh=pBJYS64WIS397XygxAzdSx1gfIT87VCTdNykBIBh9qY=;
	h=To:Subject:From:Message-Id:Date; b=JpHxFQY9uvp4wt/y+YZRUFhjJywWmyv7guG219HwxugXYkLs0iC6Cnsvf7zwFkch6C178MtjcikTLvpuMKfsVSJ59u9P22Bbs9BbrcyrBb8r9PRnhExr5uG4oJ87wC4AUgmWJyM9HKi57wzS1Ce28QCm/lr2Xo7rmjkk24o0lpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GENv2H9Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GENv2H9Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE42BC2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789584033;
	bh=pBJYS64WIS397XygxAzdSx1gfIT87VCTdNykBIBh9qY=;
	h=To:Subject:From:Date:From;
	b=GENv2H9ZKQaA+1SELFsOD9IGtoRsfgu4bXcCt1TDCdn2l8QOIKHl+F94ytvymF5tE
	 l8U4v5jf3sGhVHFHJVAqMkgjxrmhg4BNrK9WOX6KcOOTMPulxL+kU+BVm6zSkGg4HA
	 4kfDV9R2QDbwpwVCh5z6DpJi9xWN8uDEOHSgO31PaW/Ja492bKiazzzpacGaZR5fYx
	 68A3fqNcZZSw+JHfwVIba+EFf6g+ZC0+Y58qTHDmoHFpLl6apVb66HoFtLN16CkVwo
	 vk4/VG8K3TC/IO/2VXzZ9oFWWpBf7Nv21ac5twmbCg+SHfMHKz4g2MpB2IY4/Nl/r6
	 lHb+vf6KA0BAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6B4C88E7F
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178958403368.26242.12588245020179335630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc03393482e4e677a32866cc6a41ca411e065185e757aad6f5f85c00a2d82f42
Date: Wed, 16 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789584033
