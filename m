Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66CD32C859
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719773663; cv=none; b=W3+SW0NI3hmq05oA5hDvjC41Ce5suc3zN0CQXgDDs06QQ8oIUDWbm9zyrrmQMK36pN9YocYZ4tW8IXPg1dVSgXo7v6fNnxc5CUAuIT72wp/fAaSfzU3WJQ3iiUEGpXrsAo4pTtgoB/wkcpAU73cTN5tfI6bjf7uT1t6q7odErso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719773663; c=relaxed/simple;
	bh=wirrLlmvCwZgTn57WNxx5wTuY2Y7Lc+Sy9BvKpxEX7s=;
	h=To:Subject:From:Message-Id:Date; b=L4jr2AiUO5jtlP8jX/qLi1ymZYOMADGWJvdC+yGMlhHtFmSh2UUIxy/TtNU+nIdEKVI4Znj/YseGrxRQOXw46fH1azDUP2mf/nHYpDRkV0TPZq4pHoGY/dQLrZdO6kOC5hZp5mg42xvteHr8hVTyKCXJ5TCCqnLs938CLhNaI90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YfRlxCK8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YfRlxCK8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D260DC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719773662;
	bh=wirrLlmvCwZgTn57WNxx5wTuY2Y7Lc+Sy9BvKpxEX7s=;
	h=To:Subject:From:Date:From;
	b=YfRlxCK8tb9yiKQGqK1QaUu+TOVIu8DRkjPvgqCZgZ1BStlo7E6anRjiZ3oDoUeWG
	 x2B8J7XAv8EB8XQxgUk92xRkqthhAmiSHSasSEW1uF0xarWZipao7pBKXSCTolJulL
	 ZQGStazGbAeE7QfBLdilM7x8De7hRRy9JnV+mBEo7qmkLa0J0S1z6eMTuDVwKEGNbH
	 SRPJi5IrDE4YMuyneFj8cBjwc3jN0h6613TNFmluSdcRnutdi453o5iaCk5zdhnxS9
	 SCqJEVHQ1fiCQUwZJHhuYvOyAmCFpG/JBvtK1sm+A4gFaqDuBNbAit+WnHi9aGZDTo
	 VgkeYTldZIk+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BAF19C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 18:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171977366275.29279.2531838989449753088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676527ff0f596cd545d084bae94c4c90b74821cea61af015db8dd32386c35f24
Date: Sun, 30 Jun 2024 18:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719773662
