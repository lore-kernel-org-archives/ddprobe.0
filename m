Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363691940A1
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766475234; cv=none; b=Bd9jPcxiwPGeCd0RliGm37H+4Vf7oDOw2qGHH/1EhRUoz5U3wNkBwJqfOYRCDR7SPfGA2c+u21r1tsTuvVWUza90XMZIGiEbGyqCzI+fAUfuR77ie6f1tnl3OyJ0SJu8YEr/5sAOKPR03Bc83dxwWqN32x/91HT7iKgAH+8bjGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766475234; c=relaxed/simple;
	bh=89TR55zAbgrvcKDX6nOpecdri1MQQ7LAe+iwMStbagI=;
	h=To:Subject:From:Message-Id:Date; b=u7OgbpgX6k1Zmw8lOvOFVY9LNOfHcSe7GJRn3G9mgdolEWuYvJm83tGjw1By1oDDHpJU51MPgY0OELkGE+S8o5Pi3iqIziFVUf+b2D54RDdJ/cwYQ7wdaLJCw3kGrisTC+QeY+DkGhYq4DuHyLgYdH1zHYUY8iqKRnl1PN96Hv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kXRI5Umx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kXRI5Umx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A660EC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766475233;
	bh=89TR55zAbgrvcKDX6nOpecdri1MQQ7LAe+iwMStbagI=;
	h=To:Subject:From:Date:From;
	b=kXRI5UmxyHgEAVC7U+CiK0yZLwcwuUiNzzoWYYkyldvaJSXAL6xc7ZRHOtq5X5rqL
	 sSXo7NTX9jwPklL2vfm+wU7j7LUkHKVszt2eSrS1c5/KM3maYMrLr6kKDmBX3sKtUr
	 TGi0QNImpwKMdpPO6lkv6qDV1dvjVqL70bP3feO9OBYvi54IfP2iE3zKCLClELq3Va
	 NN9gidGIgw4Kw+/LY9+gOQkYMsaSIv2K00bYwDWewztkgEvWPjxuN9DGp9E3gZCIRs
	 65XlgQHjRDjDuUeJyg3zOlmxV/LWYMmOYDuT7SkQ2kv2oXsGChLogkVkcTRd8HgxLW
	 5ONmUHoFC2xaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D84E6F063
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 07:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176647523357.25481.9043738954043164094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1994d537b6c5d9966b10ace631cb96f1bdf0c4ad47fcd366b4ce82e10ecfb5e
Date: Tue, 23 Dec 2025 07:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766475233
