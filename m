Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F44D149DF4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721640354; cv=none; b=KPGgdYrc2BJtcok4Ea1GYClAHR9r8QjtFw+AD1faEJ6C0E/l0GnDt/a81ksE/pXoywJhbPM2xhlduaUC/o2msSIr5hU8TuGyfhuzX8Mv1kRZ8kCvzGPxhBBSqmFTioTHyt034+ctn+eiiyf1wLCqhtlZhSQxPfydI4p8QHHbzNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721640354; c=relaxed/simple;
	bh=TkdYzNrzUDHLhwPUNqWH5UUC0v1fOuy/DnFRcexYJRw=;
	h=To:Subject:From:Message-Id:Date; b=dEX50y6zKLWjgBbJb516aoXc7VO1eCQm+EGPAMLOnoXfQ8dI25EOEnGRMFZ61l/ohl9V0/LtjyPV7z4jYs27Y7T/Qpp/czmR0meTShMvD/pB7b38YaeAK6BlWzhnvAuuL82BcD027RZEBCXfIczaDyMFgftRa8rm7Fcaq8mf4Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XG0SYp3c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XG0SYp3c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF370C4AF0A
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721640353;
	bh=TkdYzNrzUDHLhwPUNqWH5UUC0v1fOuy/DnFRcexYJRw=;
	h=To:Subject:From:Date:From;
	b=XG0SYp3cQEE3xKtn0WDuFxin4oXNvzNfga7yJvG3T5Qm7T8oalVArylvUGlaP+yW+
	 Kq2MbZUlP04rPHLAn/l9Kp6a38ErzuqCpmhQvsToJQLgDvib4E3pRhkZW7F0eea1aU
	 nWy0Ie8zy0+F9vuDrW24+3Qkw0eTbWwR+8JoMxcUwgTcFKtOnJP3XHGML7wBfXfyve
	 UX/Ywcsc9m4DYqAQpQrAQ8rW2wpzMKAkt9p5ddVt6gCtvwAJ7lgCIxmbl/FY5efbZI
	 ktOHa9cv99F59NPS3QFZgir0qxbpgLyr0U8Fo1Nuohg8GV2jd9hMq64+jK/58rMkz+
	 yuQb/8kPduxow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B77CC3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172164035362.2004.1826242093933784917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 580a6f987d4ab621d4730c7a44e90730f80e130baf315a93b798cb1e75a6ba25
Date: Mon, 22 Jul 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721640353
