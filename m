Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E450399340
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782442654; cv=none; b=mbTR729K32liMbQR0Zl510Bt9mpP2Q6azB26bnMEOZwirfNQeDauhcfgt2JBRO5Ps5lQ0PZQqUf8bQyXtSZrrz2aKSaN2n+Ly8EXZ88rfUPvG9aTJGvI55RZnxE5EePZf1278doQryzuCFZqixbX4PP1e4h7dTjIKJrpi+Ny37U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782442654; c=relaxed/simple;
	bh=kIZMG3rCIlvFoAgf4XPBHxiTh5nw3/hlJWPxcRwECAo=;
	h=To:Subject:From:Message-Id:Date; b=M0++NnxRCsZWCE2xgJPcBL6KPNBgu6hDX1wI7lpjKKmASwiWsb1KBlgVEOAKJw8pCUysWMRglW5XCcnUTNtgnh1nF8niGLaVJ5+8yRamtJKVmUA/gZuKO4iUZb4HxZYYFKmYyaN28N+0dVRnH0+JyU9Ae0prrV2lJeIaqlroZ4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4WR8/ij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4WR8/ij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE1CC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782442653;
	bh=kIZMG3rCIlvFoAgf4XPBHxiTh5nw3/hlJWPxcRwECAo=;
	h=To:Subject:From:Date:From;
	b=F4WR8/ijC47LSM/trG0j9xXMEEpt4tSCYPTiqOvTZkK2XnfyCjEdIz+gzfOLMTJ82
	 O3VzxPsLtTcVb16AFVDQmyHNYpTm4CGxnSw7eK+X9yZIocRNEshVYVe+gknYo19C1a
	 /9QWySGmXz6mjPaGQToH4wharX7+NGQl5V3TGOQRsRUdXxDyFwokltmXKyrDlHJUPm
	 LoYQjtswRPt+788AWTHSwpkQ/1RGSYa2B949AWLPN7PhYbo0Bs2FyYtEiHo5MSS+nh
	 4LmY8XNl7FmY20nu8SEOELGn8CpQLkTN20sQyQtYsAIbxNycwNuPddxqXLVkh25SqD
	 ff/SYSag/WYMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBE0CDE008
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 02:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244265369.14153.8832499007088370860.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885933b4c4a9b76d91215000bb1a8cd0e97625664a367fc2550c67a4b941dada
Date: Fri, 26 Jun 2026 02:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782442653
