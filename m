Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6BA2BFC9B
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764867174; cv=none; b=FH29V8cpLDoviGhY/Q74he+I58t7IQaQdX+YT8+vaBnHX0URYawKsNbvYsmT6wutHS+WuoVO4hy2NcNDYDV1mVNztq3oXT96anML3pFSeaeYkAuInRiRIGafo++xfhGMPCRYEkj1GF74mSlX200CYHdTdPW1jmrFL/AsrvmZVH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764867174; c=relaxed/simple;
	bh=M0mlC64hkEBuWV6wXv3EJ1vWJ/7OF7qkNo6zIodM2fg=;
	h=To:Subject:From:Message-Id:Date; b=UcP3j2yGpC0q1svW8AW5tfqbPuvf6+qZPv40jN4jgbBmbE5hIPOXfqZnfxpThMcZEWUrwNcpOYkWhwF+7MmJKtScijumIP+519J8jSTRGFYApM4ZdNFQtZF9XiSDRFJcfdOmSUWG/g/JAOBG1/8UEMVpIMD4k5Z5RN9zgyZV9/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buvmtTbI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buvmtTbI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF05DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764867173;
	bh=M0mlC64hkEBuWV6wXv3EJ1vWJ/7OF7qkNo6zIodM2fg=;
	h=To:Subject:From:Date:From;
	b=buvmtTbIKjFsWeaRiXI44+D/nMfFiD8TNa7O2m2Dxtp9Q1V1VSHb2CjgP5zqpDd7v
	 jHlX6q3LC8NCvJlUAqM+Q3oHTgLhx73ag14R+anX04dvAg313emWi7Z4pDuX1xjOSG
	 MPxa1VAT467ssEdPZ/hJpBIyLMq87PHdd2LTHRLv23cu/2M4FAHlZgGyvrDBtgf7oA
	 rY31UuoSk6hKoR465L0akIERnk3ej9/bghpvqzZZJeXu4fn2C/eGTIUCM/vOWU2lDU
	 M8UvP8PByypAs9NnwSAzFdJHJU7lT8ZjZO4TMiQ1t8RLwvxrr5p4DHX8/lx5jXoUGY
	 9Oc3WvBVfewJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B27D216BC
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 16:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176486717359.6058.13887393139948730636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49c4827d979e2be6d61d607b3badd14c4d551b8c6f65c4eb02d5b6184a364ec8
Date: Thu, 04 Dec 2025 16:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764867173
