Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51DC6111AD
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:24:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717255463; cv=none; b=AwKcy3eHixwOvsjofIxqdTAtr5jznA+m1+WNVi224ojRKgyrue7QlmN66OsdxFrmIA5IXJo4tvBdQae/+W5oqsYO0wJEuow8EWUdi3qkybCKu1f0oyXT+NtSKhNHzcBLVbzMDo1MTJG1IUeFlDvs3RQKpNdCdEAGrdW7tP/tfLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717255463; c=relaxed/simple;
	bh=+ZaEgOB48W8RX/Xj2MtKoNjBXaSsmhhMsya6AfCqWtU=;
	h=To:Subject:From:Message-Id:Date; b=pduraJcuz+A3K496/ho39LwjfJot5bW1xFfTyUbqI9jE/MtWmiJgTN84w6fF/w18mggTrwHVREPk4rTMR0tlVMjBd5NMMfMKaBsJPIDSX+pVdQ9lspHoDh5ot+L4wXAPuK+CE6SkLIJAPY3Oq8VnCSrZe5E2A2d6ZfkqaAeAGXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tS63yewE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tS63yewE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF2DC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717255462;
	bh=+ZaEgOB48W8RX/Xj2MtKoNjBXaSsmhhMsya6AfCqWtU=;
	h=To:Subject:From:Date:From;
	b=tS63yewEbVG3jXVs1hrHlBh2BTXJG7t+IOklcdD14vx8nnev6szOzHTQUvTYBxvq3
	 S0VSRCvrikZYnZ+4W4DRL8eGpx3yEf0FGLDwKQ8YJF0x5hoQet+T7c8xld3EZoPlmc
	 tFLk1KLto7sku7Lp8qsbh9AjXWF1qlFBTJB2u449QdcuTuTAyYYK9fCZQHuSqiECJL
	 dU6xKTIe7vuiPGtJKAxYekmNCedRg/k35e9zJhR1o5PAfDD1itR40OYLWE2lnM+fMs
	 NoJwcmD/UPneguAyE8fDSqJi6yMUBX+4AwXb69YxpqCIZh4/uh4TD3SKbxnUsG+//D
	 ZlofQ6mB5AL6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD503C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 15:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171725546276.13160.10534380900593512916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a375706b251e25f36b7b867a0b19b41e60404d79e816a6f38b980fa1b8856bd8
Date: Sat, 01 Jun 2024 15:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717255462
