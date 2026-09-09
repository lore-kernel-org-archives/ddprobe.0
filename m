Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3772D7386
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788920434; cv=none; b=o3dRZmVUzGR/BA2JHxnn56w31qvY39vdk7sROCQhH10XD0+arsu5LoMxBT5ps7lFlqhsB8ks/W5tkOJpjxv/2WvNbU4jyw16juUN3MHDHMIKPNX/ymPN86dh1bK/jfr4a6nEwPat5t8hWOowMkaJVnvj1ovy8SmkSSFkc7ed+aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788920434; c=relaxed/simple;
	bh=1IFZzN8zZoaME/oSGhdRopzwhZqDNrywYqIUI+ZsLhA=;
	h=To:Subject:From:Message-Id:Date; b=PsTOfl9bZJtT78OinXahWhg6y8oEnxLI4HJzCRJDJPH0iunQndVKKtmZoc8BPT3gUxw9jgBKxTWbHm1fMtGGYO6z7vbPDpsKJljPptCdse1XD1TmXIuHoDBq0OKY880MsARRie9xQ0DZiA/48wF1feqc0KuSwd/jk9Fg6Z03y2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Us6Xdg74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Us6Xdg74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC65BC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788920433;
	bh=1IFZzN8zZoaME/oSGhdRopzwhZqDNrywYqIUI+ZsLhA=;
	h=To:Subject:From:Date:From;
	b=Us6Xdg74KaT8W4ld++l9uHw0alRwqANH3NX7XcX7yTG4HAgjDRrUM9gHI7TuNEvmn
	 uOwLJwTSqo+cj8zgzFEnwMZPITXmy+0pRTCcWjYaDkvyb+BUdpuuTJMYlVB/rvH16S
	 XRYYPivF49tABS4Vcnr7vqoI29UFrQd5cOyGfG4uByEo+SFkF10awJiE+lTETmMUVK
	 yN0r8hPVF2hncAhaohmLNdbaXVf0oMGaUc36hLA6ya4qU0XVanV8jbaLKY2GYbqQ87
	 gC002rm7ubaLIdQC/FI0SoNlBhsX66CuXcQQVjfwm+gUX+eD2PBpuYGei7IN2m8tpW
	 +pTycXCxV/QDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA162C79FB5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178892043368.13720.13607285009056850122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e8e3b0f7f4532503480e1075a38395d41aff1cbdfc9095943ec207aa1b8d4e2
Date: Wed, 09 Sep 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788920433
