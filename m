Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 541D14E50B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789631434; cv=none; b=K7xK3d3xugOvCu9qTetsOMGRNohpvc/4XgrHMxa8l6R6IFjaQl3b3le4//2mp9eYppqD3ZPuIM8+ymXwGw2UWYS4Y2zEBajTxfyIfCd1bAzxpXAaXpBwdr4WnX4TvDPT5d6IRJqGm+V6QFhmaFC2HM+MXas7sL1JBaoXVzhwYOk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789631434; c=relaxed/simple;
	bh=2nf5sPrIdszyt0Ap/Dwb4ue0pi7CsWSVKjg40vSUb84=;
	h=To:Subject:From:Message-Id:Date; b=cFFDshudewlY4eK/XSpk1bNCj0djA99IgOAqt5smUNK5ZpzxcQ9axjP+oYv65CGfD1yUqWukz0wInkgfMs9rbLBESAyi94N8vfGCvJSQsYbw6u0DzTWIE8e8cA+3M9aRlse8y2qNBCLHDJPWw68rHDaYBgMGaHRWYHAhl8AcOfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExDES1UM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExDES1UM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB2B5C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789631433;
	bh=2nf5sPrIdszyt0Ap/Dwb4ue0pi7CsWSVKjg40vSUb84=;
	h=To:Subject:From:Date:From;
	b=ExDES1UMxacGCC37MKKjb72eRos1OxBh0zUBWf8XujVcFGXFy0N++zyRmhyy9LaOJ
	 OK/OJGp7E2p6n63AIEbVPn5c6juwx7e9CR1gALLAAQay4vXp+WOkafWKtB40RrmFoU
	 WrlgVMC75X+TJIdDWHp2kkD3qqfYmBWtjYERhYwKcBPfllPdh6aFs8fjiQr+A2St5a
	 3PhDev2lLgo9uHaUswrFXLT9mxbIoY1WYFJGPRgKpU60Okjkb1EnHRoVIqWLn/LIHR
	 T6HOrZQ5wYhLfN4/D0lYywbXqR3WfuFH5e844u/2TrwICmnhRGBscsQMXG2v7iasgK
	 /4Ef/3fnIeifw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04CCC982C1
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963143370.26036.11073261519046727015.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d5b6beaad7bbf604d2f4ac30df91c8e8163010927e42661617bfe144b1da097
Date: Thu, 17 Sep 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789631433
