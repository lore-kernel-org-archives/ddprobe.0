Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4660F14D29B
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745095194; cv=none; b=WBvKhRTSXlB0hnVXe/YrnDdID/UDr1Mzvjy70kCn4qv0N57wdnX8TF6NzZjHxk8WI1TywiCxTxBuoambSYfn7cpV+IXWe1S6JIACHym+Qa87vgiJux1y9fBZjPN4pMWJCNg4imjPploykn8twBfwsf5uGVITCAeH/DclkyzRKHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745095194; c=relaxed/simple;
	bh=k16x+emEzAqOIVtl3RxL4vmsNz0r9rZkKGpgV+2dgj0=;
	h=To:Subject:From:Message-Id:Date; b=uDn5nQ9u2Toli2CgwFMtwyZb2d+POlW0m9orrww2aLUEcl8gTEBMYhZ0zfshXp/lfjef/WtlC+lNL0JlEpC/CbjHE/xSTDPoTLiLu+ZKk0HLe5awRghQ+eIMJXxEW2HyeUUAP60UeHGXWpGeRBs27uOKgk1+4ydwnS5GASfhl3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDs5XPIl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDs5XPIl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9CA3C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745095193;
	bh=k16x+emEzAqOIVtl3RxL4vmsNz0r9rZkKGpgV+2dgj0=;
	h=To:Subject:From:Date:From;
	b=hDs5XPIldoie9luvIFnRHgsb3dXtfWzNQRxuuO5Z79GlevYPeqdU9dKNikx+sCJHk
	 jH+Qo4aWGL5scAXh1FZOLK9YSpOyCi6JUNYB1PRBXb6xEMyw5atruEDTlSUFVG3WuP
	 1ReNlYx9bW7kDdtdRNhQ82kVNhb5Y31WrBvx/gkZ1KFi7CCGUFIci607a4xb8i0/pK
	 Yj8tB4KLMAtss/D6nopgROQcT1VR0XoADkM03A4ujIvdkn5GdotxG+75eEyA1/t0Pm
	 4kgamDpTboPWW/Y5NCDh2I3qFTpLHy1ye+yclUaMj9FY7Aw0U/65ijqDme5pTq66QN
	 qmws1KG7Ojy+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E597C369C9
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174509519363.18256.15890537697879515483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 226cece380d9c0e2a327942fff1be9e643e0d8e2658dea1a3bc446ecac75dd6a
Date: Sat, 19 Apr 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745095193
