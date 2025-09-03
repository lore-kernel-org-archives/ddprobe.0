Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3753E308F02
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756907394; cv=none; b=sZh6nQqN1ldMULVyPHzg12GXl4Lg3yZKHNtrjRbUbr/iqP3E5Bzkf8PS/gsNNb9C9QNqWYPTuCaXZMsjpKsZnWTC77UY+Qfq1dsAsFUuPoGoJpRPqNtw52um6Wh1sJ2mHs5Y13q46lSsGaVunJurJigdMtgzgqhGKXkMWJNlGgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756907394; c=relaxed/simple;
	bh=5EFxYGod5ge94NbgpNLLxugcfbfj4urCgr1+ij8sV8A=;
	h=To:Subject:From:Message-Id:Date; b=QSgECMNeGaIjf1Wl5qychLyQJ3XlHlSvQk34SOC1I8yYTqUDGSxTbx5YGAKRpL+3+xX9f8dHyR4Z8omzvJMC/a5/T/2++kLJUUTd3b3Fpy7L6jBS6LOqA6LuQ8ZmGwRDnDxKElM/ANc0Vf/TcyLp6AE7uxMKMIuW458hCDyIQ5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oyosd8i2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oyosd8i2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB306C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756907393;
	bh=5EFxYGod5ge94NbgpNLLxugcfbfj4urCgr1+ij8sV8A=;
	h=To:Subject:From:Date:From;
	b=oyosd8i2StfveaoD5F/FTUAHBYZbO8OShbTSJk+Cub8aWlXkRGPsI1sJxR2daTm2p
	 cVz6uMtZ+PwDelLSLbNRm1QzTczAozT2/SYRwTWrCAGI1pHDN066fnWphlyjYEBS/V
	 huG0dE8FKEqUdEPuGDFBUTvwy4Ebrk3jIwlhy5jQiG/UJn/x6reFlglEjocwBUt16T
	 OMNNRT8GKJRrIiPcObZMBq9kpGhag37WduSWOcDy9EaR5ZHsfifG9MT8g62m60pBnb
	 VchqFQdbmDtAMyhnHl+2dTcEcM5LdI++7g7l0JXnJcbByPHPlrOB+b85Vz5yIIefZh
	 zXkPiIw87bifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948B1CA0FF2
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175690739357.4666.10664081880463339141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0fe4f6c4430ac88f08f7a3e2a5989b228653a8260e257fd4e6d7c27b7e7135
Date: Wed, 03 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756907393
