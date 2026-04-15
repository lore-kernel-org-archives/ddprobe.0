Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 251BD30F548
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776223654; cv=none; b=QBeFHJPhYU82IkSYpOPKRH05fUski6yRfgzKJRP0M5mUqrTWUmennPLeb5FeI9QrqPdsvyW4SSeD2w+O2ls8RTiqBQfHLH8bnRh7uI5xnoeX7v00U8orUjYnxueG6G86nXQgubMCAxGUbdMIfQst09cjHtTZ+dZhQcYRTP8lW8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776223654; c=relaxed/simple;
	bh=Pai9seT7LvEbSYjN/Eq/Xf388ldoLJGArN8Azfz/00M=;
	h=To:Subject:From:Message-Id:Date; b=P3FZBXGJoeQtWTW65IDvl4Nyu07pH+pvfgDHYnJIJxE0pGjGj1+76VPawRDB/bgi/9qx0IMRYzNG91P23YPGHrvNDu9v0R7/s4wTWe8p3ibUQjaPRl1p8iI2OS5LKn5t9P39bQWj5xVW9+wpxcJgPmwHaxB7F+UPUbqiKWIr7wU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D0ZAdrEx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D0ZAdrEx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB75EC19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776223653;
	bh=Pai9seT7LvEbSYjN/Eq/Xf388ldoLJGArN8Azfz/00M=;
	h=To:Subject:From:Date:From;
	b=D0ZAdrExQAUZpaNfq/xOPZdt/hGTyn/KoBxbj0QeM3B97RPV7fqjwhS2i2rKZyktR
	 w9EnCTDuKnNd91MSRg3u/ivpj9hpT2QIHr+gCj5KrziFXS4Y3JBoWgGiMNVnhFn04w
	 GTPSejaMJwLkQDBe59ojCqho0nVlBmbEZbLy4SqRkMRqKtIFtUKAaqjgQKm1G3d3UQ
	 EEsfrirjtrpHvP02REsdhUnRMGQ4Nok/fx6zm7RTSG1QLGU/HayhVts6L6mAE7VQnZ
	 j5AxMMTfxJOh90djnN/FqYobJPA0FUvy9jnsIHDDPVWSmatfS2TCv2bD8Q/MuSTxDf
	 /KckAKlWU97mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD6F531FC
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 03:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177622365368.20923.11966781938898544845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3736f6e4b72570c65b6af970bad860f60c0cae145a7135329932703c6d655ded
Date: Wed, 15 Apr 2026 03:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776223653
