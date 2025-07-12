Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 158B91A2632
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752359394; cv=none; b=M79LdjxeumN6kS10OHUb1w0Vt8aqP82EnJqKog6+bfpmkC+if4wmffzSHnCXmE8XZD07pxy7Qb/jKKJ7DvGhSjQ2Vtra+qr9cCgeD5Z54EJp32OIidg9DzZv2+gCho2S/jOoQpOCE5Jt9p7AgRGHXbqSKM3DKknRVR+SMOhaOXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752359394; c=relaxed/simple;
	bh=UkoeKFBOe6Umh8n4TJsafnfr6q7afg7aqEpPnz8mCMQ=;
	h=To:Subject:From:Message-Id:Date; b=hron0YNJYDi7mcYF9OEmCmwQgyk0SfC1hNCEfmIBtcaaixDUEUzBoL5Ft+OgMmY70eBordW5/lnXSQ5IEoRTPGK07KhSa1ul3rHjaANYNSvEUtRdt/yJ/UQC9m/ViLm7mS5PxldDucEIlmgMXnAYR4oTS5xocaVQzYewsuHDy6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nFcYnGcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nFcYnGcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A055DC4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752359393;
	bh=UkoeKFBOe6Umh8n4TJsafnfr6q7afg7aqEpPnz8mCMQ=;
	h=To:Subject:From:Date:From;
	b=nFcYnGcHhgBM9Z5e456AVEXtqCg5snJaDXvElpEEO2jIq9fsbORT4s7SJLAUDuFQa
	 HZOCO4NaF1i8sNPXqHF/6L29SRBSxFPo13OwOV0h51zkNOTIWiTfbQb1PenRnEQ0SH
	 U1ksWBl+yv3Dp52sd2hLuHbnalqGw9dL1QthoeXK1Aoe8hwzdDrpB3y8K/bEGfWou3
	 WINl1Aldasnx52YSaBv4uUEFYAQVGFhkPNtqjlTN1w1HzMl7J5yYO1DGEeWOwjdquP
	 jJ5or9X9Oapfg7FNFOkERf86UKfSzImse4xt8YkwMN3zyJubCDFL/QwpOHuzhPXQrx
	 mep2d9jgQrl3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914A0C83F10
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235939358.14677.11926067971654872968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 884320866dd16b4a6f8e67f3e4cc332bafd6a1fe850890783483711ec43d92af
Date: Sat, 12 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752359393
