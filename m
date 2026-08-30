Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 98ACF3FFD
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788073834; cv=none; b=tgE6NGaXnL8yH6asEfhYzXdiP1rAvUjGNdRC8eULaU0YdlgiL5QTalP8Ao34EPShDg34Fo/oI1tcD/8YilZ9TkeG05lGV6iAUnhn0sh+0EkcPqDF4GzHshuPcs9m/oy9Z7OqrxdXJhRDtSkAUElmhnKN6ZscQDhG9mrjqn4ewSE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788073834; c=relaxed/simple;
	bh=o9BGIEQNP56J6l7VrT0LM+lNZydmfIHjKgUPdWywgQ8=;
	h=To:Subject:From:Message-Id:Date; b=ls2sjHY6rgT3oQDmIaQRRNUALEyH61Q218/cRH/Rgzpqajhzi6Lm69TJ6+iEyKrFbb2aesQfNgBddv1lYxwOwpfNHPlEBS99QNtfwBuy2FD4tNK7Zdn0b5QZUIgkW5q/wllLXvhmEJW2fGPeoH7P4/q7NIRA/kU5yATMoLdZbPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EO4KBcEY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EO4KBcEY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD973C2BCF4
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788073833;
	bh=o9BGIEQNP56J6l7VrT0LM+lNZydmfIHjKgUPdWywgQ8=;
	h=To:Subject:From:Date:From;
	b=EO4KBcEYqg90jMAFpnl7UMeX2Ig6SOW3mmNaVoBdAzC0AzFe3bX09dnmt5IEM0w1x
	 yHkDNvsBBSU9pgmln4d9enDQJPKWP1L9rfI3V4k6ZiOaAgDgUPJT/SCziQD7I5ImQw
	 EHzr9a6YxfES/w+61D9zNRRAJRxHwlhQenhU2aWEXn8JERZj37sXm6Qzw1+5jE+mVt
	 biq6u9z1GuI47HxoSs2B3D9iSqlmEi0EK+ERHn3Ln1BN0/TkX/tyvS4trW4FMuBttE
	 cTYXp5BUkG3GbgzXCFIWBnlkhy8udZ/o7J8M/mMP6Il9d1SlfQkdbZhcrloFkZJQM4
	 Zni0IxEDRY7vg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA912C61DB9
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178807383368.29913.9536115890986814759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f31fb16c466c05eccdedd3cc667fa68220447b9329a089ad618301b960bb65f6
Date: Sun, 30 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788073833
