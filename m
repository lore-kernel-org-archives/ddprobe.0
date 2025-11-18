Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0EE09258CE2
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763475114; cv=none; b=SUpDeV3bTPqPXLKSSsg89TkWe6OxtVyS8MatHHa/u2Q8krMmDLASvdEcSre/FsGJrk72Z2Sb/0draYRoJsubgNqUBh6bV3GfT1e50ZNSY33ZICWAaGItBJ7p2o/Rg3uC7UlXmFymD+ktnFx6lJqf2w1Nt3zK03P7imUBVWYxAqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763475114; c=relaxed/simple;
	bh=PTOvP9mW33sGeNC+FQEdsJU+qAupjN27m8qnLADGazw=;
	h=To:Subject:From:Message-Id:Date; b=sMnBk2e31iKxQwpZ1/i5A6sgVmLrrT01f0gWEWsXM5VdB1VU5lQrrGpqBaW0NSRkEK+oYccGLFQoNMM4Vj7hdWrnFLeuTOoICxxgb1SEsqy1NeUSnvmrTZ46DISYqqLPS2Om64sQmZUbaiMnU83yUjt0r0p/fDGwNL8aif3b6OI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6z2+xXU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6z2+xXU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C0F9C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763475113;
	bh=PTOvP9mW33sGeNC+FQEdsJU+qAupjN27m8qnLADGazw=;
	h=To:Subject:From:Date:From;
	b=r6z2+xXU9I9TFBPWCz30djIFwBrj+dOAL3U/UcHP8GL3g64OZz8ikl3xCc9nTWi+3
	 /msWKARlOx+0K8BAWkM0eTxqw2Y/kcPt5HqnQFSHJQV8wRgkIVed4FqwwToRLkR++h
	 VA8pCetHt8EdjE5O4bhYyDEJTO+jdGrImIwoH37mk5jIjRfoxQImmbSpcom5YIObVG
	 HajKFd+qm1RxYLe57TYd0FMJ9jwqrNLbg616rMzB3cI8EKP/78/ps3FOn+94vX54Kv
	 uDsKmV9TQibUqnf4AkIE6eXnvtIeOqMxpNaLoB3L05D9prQqij3ULAPX6UDERAVEBs
	 V1xhLw0unFVcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966EDCEDD8C
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 14:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176347511360.29718.5696855206997120601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66334a4d508a9e3544ad3a305628ccd0bd2a7eb702cd1f90e8751ad6b238e955
Date: Tue, 18 Nov 2025 14:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763475113
