Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507BF2AE84
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742575795; cv=none; b=Sm3wkxFmGt3FigqW1PG2tah9RhU4TlZjAKAx9ZpyrpF8FiTXDVcgATAvKIFTcnIbCjovjQyX8niZxcrbQad7/KJTzWi4KsRq3zp0MkomMjp0d99gz3osDoOouAkvfsWNzSVPVriQ73XcS4lm4+3WJEsifrPCgRIgzyzwBRbf9ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742575795; c=relaxed/simple;
	bh=IAHicNeZqFqAEMItIDe2+1+Ugyoqq0TitF5vbF0sPrs=;
	h=To:Subject:From:Message-Id:Date; b=sjz/qJyNvVMJfUPn8jNuDekdxwMg2GA6wCUYzrk1rA5v78yQxa+ZYiMKyq7xYABR2eh1UBhOYKCT4E4tR9LSiEVphR+YW20ciPH6zAtuqdOdZy8G9wEcfftB9cvgT+RQY9NuExNPm+VBVmIzvabyJ1iSBxnnhp1DPcD1jMu3do8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL73c+/y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL73c+/y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0F0FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742575793;
	bh=IAHicNeZqFqAEMItIDe2+1+Ugyoqq0TitF5vbF0sPrs=;
	h=To:Subject:From:Date:From;
	b=vL73c+/y5maqV/F83nkIgSKfiG3wQZOwR7VpM3XnU1BV5AyX/eWAKmGi7NiCq9nzl
	 ysnU+hFDHes9rDXCGcgY1BuNLdDEyB1mitdmmsstlz/1SqKQun5QUHha/Cx0EZFIsm
	 kpmH3ycH3o7/b9O6Fr+kIEXPZIMZMgPHNSKtwNYKdM2L3NVfQBEIe+NqVidSMXV/yP
	 I7V56y22+rLVe9/aCiczmRbc8Rk0HJUtBaOvNFPyF/nIdxTdh4gxtJtHILoqNV6TlT
	 XxXsyWiNNx3B2G+hOZQHYLiWSp5XEK/ur9Woy0Ski8+u63Fpj8pdZOJMLhZg2YgBGb
	 Iy/hFCVjxRVKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3F8FC36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257579366.19936.14000231368921505981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc40be8c9fc9383ad53c6b52bbfd9b6a41202e9c8fc573a7515f981330fdbba8
Date: Fri, 21 Mar 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742575793
