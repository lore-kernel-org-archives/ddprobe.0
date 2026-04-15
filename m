Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1856217736
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776214054; cv=none; b=t03wpi4vLsWSAciz+KUsd60QZ7JXO2kIKoLanc9dRZoVucZ5mCC343e+IVdOX7A7wF9kF/8RHCLDLaSTvvMZoSQ7BntW3oYpY0fxMLJJzMYDPWijOPSXYEd6zlsrqLqjFSaLkopnxEIVp9RD20hwQw4AvY8DeDjrf+TrgDAiuZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776214054; c=relaxed/simple;
	bh=SbXbMCvZ+MIICnqw6P9hbaN/jDztnR3iDr3IhmLYPlI=;
	h=To:Subject:From:Message-Id:Date; b=JNc9BSQoKp7TregI2B/sLM3xyHC36ulNkg/lhK6eEtgIZnotiYIV/DJbrkmiLPTAEyqhQuq+2dhk2A3sFHcObwZ14DnQ/GehpdUsE470y+x+FcWfmU+vQ26rzyjMA2NtGRAxEYpZcf6UWOmEeKzniT7GqDdF7fYLu99rv/09TAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cDloN99z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cDloN99z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2325C2BCB5
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776214053;
	bh=SbXbMCvZ+MIICnqw6P9hbaN/jDztnR3iDr3IhmLYPlI=;
	h=To:Subject:From:Date:From;
	b=cDloN99zaoo9Nil1IPaCwYRhwx0Gc2cEIhesj856B3/lQ4MoEoI8UmVJFT2qelpVO
	 8UM4ANUxFRqgJ/f0nT1eOlVN3zlc+lSSDpL7Bo9LBq0RO+l8fslFU65pe2d8p3W9r8
	 kT37AYtueHrbMGWHnybsTIWu56iuLAiVjMyaF6dkA29oIUzJ06WO50vm1Me52U5F1o
	 USAgYfLtDB/h2QBhF0C6D1GeHRqX7QZXpT9QwXDDeCDm4/nG8vs3cX/pCUbFhmhOSl
	 7rfCKtwt3KFfW1HFmBJlwLR7JVVzn33VEQ9AGQRNpXhPW+I4jmElbsAWm/3T8jAHqd
	 Qkgb/7GnCTVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF5D1F9D0FD
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 00:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621405368.13639.7495969544801799507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1f3ff381aa00dbe48858b714dc0f1df6609cac99ddc375bcb8954f327d5856
Date: Wed, 15 Apr 2026 00:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776214053
