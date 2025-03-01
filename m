Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369AB1CDFA6
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740829134; cv=none; b=N0qR42S56AKk0nJMEb4LTUqVFrN2kJbF9geVD28eO3VZ1Hv0GaeoqBgNfHTso/cM4emfJiZ5+kR0KfuqISgta93NGZqkOO+bor/2Q0hVwAYEQhrsbt6OsBfbc8WXQvbndDXVq4WKc+N4ygZPgeGJUy5Y69By0BDkadyYGbL9RlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740829134; c=relaxed/simple;
	bh=2PTZjFRjbN+CcwHySPUDMl5OPmf+0RC6m+DSYGwtQ6k=;
	h=To:Subject:From:Message-Id:Date; b=bCLsFjGKWNgvfYhuuDGrjmJnYwrpUIStjfcegh3kQlXsAyP7RqpBiHB9siOP1ry+738yxUCuMJpTVZQfneWAXgR5xmuSi4ipneJ2POYq67ExtWlv2F/ad2PEHZT9BCF+wt5RqAxXUYV7HSTaVpzxcI4xrebkrSztdJaN3WCNFgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G4ItCPP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G4ItCPP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4240C4CEE5
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740829133;
	bh=2PTZjFRjbN+CcwHySPUDMl5OPmf+0RC6m+DSYGwtQ6k=;
	h=To:Subject:From:Date:From;
	b=G4ItCPP0/DVCfhQ+CE57SEU5f7LvYH904TxPnPcstbcLNyQaZ2RYlnVzS3m0G9st0
	 OfTNiwpiRaolJAsmth2s1TQAKZUWZPpM9x8InClLi59V8OpPtu8c3xPfeF4EBZco+w
	 LI7sCE90VeqpnFRudZ1KeOESxYyj0ZL0SriMy09kpJDBw0bPUs5tP+wBdSqcjwIVF+
	 8HYxwfFyUfkhI+S26ROzVeMds2DXFYF3DFcnZthgD0mCeh77ZdoMeRGGehAjdge5L1
	 OuY54O2rTkCoch+1vKy2EzX8IKLTxw7IOfI8mRln4WYnDasGzJXASoaKVZTo0XUcGI
	 2M61XhSWsNb9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B1CC021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082913358.10456.5020129073159257453.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1c984b150bdf6c26d28bcf87410e6a586f1da8146ee5a7373b9301cc6148861
Date: Sat, 01 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740829133
