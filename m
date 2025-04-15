Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2509231A32
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744747193; cv=none; b=Ik6E8mSlRx+LOOZpiGwhHy506aOUsDQ6XLQlptQdsSHrg8vVATmiUCgz56O7VQrmQPyE+nVQc4UF0b5L0nBVbFnl8ufKS2oB9TQqmErlZCdAwn7AE1RNEoDuRe/661kHsDOfUHXSdLBhveBZF2lRZJlSDLVRhvpsEBjFRRMayq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744747193; c=relaxed/simple;
	bh=+n/GvSIgI8sY6mhgkGjgavUdHXFq2ym2MBmWBZYGA1k=;
	h=To:Subject:From:Message-Id:Date; b=Fs+XWppChY/gGlPj7dTT15QMDtd8vcdjIHkLx5IOMXwGBRHwzmGfSHBZ1bBTw701ekmuFsnBdo7+iRIA6XONUShieekxBAFnkV/yvu4eJ+NkG8Xlj+GphexOjtT+EWp3a7az3404JJcVp1CcPGZ93UopgonDqvtn8tG33l6X744=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lTECQd5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lTECQd5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518EC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744747193;
	bh=+n/GvSIgI8sY6mhgkGjgavUdHXFq2ym2MBmWBZYGA1k=;
	h=To:Subject:From:Date:From;
	b=lTECQd5mSYrUOuxIr3beIBOmnYZG5zpf3B9CdDom9urs3plWWYM/v5Gl/xt10wgMN
	 NbWujp08WOp/FTTbL8oeIh5iNsaTq3j2BNN5OqHrPzkKmI86QiQ59/jT4NgkM3rdON
	 rwMT9/U78+OHA83mvgDsycA4FHAMY8RX9o35xtB/m49bbTKxMiRBTbQp7RrR8AX6JE
	 pU12QxJD4c3Bti6+UgA0f8arSKcpgo41gVZJs5xuYYvY9LDLkVQftLMtzBDJXSrIdZ
	 nqJf4IxKyH526Bprm8987tZf+D79Xr2YfY0A08iUmfnR+lnN5ZhlUvHhgkomcWbRGR
	 O1oPMUuqTrH/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A6CC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174474719358.17759.12285100299422035689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ca2e44652b05f385ce1c7f2daf7f77567e79c38a2172a5bc4ed872058b13c22
Date: Tue, 15 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744747193
