Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82485A3D
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720242323; cv=none; b=bzeqjBhjzJ4I4m8aosFm8PoaZGjJQTj3LtsX1OxnyGZr/xMNmU9tPe13kKg2SZXcuTZZEM7Gdk3Klbx1FZq35C71UmisrluGS/zR/OjVBW8G62Fh5mde3xO4lPIiYvKGGIH5SB3VrTZRRO9OhKF/pkjdrJd8QZmDfvIdqED5rSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720242323; c=relaxed/simple;
	bh=oZxyRvlP8xBR7jwYDyNXX3xK2yfUkY2/EvDyQQve/sg=;
	h=To:Subject:From:Message-Id:Date; b=JVJi4xgSR5BtKQ99zSuflPXI5PS6FCkKeIzQKijiJEmDJMKtTL3TyJOMYEDxefYCt8CV+uyuy4d63yPvBOWvmXis8gcxzEVWluEMv97J/hYtDKfiQbCEfk0uJWC7BonOfGaC6y5PLyZPEkXzJglf+a6Mnx7D/x10VHngBT/YOHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewPsfTWp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewPsfTWp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E87D4C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720242322;
	bh=oZxyRvlP8xBR7jwYDyNXX3xK2yfUkY2/EvDyQQve/sg=;
	h=To:Subject:From:Date:From;
	b=ewPsfTWpvc4xm2hdFTowtkTrisQhrcJNpIuTUVqvWTxgMq3A3K9jF8CSrlGbUAMFg
	 2Ty0BXT4TMeuhUbsSOgyWizK9254YdWX9iLVKS5yyJF65q0T38e3Fpx5jg4mIC1osK
	 ty+9GHFcBC4ZeMFpi0YwjoIaWqc/pPbBvPwve+KguILqO3F8jklrVM1YvH/MJCepm9
	 KsBYaq/okjx6ANcn4FQkat16m/r8TbmgMoHqRE6Pff7CsX84zJhGnT3xXzyjblAugP
	 fy7G6gUUIh8qOGpvt9R3DTQiYMQT/a14MFDDqy3iW0JDNlxFGFneVcpnICgcIyLDLW
	 svWvgum1mZrEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB04DC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 05:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172024232280.6855.15466852081895603180.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8dc560276ceec014b6835f18790a90b33f3b43c0921bc34b51d623e153e9d7d
Date: Sat, 06 Jul 2024 05:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720242322
