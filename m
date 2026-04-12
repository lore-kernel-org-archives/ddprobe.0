Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDD11DE2AD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776004654; cv=none; b=o57gjoFPCv2Ux+2eHcmFxctRQiznj+kyn2QihpIJNS4Y/kCe1bLAMvKiaJrq8n93QUBfQUuYrlHx5UXmUBcaW7VkU5WEqsIvatvy62EcNOLJZcJ4IowvaK3mPWVxjiBEcqzFM/u74oO1pJycsKCS4SfB1FQWys8VXijXyU5Xl98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776004654; c=relaxed/simple;
	bh=bc5ZnCZYsG68ncxCLmtjjCGyNWezzRWdY0bT2IGsxuk=;
	h=To:Subject:From:Message-Id:Date; b=mAd6AkBS4qPuRulxVoyfpAsl7BYixEedV2Mi6vtw3a4sRyx5M5vEioTAHW2o+pwz7M1373lSWEOseM3P+Io9yjZYipOrvr0Ui35TH8L44odMzB/kzBwAbpkTpjYdr+O/XKoGNoq/5v7ix4bzuQRf1cxxv9C5gHNffLxif9odBUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pOwMV3O+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pOwMV3O+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD554C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776004653;
	bh=bc5ZnCZYsG68ncxCLmtjjCGyNWezzRWdY0bT2IGsxuk=;
	h=To:Subject:From:Date:From;
	b=pOwMV3O+QOPBVqCYzLZXPH/PVcx0mh3j/6gb8uaF4KJWJlvRFf51jzwfgInSAJ9K1
	 AFRBP8aCcqTMWXcZY51KJlkcq4mChcKEwV5Kzg/HTRUPBeAhW43KeU5gw6yPdYkmJd
	 7WCRcjFOU2mf+N8Pyd1UPiNuf16+qvdFFgMQiyqqf2fAWQB9LZ0pjxCuZmgwVBGS+V
	 aWHPOaiex8Oqz8XSSB0mvfugLTgP13SyqY7marWMy6rTLWTLoiYxinqZ/kYnKvHUnn
	 Km245VHPx0ifUksgkqQof1+xAxbbFoJ+uL8ALx3dDzsmU3p4M2cm39yA5lPthI/p8C
	 JmC8ZcHNC0/kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC765E937E4
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177600465368.13304.409228561781972115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 121b9d3bca4ee1acdbec97ab9d0983feb5ea28147680bf0ec2a138a9f87efcbc
Date: Sun, 12 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776004653
