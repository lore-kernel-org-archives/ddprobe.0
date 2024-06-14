Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6330113213E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718344103; cv=none; b=LBTd+ErXEqMSmqzOcsydnWvDk2hysC5Zb8KCU4X71QDuwv9J1J6xZPhN/FNQNzboZMVsGktbY4yyizneyVub0KOGCAyv5HH4IfjpwZ6lF7vxKznCGGgDnTjUKdU/VuVX64tEqn/VJD5vvdv1+oxNEZL2WN/deNz6R+Eb90ADNIA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718344103; c=relaxed/simple;
	bh=jUf/9cRqdn8NFQGYkHsYqwfQO9S2JX9WsfMbHlkbO5A=;
	h=To:Subject:From:Message-Id:Date; b=qyvzmQN0DyQOb3LvxHLcXxoy/BKcId+r7XxkqBMXj0wNuQX4GnP892W5bT7dmsB4/MZnjSAyLcsReJbmWxsnG/ZYtDm3vH85KmJ0xr4qHYFMDU2T0vCz06ufQJ55lM8TdPTG6U57B+Yarzjck4VpFS4qfvdeGUgM/BT6p8/xC18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiFyap/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiFyap/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97B1C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718344102;
	bh=jUf/9cRqdn8NFQGYkHsYqwfQO9S2JX9WsfMbHlkbO5A=;
	h=To:Subject:From:Date:From;
	b=EiFyap/tn5bLsKXvddzPCdJxD4xn1/1GWs13TQpkSje/FuuXroTEXBiFt3h7jwTaV
	 eL7YBGetBFrFgtOjNY97s/j26K1LFxO+WJqOMUPQ3lCmUhvgZQEGU03j6Uh0d4R/wr
	 nBZ7bAsC25Bl3qZXyxDmBRzJdwfHb1MD0fuUw24V9dqQGFSKNOh9c6dlTtju8PRSn3
	 SFGZ8+G/dkS7pAuJeR6Tu67QRui1W0AjGQEUeTKCTzFvAVPfC3kcJ/L89pMMlLvtNd
	 1JS9WjQ0F7K8FtmAN8Ej6Gcu8czJRC/qYpU1vOJWs2Ui9tv9Y7VJQjDxE7IDV234Mb
	 FJL3hXGw0+2xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C49A8C27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 05:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171834410279.17928.6047744619124086897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d21e8efdc755af962bae5edb91de89c0a86cc042eff1dfc97ef94402bbed6638
Date: Fri, 14 Jun 2024 05:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718344102
