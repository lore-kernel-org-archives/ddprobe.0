Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 497A478F26
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782536914; cv=none; b=dnqc4IPgU7KWzT9z0tcurRPvVnfDbRudT/uxoRHu38jaNsLVer5msoq//6fyfPIJwqK6vOmIQHp8ycpwh4kY0yl9LmxHvwcv5Fm5C5mdQQEWdv2e8BGqhTS6P3+TYHBE+Z1JHAGnZSUGQaKdm3VPr1BlVKyQPfwvbbsXnecOGJs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782536914; c=relaxed/simple;
	bh=XpkpF+C9S98eGAMy5ZwlHWwIEfxCYskj4HrkTCVYc88=;
	h=To:Subject:From:Message-Id:Date; b=eKpmITRttYHAGtotf4ec7h8Q+BJsrq4ypyAx0/5r8zfZmmWkwmUIK5j6aDB16VgA+2dEJIB2zyf0jhl+qo7ZNGtgyHRz3XQdx5E033D5cboxj711nnYzofcuieRw+0iTijNJuX4py8FnIPpL7+MXFSJT8GdRDKq3qnNw6NNGFaM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KQ7PTyUQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KQ7PTyUQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC3B4C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782536913;
	bh=XpkpF+C9S98eGAMy5ZwlHWwIEfxCYskj4HrkTCVYc88=;
	h=To:Subject:From:Date:From;
	b=KQ7PTyUQIzjxX/SPRy+Agh3lOzCyY0heLihIq3ANFJS4hwFd/ink9J9skf56KtkCf
	 Mcg9PMK/jufdsFUpb8VpEwd0pjY9Sg7fFa33MF1imF9L21a/GgdWwqTcC0iRMetsbA
	 Ijw3t0Hu5a2IxzMFgfvtIZOQXRr7j/a5H3tLwuMbrok7gbvL53PlJ9ttn6h21ODbJ0
	 PSNIHdypw2YEqYuI9UXpFya+JlO1/RWOCIKH2zYZiHZxq8YGnR2dIrMAoZmJm3zgGg
	 yjKWorRmbWlc60XWL/anrhEcVdiAp1Sjuyl/sX3odNG6MMRWM497O+jZg3KEZ2Xf0w
	 rx1IO/oICL06Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB89AC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 05:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178253691369.24253.13990438402306409474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24f3ac4705aa0b86d63aa4e42d686e6645d025f68eb25b73ec20af65d6d6106a
Date: Sat, 27 Jun 2026 05:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782536913
