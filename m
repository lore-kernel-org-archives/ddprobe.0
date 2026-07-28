Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B93C17BED0
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785198634; cv=none; b=V8wsy4Q3xJG528FKwtAXwmaM012pWrpoy9SMf4WLapHC1ra4cDNt22sb3a0LlSQYpMJn5ego68JPiq1WxyAv+ESqY2aKJr8sZJkVSATYDm85OI+mHIdS/KofVQlaPDnOb0WX+kCUqhapPSjqBlRxxbot9ygkQosXpLtGSl4clOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785198634; c=relaxed/simple;
	bh=L9LrWKawILbqSQagBfWRiSGyOMcJJTzLD+LhKJbTpFI=;
	h=To:Subject:From:Message-Id:Date; b=BIaqLaJlLEDUHvmxxWNa1y1JBgfVhL7jzaEX3A2O7IG1klH0nH176Khoey9nfvoBzOk9rkhzWMk2HbdrMo+RqTs0hLROcu5ppj6mPeQkw+hv6lDm69xLtBhD1E8OgNoMjH6KzXvTEdVUnsC/IZWqs4J92l6wVtPfzgh8uf18Iys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GGQux3SS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GGQux3SS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3A93C19425
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785198633;
	bh=L9LrWKawILbqSQagBfWRiSGyOMcJJTzLD+LhKJbTpFI=;
	h=To:Subject:From:Date:From;
	b=GGQux3SSgwoGzgDAxFKcW+su5VSOqFMyQRNWBG9FO6Zidu1ZnO8RPEmOJ83x5ZfAd
	 erOLn29YtfgfeYEtBt6KC0AWv1GdJgZj7t2+URQeZngcNV4vssYGnl2U48bhGznaaS
	 Wew/pcZKJ2Nu/bMf4TsYrWt+oGIU278+3lieu1Yd9xDQo83oWop+UhRa2VNIqJYVH5
	 LXes60QDE5zb3rixDF2S5/qh+QgBFMzn0IK+dFftqNy33H9czphX6yrDTeV9uhAH2Y
	 ymfsFWvh9AJTGSSGCoJ9MFgV/+sX6j2yTgqkNuiwcSqQdKOCFKxDhI4SyvQ3awfLWS
	 zBbsM/3KY4bNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0DE9C531C9
	for <ddprobe@lists.linux.dev>; Tue, 28 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519863369.1885.11475128687971936448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc07615bf62c2a8426ec8bfc12368d7eed63623ef54c5efd46f5de21a79c1e84
Date: Tue, 28 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785198633
