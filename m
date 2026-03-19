Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C71B3B0AEC
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773913494; cv=none; b=mC1USk7nmNejmBuadvGCzWh065/FORRhxrBA3jwHX9cvpSfvtYyZ2UavBCoRzqewUk7j49SqVql7GZk3DdjZggNo8JL698EvycMIe2gMHX/5nFXZznDrsDccUwfyC28QPYAbrDscV/ncUDbA4NXziPhVRRJDli5Ld3qL89BHdAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773913494; c=relaxed/simple;
	bh=Hyer5Z+RDIXxeqIaOkmtPUBM0JEJyI0Ikk2PLAFzDQ0=;
	h=To:Subject:From:Message-Id:Date; b=ZMRoCe/DlbC/s1QKF2PInQtWala5KOMKOWZIC7766UP72g2ip/XGCq9PuoCj4LyK4l5OkaAvKj5sJGLmyb4yKSv/RwZNO2j4uOEsCQzfZjHF+WUP5QkktmrLto065wcyteOpm4A04zcvKIMyxNQLHly1FLc6Xvj2Jzm1PMTzhBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ByURPoOC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ByURPoOC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A112EC2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773913493;
	bh=Hyer5Z+RDIXxeqIaOkmtPUBM0JEJyI0Ikk2PLAFzDQ0=;
	h=To:Subject:From:Date:From;
	b=ByURPoOC7Rw3bx+AZ5eL8Q0sCoJeoOeckKiFgllEct+a8Hc856Aul/xcZWzSWgS5k
	 z5qwyiRjwC2dhzlQwBFU5W4Hg0dbgZWCFQwInkPMl16cNUFNrJIB37GrydLONpaAD7
	 U85Ubq50HKTHqCwxzyX4AznQ3K3bUIVjoClFfrEbgYr1Hw1OBwv6YNW7EcQEZIGZT/
	 3/v43cFti34NEVb9bp2pMlELxXGWkakZdFGFfxr8+929MprTR+a9SUWmsxDLDZo5BZ
	 3psc6p7VAK9Y1HlvhguEsY7aIsyyOSKxJW8AEOEkat+q0nIrNwAkx6I/5nCXjag/uN
	 8qf5tibvrk3Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D801075289
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177391349358.13229.990894496874733001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9512d0be2fb285e38c7ef7b2c4a8f8ce801b23ac00a7b741927a53f89ca31b9c
Date: Thu, 19 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773913493
