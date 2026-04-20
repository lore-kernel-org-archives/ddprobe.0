Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F95BBA34
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776647254; cv=none; b=SplQ4mczz7OR/h/VJjEQonONHnjpgqKN1aFWLWq38Mimn6BInbVVjVv/S5j0o0a0+0tKUt15v9CImv6k5Fc8ZotNU3LlW0C/wHF/Saajnbmp1QBSPsVEgvC1PgYAToT0pxXNvqPyzO6f4IklYPnnielwnfaynB+9KOGFE48zqCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776647254; c=relaxed/simple;
	bh=N/Rf2J2k2CQ4VQ721LaQJAKKmY4ljh5rZ06PMO/Ygek=;
	h=To:Subject:From:Message-Id:Date; b=N8f0gMXHpMgshpzJ6lVeIkQ09e3Lc8yjf6saVn2rPxcceYFeHHm1GyTMyGAhvVzD4LspesIa7gDByxTVswQSFaoXMBYziw4JOUZ1cdb3QAULRMEJAj4OChd2artkMdZ5LB0Ckt9lwfNTECryHsjs8tQZNHBXQUfCYZMIqmh8Vew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e2Bkf1zk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e2Bkf1zk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCA0C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776647253;
	bh=N/Rf2J2k2CQ4VQ721LaQJAKKmY4ljh5rZ06PMO/Ygek=;
	h=To:Subject:From:Date:From;
	b=e2Bkf1zkrFJVe+Q6j/3lF9VtI1FDugNEdcHOMcIUhQYfciT+zmF/jmzraZfJhDD2T
	 YKNZ1tAIXmfDiLwDOD/o3ybBWXG0chw67U24CDQ1uIjiYG7dFj+LoafX43PMByqopO
	 K9LOjdxGZ6cdNtQJjXLX4lr2IHHCIpxf6jUd3ns+C+9ZTH4z14VFAVe4zYcWagoJUJ
	 pm85F+vnt5j2Qdia36DpiKjsKrvbcqzdzcX2d1GOflwbd+AKkMezijlOeff0d6dvTI
	 D/e7fTSrNhLtfooFWj6oTF432aF3C7QMcQXN01x7WCWVKPFq2OBQIIhYzfg+0XqYRu
	 R6DRL9Qf8QBGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA161EA71B3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 01:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177664725368.12471.378931647443164980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51364721b15d8e19bccae67032fac186d72ac828931bb1a36a69c2bb1139542f
Date: Mon, 20 Apr 2026 01:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776647253
