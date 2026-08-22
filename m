Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59CD63093CF
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787424034; cv=none; b=BE5ER7fOVY7OKKyxvSRocdxUsXYs7G0u4AdN4deKtqCZQGK189B5GuV90bHNMvzH2ylXAFq4P0DlJfrpS4EJxTQn74Ljid82c1ti7u7u1j163Kvponk2RNw94MpIgqu6ZcRLtCJsMXeKv0ANXptjJCBYVFvwRy/S+dyQYIsDATQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787424034; c=relaxed/simple;
	bh=QYjivhJc5ILDEZGGez7GngZTJCvYhTKuX9p8S23Ruqc=;
	h=To:Subject:From:Message-Id:Date; b=KyESllbDlEtDJbvRL6d9MQpisOeqe3PeUjzcpPSXmI9kPgQmkzpefn5gKANHbalGs7xasIABMAhv8Cvb23+rrFT6FLXMxkOshK7UmUXuXxOmRr9TegrMcp7tV5Fim/g0HgctzaDRPekn3BUoYkaaFU2uQvBDnL4coz6nJRyzues=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xcbparja; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xcbparja"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF384C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787424033;
	bh=QYjivhJc5ILDEZGGez7GngZTJCvYhTKuX9p8S23Ruqc=;
	h=To:Subject:From:Date:From;
	b=XcbparjaBpLOTOfHfNIMre5h3BayKmVI+dwJpQV6jHsdBZiK0BXCcYrB+zbGzMLd6
	 qZXCnuYxE20W7eTyAdgY7Jb1CnpB9Vi7I+e8MLiHGERyvbZ8jJOXp9aQ1iCPQs8G+Q
	 N0U4Gnhk5Cdfdh16+lG4ksoPBBiSgAUawFoazjzq1itYxMiTl5mWl4QoxkWVutXiF6
	 2OFiUOXTbIH4EYj5br/2qHswEXskArtXwjIjxC8gAlO2CjCw6XYolulEAb5qtmG0fP
	 8mLMqbllT0yr7oQKrQv1tpSut9tqEV9GElu/SvTc0FITGglOMgzZ5K0t2uwVe/3CNH
	 88R26sFXw7cNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B98E3C5DF97
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178742403371.19128.6456348459861598437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b2b842fd006597ac8bf230a4ca1bb0b39d5aa5ab43681ac8342fc8b41eea20c
Date: Sat, 22 Aug 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787424033
