Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6061F17CD
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 00:33:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716424403; cv=none; b=ZQVD2rlG6s1bY+3CnHaUUP7mWSqv8D6ysxuTrmBHSh/tupo1yu6ewOd3nnAUWTu0jiDBu4rxJ/PXh2QItNFdDH49ng01Yk29c+ITDMn233agRSOn+BrPwJn4cDQS/ArzyTQMyKvCMl7yAySQgvso7cggeUEwenIRB+xGk1y7UKs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716424403; c=relaxed/simple;
	bh=83Z0mdPXPTxRBhoP2x8FU/Zj4ddv2sf4twVVG76ueaI=;
	h=To:Subject:From:Message-Id:Date; b=B8v60b4vB1ParUnDoCUEsX/s5eJqmoI00uRKDVaMPGGOz+0Ksd6dQl85lxyiG3HK4aWD2VHoRLePBRs4u+kAmvdblPeNTHKNuPgMX9Pe487AgR0Vd8YCGGxNDo4NqLgjkSLmickbjnRvYdif7Zd5fQe/Vu9iL/0iLBG2yLi5jCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7mA+0Xn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7mA+0Xn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED5A0C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 00:33:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716424403;
	bh=83Z0mdPXPTxRBhoP2x8FU/Zj4ddv2sf4twVVG76ueaI=;
	h=To:Subject:From:Date:From;
	b=p7mA+0Xns0J9xArDkfSdvxoggYBlEVWoVckh1qHP3w7gYxfQoekvmeqiiXdMgcFd2
	 Tw+rVRyqu/ir0AkMiKLqJs8Aa1bDbZuxPniucHeOXVdSsW+Vi8izvDHXxpC9i14iB8
	 VSqbxDC1d/foQUeMfCCe0BS6B9oZg3DqIpH/moExoHUgw28DqUySsW0IaGm25ai20q
	 BHWKkWTNngIwxpW4pJonBVGLPKckPfR/0I0qJlQJamfTDY4+ocnvQjp2SPzXnOeQM8
	 HhqynjUsqdad+A0ik4V7ncOwRlI8XDL5S6OSZhJabNp/umoGCCRSbbnMlkfzd9cior
	 XcYwxyRZxo3QA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF4B2C25B78
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 00:33:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171642440283.26731.3260153181566568545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 986453d58eef18c259c96dd07ec9cbf1c4ae65cc175f1ab9f9d7371a5b68d211
Date: Thu, 23 May 2024 00:33:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716424402
