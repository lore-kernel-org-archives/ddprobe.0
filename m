Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50F914749EF
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786114834; cv=none; b=HyYvc/wR4mngZnuTwUuc7GFqSR8EVBcfmxdAP6lSFqd9k0RRlc8J5PeIDevamuSLqNbkDx18C41tR7+7L0S3FTXiWY5rm1Q7yTM/kywl2ePJqQwOSw6zflFO+m5lHNBZRrnukZfxDtV2XgVZS4SGiFLNoGkBG1TL9PanJo5LPXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786114834; c=relaxed/simple;
	bh=3nz22+TqDT7umTVQDrszCmARq+sOMPGHkSgPU+WCqps=;
	h=To:Subject:From:Message-Id:Date; b=bEGrZKWhWsUHl6PT6XJxt3kLRQo6cfF6mO+FoeSget0PgcgDePBhaupqzU+rdvoxL/f3v8BwzC+muexmBkcDGhYaGkvpyazILVsPASQ4MHGEMrEZCdW5AAO/DQo7S5TGYkYYHaN6FDTrAbk8TlYu4L6yN5knna2tTxnqtCjp8Jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sY6z0icF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sY6z0icF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF03FC19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786114833;
	bh=3nz22+TqDT7umTVQDrszCmARq+sOMPGHkSgPU+WCqps=;
	h=To:Subject:From:Date:From;
	b=sY6z0icFVZNz73UvN+fYVr9CbVJcmkhDVVG8/Ix8kuk39/An/gHsew7D2rDYBmT3E
	 Q86+J1J8PyxwUAI9A/GdIhk8PiA5LPdRTWi1k/MFS3r6zIPTXSPGL5f6/fsDQeUxMy
	 VTj9hcCkBXt5E7LbKuaPS/zjryDnlyjYFpGAO7G87meAMDbb4hVLC+TDM3oiPNhDcR
	 HvlKNHe+/m0KzReTXhQdcfnvQdAuPLlGxIZUsZmJzwav6cPD7YBglKOGbiuEpDzpo8
	 HOtmQSOC43DwkEqFVvf5lOVtKB0aVUwd76ABIWJZDbREIOjARvkgeEmiAhk2apsnq0
	 Ns9mPPUAN3ogA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71EC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 15:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178611483369.22508.10148159396883518160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 332a14e0c50681f06d5cf81d2a6bdef202536beee3840577d40cb02c086c9fdd
Date: Fri, 07 Aug 2026 15:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786114833
