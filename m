Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D50D1E98EF
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757899794; cv=none; b=nmDOG1uzMplkKHWw04g2zO7EWRQ628N6yPyQqlnDPdlcf1NZvoeO8f8Uybz3JCfjmaMVGBZOinEmUYKh1oFtP0iOtBSaJ8TauD37MaF7Dn2SJRUFmHQRN1tE1a3hcBzbdu/gI7gXVwI++WNS+W4Wl1UCqqX+mfRXDXMEvjRpqj4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757899794; c=relaxed/simple;
	bh=Q4zaUdVxpXVZm78ywwffeQO5dWDxu9KuxFg4e0QYJWA=;
	h=To:Subject:From:Message-Id:Date; b=I5OF0+kuXItHm4Xdft9LCbd00DeJ48lTKQSFhL0hrktxEdsU1TDtcoPKWGiZIEKFoPuWTX5P9eE9xc3z7eeXxKByWwRuRx5SyRtzqak0WoXxUizjD1MSEkwhoiKwy754rz827M0h5p3VDzjDLS7tD8nWOPsTpjtV0I/NO6sX/8U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3b/JKlR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K3b/JKlR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A08E8C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757899793;
	bh=Q4zaUdVxpXVZm78ywwffeQO5dWDxu9KuxFg4e0QYJWA=;
	h=To:Subject:From:Date:From;
	b=K3b/JKlR8LV9lJbZ8hvcOuW6BvEesjVMCgDNSqFUd+fA2cWCRnIee1FmjC9ltSEOt
	 nCmhYyzGoy3abX0gxOdI7BXL2TV92v9S7FMEUEhf73+8UVCQxb8rBgk80qd71Zxs3g
	 v59OLLAD8mNo+CaXJvPrnWQX4DzivqsGfvAlI9ARxieCuZXcAFBu+22M58rEMmCjIg
	 gdGf8G32AOC1sWihC/vgSBTR7mbbMcl3lH1EVtrYMcvkJTyECFx7lfRDsCHJdLiP1s
	 L5rono6U3ot1DgrXx0yd1rysHeQj5TrDF018V0XEgLKUSbxCFHlZ7lnHFK1HB3KiC0
	 zgnS0XVIUbe4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FCCA0EE8
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175789979357.25913.9150807334150474764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cdee4e7657ea1b452706983ceef9dd04bafae148dbc6fb3453bd7e5b3807dcd
Date: Mon, 15 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757899793
