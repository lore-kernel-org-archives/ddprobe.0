Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EF87389DE8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783511314; cv=none; b=cvYSA2oFSlvT24gRYw5XoOKtaFM7lxY3WhNFOjzi0bHM+mq0NTdx4acyxSpu7qW2LlN5dLGL4psezbGkcnU1CaJs8qusxBB0AHZDNhVzeIVb97F72J86tpipqs3IN1kSS+iXGGksCRKcpRVMdHqmmyglFmS2114jw1RMTv4gS9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783511314; c=relaxed/simple;
	bh=CtWLhRn4mtOBUdLemOzr9wLFA+pKZ6817KlUyPEeRPU=;
	h=To:Subject:From:Message-Id:Date; b=tdsHt3LM+B9btcTVDWw4Y4LYlWmz1gdaIq+0NS4zELCfEabLge2qgi4cNhdjmGQacXT63/oJKT3XXp0VcTo1Nn8CUIW/z5pD6G6A/pAxa2pgViUK7ai+Xc6f6Ec4pFY6cUUVFpcAF42eoZCgFz7BoDggmkoAZc890eoKHWEJJuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AwCphPov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AwCphPov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2AEC2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783511313;
	bh=CtWLhRn4mtOBUdLemOzr9wLFA+pKZ6817KlUyPEeRPU=;
	h=To:Subject:From:Date:From;
	b=AwCphPovDdZbh4xO+vpccSE6sREf0b80wpxXmmSCGvFGJFkfnqrHUaJeBZhIztRb3
	 sGhUN+gBPD4h3+CFa0mxKKzz+rFveO6Ms9w9FtltJrs4aZP0kMxRWXJaMWfFv20o2q
	 CgNvkDZBLmHDttH6G9nbQgLEsbeylCGe6fh9KsueY74z++3kuVGkyXGPBBxUS4Bo62
	 5xfHi1q5hM+03I2lRE9QWQ2CN3cBT3jnw7Hp6//9eVr96Xl83WIgvRzd45uK0iokpr
	 FcXmy8mc5w/E6S8RPUgeTEYfR0rpn80LhRlyrGMjrwOgQDdrIh9Ttle4i0s4zcxWso
	 09K8lzMmyDA4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EF0C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178351131373.3689.5298158262820901236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8890513d6928b6d45f4d13f0d05a5d05232a6b0a707dd932339b5932580baf97
Date: Wed, 08 Jul 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783511313
