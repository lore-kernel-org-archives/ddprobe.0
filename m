Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D19A2D321B
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770084234; cv=none; b=HLCvUo043sBJSPSktJx28sEPzrs9VWw89QEMACdmTCWSCSOtG+d/NiKJX0dnle3agqV5mlYzzKvJVHiAg8+vvqragsR5bDamtHlBtKMNphK6PS67qGHwPcAR0OQuaLXOw79yq0eGUw4UEpB6IqI3iGmd2b33v9SUxLEtbKCfC48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770084234; c=relaxed/simple;
	bh=FAQEwZuVxB4pglRYUnHMTCiYsXik8r1Yfd+6CGLFstU=;
	h=To:Subject:From:Message-Id:Date; b=LBVmhOP2DBiOLGXC+9wgRWCIripl3H2DA4nwAnMcq36kYbD/r1N926SQxlXq1wn9fFsMWGO9l1zHDezVoY28QyOhHebu7sY8QVK2TDciCjARJeLofzh9KWYmAYdumtZ/dwmuQazB3CulD87v5pDulPruKu2JdGK3l7py8uesDKw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuayvyEM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuayvyEM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B019BC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770084233;
	bh=FAQEwZuVxB4pglRYUnHMTCiYsXik8r1Yfd+6CGLFstU=;
	h=To:Subject:From:Date:From;
	b=QuayvyEMJNpGPug6frJyDv44dY5mVcDsBM/2bQeOrFnw4Wa7cvIjsJiU5jG0mFkWS
	 BERVBpgH7XhncU/W0y/LvLtffvvzZ+6MANLiA3CznDRcfuhf76JIXoO4FgIrp7Avkd
	 RPAjvf6t0IsHJg0s+A5rHwRXmKC2At7McYTjYK3qFKsvi6A0yt7/CSrGFPiTdFIbi+
	 br4vkE0AtYhOQ5tzXQ/RcOVFXGws55kzZJ0z8NEyk4IMT433FvhRNQkXxWIcPLSR+A
	 Ueeyfu2kKY7HSawmm8VQu1yssT7cCWJGChAD1BCPXuqXuLrrzAA8o0C88FDTSCQ/LL
	 6INj7NtZ8T+Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E20CE73165
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177008423360.3142.93647814367937713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9c51894ba97270c6ac5a2bd7d0488ad5df59404abd30d28d7bb7e0057c61a3f
Date: Tue, 03 Feb 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770084233
