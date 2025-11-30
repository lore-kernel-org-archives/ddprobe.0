Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D24D28F5
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764492174; cv=none; b=uvLu+hamHlKLclSM4+BBImgQKZH1ZtxWfL4K5rkfwdZEtLFkEVbtrdClYAalOVN479ft/jJJCMO7jvtLS4Ei2BfkBKt3asVCqJinqLXYctEbBxEwYZT8dESGa3lf/qXyfBMewChTYeys/lBLwuthhukDawNpU5I8T0KuCHmPqaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764492174; c=relaxed/simple;
	bh=dRwvmaVM+2qRe+FwtQGcLIA507bWFZdJ+b1mjiFoMmE=;
	h=To:Subject:From:Message-Id:Date; b=L2BugA3aFxWMT2L++kRqcTZMFBcOVgXqH2C5eO3hykIoEZtNSalIDIY5BwZXBC6AOEiIJUM1NzIRmexl3/luHUp9p08oaPd/yZpIwPB9J8WCFm4aP/kKqjR0V0/Q3PMuRNnR1Wn+ATHnUCSXDqxGv0xLrvF3wFv+wSAYG8k1rRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPA+l9Jp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPA+l9Jp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCDEC4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764492173;
	bh=dRwvmaVM+2qRe+FwtQGcLIA507bWFZdJ+b1mjiFoMmE=;
	h=To:Subject:From:Date:From;
	b=UPA+l9Jp8e5krBtatUBHIcMNGIGDnpNs/ZCTujYNFloqzHwWCIKBZSl3E0VZ29BMG
	 BnvfTEEEXpOxTaMIm+yCUeatuB4gzBRI9i97wtc4SAfh6yQzpApHCtcX1H5WWXGmgr
	 9hLZM/eSyJR88EU3KqIewSgVDdq4Swgw5PECoeBI17PV3s4Him/EaGaPs6uQKYd1Cg
	 eMpajLCS2HCV/D+oO8QRMrrZ+N42PqA6Csgzw0KXGhwzcCoIeJdlQ/vnR64OQIYNAW
	 pQt9CdC5pHa/47YHBS/7iXneu0Mn3QKTW0y25ckFDF47xHORmrHDrB2AAP7Tboh9au
	 2/1zoZqXmVZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B512CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 08:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449217360.13061.2720068427432872191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bb445a30db561cb2a774137dee95119214f7411a531264b8bfa115f1e95ae9f
Date: Sun, 30 Nov 2025 08:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764492173
