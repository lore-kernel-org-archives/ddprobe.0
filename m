Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092F618EB2
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 10:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707215897; cv=none; b=p47e6wBq2xa3JW8wbT1sJojJM9rw5n4iTbcRR7sSqmBFbIsxRqMOvglLXLzu8+c022J+dB1hi0s3n+rdfjFT7bOjs979UIO5jia24dxjGCBeBvk/PMUpUcSTaFC1aqHIIoHdHgWX0F7V8Fq/P8arU8t77+IEJkwJCkASZYj0Kgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707215897; c=relaxed/simple;
	bh=kOFjGtJFvNgn+Ywk0HSBz56W8vCmDXESYn29ZYaqK/Y=;
	h=To:Subject:From:Message-Id:Date; b=mlnKU4NjRraC5wS4FHkybhxWzcht9ck6uYZ/ZBNBqjxkan/8HM9UvMptNK4TP1nX+6Mw+p7L96eY2iHGngJowUk8H5/h9nAXJanXDK0nD47OAtgmI72FiFiM/Q993Haf2K63xls5n/yHQsyazoePwlJ09jsqObHNuiCV17EFcZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCDDhzpy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCDDhzpy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 92615C433C7
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 10:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707215896;
	bh=kOFjGtJFvNgn+Ywk0HSBz56W8vCmDXESYn29ZYaqK/Y=;
	h=To:Subject:From:Date:From;
	b=vCDDhzpy+fYmrZ+2/MpVDbickMrKohjOXTM78w2RyguIl3R67OOCC3qKeFaAZJiN1
	 miyeLZs3c75c+5mv721z0+gtp4FpBysS8NWpnBmco6ypSypKplitgvZTVIF4NfcFKo
	 Iawuu5+cbfJSeJ28U8swA6ismztsOoz16t05an2gMuZIBx5sFOCGfXn95gC37Juhza
	 E2NJliwomBcGrN2o95Fu1SnakKdb3WYulca8ulMgiqAC4xQRnWmLGCSyB1iKc3r20f
	 557G4Mv5v8lr1EFmlNnNoBdH323WdW0Udcha0z3J3DIwkPmsAMDCEClu0+76u/tYWg
	 zih8aKQ+oLdYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C0E7C4829A
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 10:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170721589643.24972.3758278734885449552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a259fd86538b00f817a8061658b054d18f08e0e2a54d61f1ccba30cc1eb11c0
Date: Tue, 06 Feb 2024 10:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707215896
