Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BC553BFE3E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790545834; cv=none; b=r7FWLYLcGjIR13Wm4Vk+rQpIYLJ4S3ibO1vpl8iErNZ/ZINgdyXfaOeYh30astJOncp+YfqToeG7yQBqmixAKAeJNMA7vj6xDcs+LFpFsfOkXlxWE6i1FLt+K0scmqfnuLStDLO4fsywztuRnrLBm5IYWaMoFrmEwamEsx8g6bo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790545834; c=relaxed/simple;
	bh=ZvrLx/7ZHDu2cXs2elSVtFubgKVSVAU6ON+9QuX3h3Y=;
	h=To:Subject:From:Message-Id:Date; b=hjEReIBzU+OWGnkLGuPLRYZ5O4xFFNI9GcnZznstkqAB+W84+yWTVkroyVRs/o9KvozcTLqHTGfAS2IYqIoF0+TyrnR3GtVpxeQtJ9NvoY4VIWMFBJo/Nonoh6le/qlSjsovDYybJV5WZQFxsV1HOjSNK6AIbTroyDTDOtZzs0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQB9K+7F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQB9K+7F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE289C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790545833;
	bh=ZvrLx/7ZHDu2cXs2elSVtFubgKVSVAU6ON+9QuX3h3Y=;
	h=To:Subject:From:Date:From;
	b=VQB9K+7FB+7M65m7BIDUUOz5PucTLAXNQQCL6ku4++2cqwezpxQ/ECzoRX8xHxx3B
	 VPerHODRWu3LHwpafLPWkgHYsTasn26Qr39b9Tm7EQrUX8rANJs/fGHJjijBtjmUDW
	 IF6TusHYf6fjkwHjCANDXhtVOMxrQDAZ3M+geUNl/VJ8MwiMpeN5pKZIxeQKm2xmC1
	 cB2jliE83uzNnXWl3aFd1y0eJDTe3g8s2NEoTL7M6FH++4SAVazlyL/7Da1+FwRNGj
	 tg211FSr59V3dxRGLTMFtmSypcYBx+08QcWU/FyJ1FWtSunvc7lufU3eNAdGXc/c3c
	 P4PwlmPZLRTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACCBC9830E
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 21:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179054583369.15764.7581714636619347925.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8844da0dfcd744095c15174a1478fb8ce508a6475ab97110e84f49fe7abe1fa
Date: Sun, 27 Sep 2026 21:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790545833
