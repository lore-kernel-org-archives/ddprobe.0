Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23020139D
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759133994; cv=none; b=Hp1j8nfSwCkMbw7yxSvH6Pf1Klwj5n0RQ2DXJ1eWUW2JcnV4H1l5Z2TWaFph1f9rylXnOdv9l98FP0PtnXc6f6Byxra1vIoWJQNkAEy6yk9vrEBEQq4ESnlXdDQUE69CZ3zIA/EJZHTq6NBDRTOD6lajmxU1BsduXwfI/ipvANs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759133994; c=relaxed/simple;
	bh=btITRmV5sbv2NWT5/pDgIyAV6J9+gebbnBDY0xDLPxw=;
	h=To:Subject:From:Message-Id:Date; b=M2Zhnvhv620PYwbPd575B5gTPy7nCMCe6DuSRBOtZVAOvA2IFIRuUYNiVr76DnGQMVMqzTx9hYoWSPEB8D0GTieXjcotxMI9bW102eGcWtC1j2onT5uHKhkz05sA0Su4qdqHgrLKWaiLpFnTv1nGVWT6vKvY+eDQVl9Ge/wtkUA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iY9DdURY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iY9DdURY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48D2C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759133993;
	bh=btITRmV5sbv2NWT5/pDgIyAV6J9+gebbnBDY0xDLPxw=;
	h=To:Subject:From:Date:From;
	b=iY9DdURYqrjQi5F7YLagVFiyIMuerK7KSKBn5vI5GX2isfZ+lIOOk+th1pOKxMnDp
	 bp2OMZddqKKccvEjH/0GqjGU7fRxCfyFH2Ocb6WJW+azO5qB1455eVGO4Z8ehYszPp
	 bIPQ7PHK9GpZVNx9s1d28gsL/Q/yfkTtAcUM261ZXGWybpDnjfC5N4B0zPqCku036s
	 fcGBuS+UeCI4/+R1He/dtjeQPXEH8otmsDOnCxIA3Ii/f00476H3TvRGww6WVbFN2D
	 9KudrJ4NPblWVoMmB9BNZGMP4nuHRGhqxLhGxZNfN2Xqy1Qp2vCNENkQQEEedYfbd8
	 vlNqCslx5JWHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE03CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175913399357.12123.5642627870201767674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 170158f27d671e533ce13c56abac0fa8e7ae1212355593f7f5346d3e7690db55
Date: Mon, 29 Sep 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759133993
