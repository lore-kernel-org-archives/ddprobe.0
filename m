Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B57023D287
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752089394; cv=none; b=id/f8uiqsnNe8HI8eFpFwyW33ShWajOUILEVbV0Lf5Gf1OJ9QxMkwbKHR9OfFv1HFnAA9wphKQeeuxbpyLha5FYVBsdn8J0tjgFTVz4EBsQtREF+TKtlTVC64Fe/LWa/Q2dVfM4KmOqYH//UXfvvNRiH1YGzB56m4M4M3tK1frA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752089394; c=relaxed/simple;
	bh=HITQ2HDFA/TEVoPWVBIUXLem33wPm/C0TVpKXGWnlhA=;
	h=To:Subject:From:Message-Id:Date; b=hZ42hw25nHmU6w8X5BfgQE54aMOIb3drQmHvI19FJngxG2oxduGG8yO3Jr60y5xQ6JLqDyVhKr1XqNujmLsvQ5gLSlow7dUocsEleyi0GoEpUZSWfzEnFrX+QcVJ15fw/WZeeIToNdPHIYjMhQc8jpwYJ/lX8z8ucAdKKEKeaTI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBJsNfQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBJsNfQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B038C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752089393;
	bh=HITQ2HDFA/TEVoPWVBIUXLem33wPm/C0TVpKXGWnlhA=;
	h=To:Subject:From:Date:From;
	b=vBJsNfQIi04jLCedDVoscmz5azmpwx5hcXcIKyQn2QDWzOtZh8xRCsg1NyEAnb5FM
	 s6H3xYQOpc88R3VFDKHq5xLctQoTHQ7bJ5o2UtlaSOCCXVT9fCO3gLJ1svuLKdJ82y
	 j7vOOx5Wu8iNf1KyqHeDiOG20gCUWpPsx309j7OjZRYzGM1HX1MG08fFO+dFdS1WhC
	 rybRqbYU/fbG8sIsk+mDdVsRiikXzcQShdq9J8891kAZou+O3Zj1MVDdXjoXoN33oA
	 sl3pqnddQqBuOkS/P6LP2lEffZRLL3Df24yIIRsOjgNM7m77+4mmNtPAev458v67UN
	 dek7hzhG7AOHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA16C83F14
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208939357.11318.14459464518411373018.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44a215534a00ea24f48aac2643f624a7125e2ec274ea4cb5ad52f5be723c0f36
Date: Wed, 09 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752089393
