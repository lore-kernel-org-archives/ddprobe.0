Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255E44A05
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724630154; cv=none; b=PCZvY5cYITod9MTnuI860ITnDyNx3VZKAy2lGPLDw3CHSYnj5ygpAyhe9Vfl8Hmo86Husw8hf6BxRDNOqJcBSwY6P+HNpGAZfndMHIKIbMLjRuMLWCCp/31RPjZhaB+DpF9lNBChfxTI+tdQc63uykY1KoDuUMgGWs3wQDadUGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724630154; c=relaxed/simple;
	bh=kQCtssqnsENxogJqYuU6MVzDHFuUIgc78aGBdWMlBFM=;
	h=To:Subject:From:Message-Id:Date; b=K6l5pb/HeLfqDLrNwNaefX8mbEuek6zHzGUSEfmy2S4QkrcPtg/52TPAuQd9abSrd7kKlcM1TbAquLza5OeatjNX2eFtKg3Oz65mQi296SPoeP2k16dn0WKjiTOLlRJWyymu+n4qylm/qBndxR6v9E+wVjTh3nUhnn+fN4JjHbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SNvXmJIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SNvXmJIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0B4C4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724630153;
	bh=kQCtssqnsENxogJqYuU6MVzDHFuUIgc78aGBdWMlBFM=;
	h=To:Subject:From:Date:From;
	b=SNvXmJIcCZtQ+c+N1A3KpDd7nRT9GqYZXcbSCdyTokUQ0T+nPolOkYK+kgKrQNoto
	 xPJSb9V4PH/i3fY33qf8LTkychVJJif9bUT0o1PoCEfeUshzf7Ek9VWIFtjuqYWFht
	 8rbNOjFCz+Z4yqgbQJEJHFR8742fQCTgmG32lB5vjoZXVPbalLSMiX1WEUGwqRQX55
	 +nf8/NO3rqZySEKrypZ7IwrPqm9fULTXZAewy1r4GTmDniKJSkFioLFodwsDnbdwCy
	 CuJXJozEp68Q6lggLee2DI1wr3dMyhYnysIw424lyLcNnAqw2fW8wvAZ0s8E8DpCTD
	 +gg2XyRQrFOvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D1E3C5320E
	for <ddprobe@lists.linux.dev>; Sun, 25 Aug 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172463015360.7524.18213432163083055000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e0f1c08c349bc8279f7acca2aba695b4f7e8842c2b6215d25c4db3b18b3cdf7
Date: Sun, 25 Aug 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724630153
