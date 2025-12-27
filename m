Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C6631A23B1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766871234; cv=none; b=C6lPf6JEL4RMjKK/zi+U1nZCzzHuAstsbWKBLiweydV8LGgFCAAC+QDFVkKhgSKrDkYR4vqqMuQ28RASpR/uCrPD3O0rPKgbKpWCGszOkBofytL70SxV5AboyiU8CwjaRAbwYRtrTPJSC6xB9zIBJeLZmv1Rw4lFO+nz7Lfli9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766871234; c=relaxed/simple;
	bh=CPP08Eb7Q/RP9PhrKFMzleEVIO5h+bRuxgiJv+MErjU=;
	h=To:Subject:From:Message-Id:Date; b=HdAbL+1w1Dy9+4U32HGSoz9XHrZZHxU4/CJ7f7Vk5FQMwQ/HbI7+RmEz2mfRkz8KNwodAYBAFXFNMgXct/62OTx8ZLM6csjZYYOfqJ9ryx9fvGaEDjdBPXyIc730vDaP8Gr18TldJ9/MB1wDdwm895zVcbqvkeunSh7UUxyXpHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwUcRhin; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwUcRhin"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB84EC116D0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766871233;
	bh=CPP08Eb7Q/RP9PhrKFMzleEVIO5h+bRuxgiJv+MErjU=;
	h=To:Subject:From:Date:From;
	b=dwUcRhineChy+qE9MSOreuYdn/1HYZFgvKIwarY1Z6518XtAcJOL8GHtaDWKhSrUU
	 oBIaL3+lQ7aclytXDCnrPRtZYRWg03XPabpOMJClWK+47cAGYN97ORmE5aysE29zb1
	 sjGEHfRAM77qKID6kaQdUIw9r4nYoIQws3kwTDkugSmwSIPGqlFDQR+CxAaVTuawO/
	 OLbOfeEALlcY+kVj3aWYz7+psbVBnqlGnXsxO5TV/lIDniGLJgcgOTHmeJuX2HSgTn
	 gFADHVmNDBayY3ZuKdkOkvnhK7PCCso2Vxqq5J2MiPgsv6C2WWtZz3FMqfXHCCyhip
	 K0tJ9J17f+pxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3492E92716
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687123364.20241.17801524235426446316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb9852dcc05fe70e2d3dc004cec45acff386a4c2399a2680279f4a3cf0c8543a
Date: Sat, 27 Dec 2025 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766871233
