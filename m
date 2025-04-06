Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF932914
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743917396; cv=none; b=iuhSeReZ4NPmbr4Llyh3YzNGmO/FC2xyGaqsAeoMbxrU16lEPkDC+UWDSHk1odx4pVxzdBkjk1uDhF1xxGU3i6r4EVFWhwUVFyhdkhdXB+0B1OvtIcn2uV1AFYVRJaYjH5fm0ADbpB/g5TmhxDUa7UZbC4IzLtQH6b7XUavmnR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743917396; c=relaxed/simple;
	bh=Uy40rNY2d6LX1e1QIkAEMkPHJLCUaDTxbRZER367tHc=;
	h=To:Subject:From:Message-Id:Date; b=pzlXKqZ0WseXIHtXuYtpkNvZTfRUoBrQi0stbR+Mj8N+wt6J2Xydegj7aX93AgLg3kcW9peNNZyji8m8NhTC9x+0JWgmLqYJBInxnUFXV4mgK+msdokI2frHwiR6sFYU2cHh2LhMEh7TGTy9p+PA3l7OUZGaNUVaOmHmsSG1J98=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dnXSrne1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dnXSrne1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA6FDC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743917393;
	bh=Uy40rNY2d6LX1e1QIkAEMkPHJLCUaDTxbRZER367tHc=;
	h=To:Subject:From:Date:From;
	b=dnXSrne16V9rhVlsI2p1Tt3GNpYAu14WOrq6jy0Zak63qBV4PM+8kDeZNwrR0JcMO
	 821hg072h8YIntbr1Egcu9bdGOoIxsCbD8gUDVxL0+UQ9XbdM19qoiR4sLxpRxfz8+
	 OZveDVRKHT/kbrEAo4wf+Kk+sJUxHlUfMkO/bJoHax7YenS04dYoC/KKIS6nuP7umG
	 zLGhUueUzU6jVdkaGcTp302GyCQAVAZW4drLzQMV8wp/tWyGbF71JYvBdOXHnqMVCV
	 vNCuUwkyDjUTJhkB9i5yfH57mDkG566hbamTdCaFA9l0I60bmhY6NNEL54ALEVixSk
	 ctt2k4DiWVpug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0A3AC3600C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174391739360.18418.8968366191206152792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6522412f6b9ce9c3183b037d25308d66549aa7b0d04ef1a250b1378593bda34
Date: Sun, 06 Apr 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743917393
