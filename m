Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E8532DB78C
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791849634; cv=none; b=HuDQeP08IWE7JqZdBTlEvSNsmto9fX+ERGHpCArIQ1w7ZKFNfAI9l4NZnyNRlzvPzkMaFvQUbdGaxtZ8Ximjiht3CxXMvzufpBoH6viL8jsvmsjjWz0aSP9mRyAFOjx46N7/VT9vVcXnvR4vxyKSDautt+f03oL4nN/bUdpDJhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791849634; c=relaxed/simple;
	bh=HT/iTnhz+lyK2xJgSKeYu2HSKTOdoB30+NlXUoLQyys=;
	h=To:Subject:From:Message-Id:Date; b=V0FEUG56DtRdZAtHpjlH4GGDbdgeoOL3a1fIdvBcRwPO+FVEV/WFq/DDmZYzfNu3x46SlGWf8IfpEO9+canx/3gS+JxOrr7g5asTwxc+Gpdt9PADT9K+zgSEToQK0jrqktVQuYttknETdOTrabNC8EPYBYs2m+4akeRsy8YIjVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP5f+VIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP5f+VIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D97BCC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791849633;
	bh=HT/iTnhz+lyK2xJgSKeYu2HSKTOdoB30+NlXUoLQyys=;
	h=To:Subject:From:Date:From;
	b=CP5f+VIHDO90jDIQSmM+ipjTCwzI+2IeLMmD6gpNFSxXvkvWbdkUtVUDmh7X6FLxh
	 haHic1njcXKaNqxnzUMNTvh2Yoi5n+v3rE4SohtOozZrAiWgFSMEV6/nXppvJEJqvi
	 WNumyfDFovF9/514yeP7AX7SJkRQDFgOPr+8ctWi66JpkUxb9iTvgK/3hYWRV7OScZ
	 4+yPKKLicRJSAeFif9guvdlO/GOgMaRfd/Yrp/xbYOVpjYhWAzaAGideYoRjl28PVS
	 93gDk7zey6/rM5Dx7HnEA7k42ofiwX+2qMXOmMoN11sjuGfqiBAYqSgHzNQRPTzxxx
	 wnUTR0+1dmT3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B361ACA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179184963370.6922.14063832497244550929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3ff9ffd7201d4aa84fc95a0ea75788b244b7ef17ac0ab0490d62869df2ce263
Date: Tue, 13 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791849633
