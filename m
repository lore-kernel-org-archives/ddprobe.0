Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9AB33F9
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759119594; cv=none; b=C/2qigw0fvbWkGcA1mklpcTEEtpxsolVm6DIjFEV6mOUOhDkclUT2pVBIbuIbg0/ZzNnieN502fg/4a3OUCXsN9eYmBav4XGeAYFlB1CwW4zpZhTYssRKzVP/FfFYAH/K0zaX0IveIFm0dDNP212e70KPVLSU6ywlgRwAZ63J7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759119594; c=relaxed/simple;
	bh=Z+MiCrI7BFzM4G6iEZhUDHL1utm/jrwV47r3AEvswPs=;
	h=To:Subject:From:Message-Id:Date; b=KhkZ79XLk69+2QahTqZSguZYnwCZ7XwW3lPbo9+62cRF7s/XSBvJC55Q5GbxbjSMWR3w251qVzLnx9E9AspyQHeeKrjYQV7G6DXSpmIkKUWeVQLxfOHOMsKhZx1xq0rBWdfKRFottQp0flKDoREApoa+vNT1BvOdd2wFhKs0/+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B571obzP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B571obzP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C401EC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759119593;
	bh=Z+MiCrI7BFzM4G6iEZhUDHL1utm/jrwV47r3AEvswPs=;
	h=To:Subject:From:Date:From;
	b=B571obzP4fydZQEuwAAp/RmXDUCacPgZ/eOTDn8/SzBXsS+GjiP2eD/hS4+pGriYt
	 Hxo9eJa7jy7Or1OtMr4ttEk7bZeV+RIQAhzN0/hNrxbcuZyo9cJzy+B9/9t1MsKwj3
	 8EI0ycugOpR6efsH+Qi1r50lE8kgjc8/5mOwb/WDEW/WRYxcdxPaQEUPJSY7pG0iM/
	 pYtqREpWZzAf8XmVJsMh0sTwq1XbkUxEwky6WUU2GWVzQU9IoCj24aYHJcxmhcg3fK
	 ojU5jkBs1gz9fVAyb5VmPuFEWjzVPcH9eVDSlnXJpPFe9kTYrJxIoamA2fB5omay6t
	 OWdpuCk8irqxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A228BCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175911959364.9066.5307408452001365772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b83175bb59f081d9e9c068a7dfef965c2a9cc15352193b04d1c833e6ade8d71b
Date: Mon, 29 Sep 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759119593
