Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82B97374A11
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782880114; cv=none; b=F/dl3a05Il24f+v9jrhswjqn/tXnBdyPeYss0/4EmyUxO3TCEO94kEGkIjRMPFbYhS8yGjG++ZmuHeUApzGeiCs06VzXd0I4yOfCVZbNCpJ/Ilb7hYmp1suvv0QOtjq5mFtM/TJUD0EYTuKbdJn5FsDj6zef1shbHCAxjt/CERE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782880114; c=relaxed/simple;
	bh=IDFJJzzrQNP8bhhYvyxLu/WUf9QPq4pQRFs20eqsJY4=;
	h=To:Subject:From:Message-Id:Date; b=ROOl6vgnsWQqsUeMT6YSJD7QoZ+lJ3ksAwnUZKTQL3yoM1Y4DCtx1AKfhgvV+C0SFrgoqxIHG4LpSa9s2/FE5DVBzLip1edd8SBO7ZI8YW2+dwVPKYzQgmHU1pR+oHCH924m1zoM7zFICeXNNK7AatyPxN+v6A1FILzU2uf2Frs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQFyvKFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQFyvKFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3D08C2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782880113;
	bh=IDFJJzzrQNP8bhhYvyxLu/WUf9QPq4pQRFs20eqsJY4=;
	h=To:Subject:From:Date:From;
	b=cQFyvKFYLzoZOZUrBBDUo02TVazb1wOD9ubFPyo8VPo4tQrg42Dp57v2pSaQI7PXb
	 bwdTYMOJb6cEKLAzR+9zQFeNdYxTYYhZ94OZuTR7HATkNoF7L/Nxpo29oYHmdlrqKk
	 xQYhRj8+f4cSCEP7d4+kq1qq1QN/UKKRLhXPldc8g5o4qqWiInFSm+BXo5ZJw4AbL9
	 E8ZDOvbymbwyZupE04bRqngLYrFdm9JmhSxXafButkvBJwUfkHD6oCleW2O2P3pHYn
	 XRGYuFoNOCNzRBAOqvok39JiGKwjt29X+VLKZsNBIEI9BAHxwIJuPaizvznrqRX5YE
	 73IcRIvfsW55w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE215C43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 04:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178288011368.20143.12049014276679699752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d22e7721685e17f14c714f8a5238ac343721496ab8e3b4753a139ef699380445
Date: Wed, 01 Jul 2026 04:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782880113
