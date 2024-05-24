Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DEB812C464
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716569603; cv=none; b=cBUTIDTw2NuAE/jz+3VYhhSmctNI244nGjmNRiqmhcg3dK15obt1wvIMRnQmMgzd8jfEBIje5Bwg3rosO0OYUgEVLNY7pL2K2UvQV0JwUcAKW85OjoRDQOg4Moh9n0PYFuzFF/fRvedk8B98jdpk0lTzaQXSoxy+mOugroOOV5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716569603; c=relaxed/simple;
	bh=jV5g8BCAHTSykUmCFQICCvouyVUAMecTmYN06+s4/Jc=;
	h=To:Subject:From:Message-Id:Date; b=U/1tkkSX6mr8s1mkyCgU1pl2m5zDwyjsgA61w6Vm/Tvbk0Ysvq9iF7f2O2kE+MHGYQCIbnR6psnHVZdvHTnLPQgLTRz6nxI1FWsWDooKw2K1VGyCUkuzZJsGAjThliDgp+4UYmgsNZb7A6jc7VNJbqLyGOoC+gaZ1nafUB2yXf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DMww7ptI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DMww7ptI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4B20C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:53:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716569602;
	bh=jV5g8BCAHTSykUmCFQICCvouyVUAMecTmYN06+s4/Jc=;
	h=To:Subject:From:Date:From;
	b=DMww7ptI2TAsbIg0mn9j7ul2o/BgeM3dKLdPODLGZkfyYvTNqy9/obBP62/IFIzxX
	 ZjXtVkM07ZeBHd85ae8Q1PtBsSJC4x5w4VNTPpa4PGQ3cDd/TS5GrljNIf5f8H2GR2
	 wvWC9c8geWgv5oPs5HTY6YJTF+8BnXA3n+hnMJRp3iWT+Mzv1EJY9oZf0Qemr6x3Wf
	 lWx4SwksrtfMEQ5+R7mGZIYLVHWYxuYZgdT56e4fwezLR0JdavkOygoufHkP/JwukV
	 2KA+bLnXz/de/CNYgnwWBKq1lVAKd5wwrkhzXEiU+NZ8sHZraFryGSc8khAzI7JXdc
	 1UALQzqYoKMPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C09C4C25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 16:53:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171656960278.4400.369671450840508216.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96200cc15c95ae8ae0d6806e3f6bd9127f2ca3d67ffefc5d79a4c6f8b75f5f1
Date: Fri, 24 May 2024 16:53:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716569602
