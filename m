Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2502C2848BE
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766742834; cv=none; b=I6qKRvJnNUSBJTPU2wxb/Qig6AZOytJtzawGNiUJajm/DPSUaqKwgD9fLPlTt9Cg+zG0M4GCcWvxhWoi+cgcvEbl4fCGKDnySKLaEmFodabrLkz1zaYC+4U2ew6Hnn7ORwJdG8wMoWKhxlr2NmxRh93IaYXCcuhmlCkF6+TMNZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766742834; c=relaxed/simple;
	bh=DpcIpKkNgitAF+wZPMZt3FuMgT9tJUmkEkqZEBg/A4k=;
	h=To:Subject:From:Message-Id:Date; b=g62xoTu5zzh+xIeN/FYfjhHvZxUrVyQANbm/c/F3n6rUNQbHmx8609RdyAGuQIN4+MnvIhesiIVGj0/U/UWrQWHqMQqAHTdxEm6POYEtLIAL8WddSd57B4nVYMhsXXXHjqjmSQtY88lVJlrSA3fU2j1aZhPsNpSJlgEGPI3j94k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TeRX+GVI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TeRX+GVI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8644C113D0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766742833;
	bh=DpcIpKkNgitAF+wZPMZt3FuMgT9tJUmkEkqZEBg/A4k=;
	h=To:Subject:From:Date:From;
	b=TeRX+GVIQJRYS9doLrYDgbBeWxWo1VBZ4qisbQuyGCRpxHM7XMmRdEJ5l5ti9Cczh
	 f2djgifxRj9E1BLYLOi5KtLwkywi7N3kpc6rtgybNjStWaOpiHUGPdQIKZDRGA1wxB
	 qY+PmuXzcgsWGcqKuu627fZIVCZwPi5mk5utmTcLDpibgHNB/1uHYWPMIeqRgIca2h
	 /g+G/upQOEpkTxAg9e7jWfZsypYcR4hYkHlw2IPtvLU8Bl4FWy714FpDxK7Bx1L6c5
	 S9FJzWO6EiF74R2muDaFXBCQ5YPxTzalCIiPFt3sE1nveLpZhYSaKLkd1GY1LRuHt5
	 m3cVGerMIGUHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2434E8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 09:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674283359.31279.1375323600604830170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31dd6836505d81e41d9bfa4dc2b06623972e4b893e62d54b7b79176bc0fca94c
Date: Fri, 26 Dec 2025 09:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766742833
