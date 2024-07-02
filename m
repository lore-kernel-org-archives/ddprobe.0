Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 562B339847
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719893723; cv=none; b=gZtuhQ7d6LBaodoWuc7zQ9Lo28gssZh59fTuEtXmge/F7+2nCp8gxmHBlryrdqz3uxwAe72aPonqSgi3lujGy2K2ethIL38EPxK2t2VjNIDP4vij4hAEIGIeBVLXfpt4F40xTWfvof07ZXs51gJTIK9mH6K85OwENG8shehJYIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719893723; c=relaxed/simple;
	bh=RdprNc+AvrBkVkn1h4Mc2q7Of+1gNLFLyowJ18ivGf8=;
	h=To:Subject:From:Message-Id:Date; b=AEdGUINoMKsn5ETme7h8bQKE54PYBgOTrlYB53sxO6hAwC/6zDrq7VN5r5oplYvftk2ZHeUvk2Wu/vKIsY6nwN3SsurkLYKM1JlLl2xTcimzRoxrrslpZU3VbTeOy98aEyJVl2fskEVNjZxBpuvCv0PYIjz5kfecxOt016gznvs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t1T6lav+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t1T6lav+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBC39C4AF07
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719893722;
	bh=RdprNc+AvrBkVkn1h4Mc2q7Of+1gNLFLyowJ18ivGf8=;
	h=To:Subject:From:Date:From;
	b=t1T6lav+0UNeT1N8ndGwapN8SfolwCbFlisw39qB0fRgOdfTC1PNBVF8UW6WKCo1O
	 c/OIhJ+0SE8KfvqvJuzZ03ghPqMJzlPCls5bx31IONuLYwVIhupnLzGHThbFiXk4Ly
	 olgL2nL0H1C2EuaHuY4J4jT4ClX313VgXSCjzbgYrYCqAB/kxUDCg52PQf0fh1v6rp
	 Hc40/SMr4DQhlbJuSpxRHZjDv6+dYCL1jqVHcMphQ01oRtECj57K46NRbob9G67N9s
	 9BkDpezkmcWQJgSdA6Go6ttqMKJZKJESJmBNgFZ90FQGQo1qM6odOwXnuSCyesQqp8
	 qEaz5G/+D0Lqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C61ABC3064D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 04:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171989372277.14471.2002246876190641188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97c2a1ac91f7dc2aa3abbb7b1940ce49b6cfddde0aa4691c65b983446e5ec6bd
Date: Tue, 02 Jul 2024 04:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719893722
