Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D275337F
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 21:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726088754; cv=none; b=azdXK2a8fQbfaAH5VPKgbzVatAFK2tSCPkV4jnVZN38yo4JMlmZ34c6RS0TaqJ+vbsGGXjrpENwnTsTlkwl1GT7yDwT4CjD8imRF8N9ShIwq1xjkkBvo8Y/E3ISPUozysoFVBpMDR6x3oLJfxGxiRfaM+wq8JJ+UI83oZbtQUXg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726088754; c=relaxed/simple;
	bh=wYxos4r1AiraPL4cYrFX+9tiqUQQbTY4sYamYML+V0k=;
	h=To:Subject:From:Message-Id:Date; b=ZaUYzrQFmk/1Z3O8qJUA7+Tn2KMZo6u64zClea+DlHYYNn1tYLkRDQI8W9ySMXsSDJQGzd3JCpk7xLLi0XCevVj22+YlKFkyt5mTIIC7N4KmWhXZHl+xnFpitT9zMGYaIt3vBE70H/wEyyDzzWozLtwol0hRx63yxG/HdVhFgeI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTMVTRuv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTMVTRuv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1ABCC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 21:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726088753;
	bh=wYxos4r1AiraPL4cYrFX+9tiqUQQbTY4sYamYML+V0k=;
	h=To:Subject:From:Date:From;
	b=tTMVTRuv9xCqxqmRj6CPD5ONhtiS56VxD4eMpYD6Yy8KuVrAyRTTBZyhyFVWo+E19
	 xjtv0EswOXwM0ky6fDcmhbRg0pXUbjKIq5+YTtopCIeBS4708X8N0tdOM91Lx2E7Q/
	 2XXBDIudvkfnMWGHkKN5j80LCb9tDmYfZGhSNeJICz0kO5kGDsckXJu1D8jFayjxBA
	 QKzjGhJ/sZMoCkZ9OtP4oMJ7In9guup6q1gEoMNwB+E4gLH5WrUBZFA3+IGEIjd9ia
	 kCFF1gFCZwdBvH5jSEdBzsdGskI0bu6eiCGpNEq8l/XnwlO8dherMuXrGTYutcnVPZ
	 FTwCHx4QCHtdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BA2EE57DB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 21:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172608875358.25227.13298665079327816644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df7274acf24fd966f35f805238c37c61015fb45ea7c0bec609806bb6e9903263
Date: Wed, 11 Sep 2024 21:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726088753
