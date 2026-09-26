Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE4BF368D4F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790390434; cv=none; b=N7t1stJOelfLNt8MIuZUG2ktsOzcoDJmYlBSYb1642YaYFiC5AjbfNLZAQX0WoLvNFoGo3SaT14clVsrBzZwsUvAr6Pfpq24QbWDhGpb9i4brSxQtVzzLv+p8+xk+kQtdJ0T/mGO3fp1uMkz3c9F/Z1CK/pbFl8eiL8RWsottoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790390434; c=relaxed/simple;
	bh=WGR4VZOHaB+t54sDaOp0CqpsCggWPsGzCSsDzSpwaRE=;
	h=To:Subject:From:Message-Id:Date; b=cznAdZC7bSvtZ6bIQKAl0xmT4WsW4l2buc/qHmL0UZy0jYwjYktXFnCGI1vLzL4zdYAPAMpJ2LDE9IyqFVaHBMBlI0rKrGGYVlAieYQMOyTYfb4WLgSo2bJXyT1akKGf/8XDJUQdSJvsYwC1vsYbH7w6If5fhkqM1+TqSmbjNas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ELblsWio; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ELblsWio"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AD5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790390433;
	bh=WGR4VZOHaB+t54sDaOp0CqpsCggWPsGzCSsDzSpwaRE=;
	h=To:Subject:From:Date:From;
	b=ELblsWioT2u/dRVJwYjvEDai71pDrfDQXU95n/mAXHJfcGn25BV4tb3Mgkymhjmj0
	 IEXkt0lJF8uj834446lEFAcHMdaS6cPtgOUxS1/1R3gYthFMEpmIYz81UY0VhujjAh
	 Dik9LyIX+dWrYtze3owM428WiursRXo6N4qwAdHin8iPyDyFdgp2FG2nNvr06p5Ddp
	 prm1i6BfmBsI4d1tdXq3nBh6gCghCDZj4Bsopx1DaCS33d/AcHOqUx+fc/P1wLQmii
	 dkF4BBblvTEFZyf9drtDsdkaHE55IwAjp9QSup8fC1JU2XLxQocG3HPVEJO+Lf3IM6
	 AYrWGmorKuyDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5477C9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179039043370.31836.7610056643536537035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd438e070c0121383909dd2cd7fdb27a9ad540d1810ef952729ed25597151892
Date: Sat, 26 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790390433
