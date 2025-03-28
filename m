Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3026C1E1E11
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743198594; cv=none; b=GmKxrM5DjsQWDaq3GHgHS6qyMJyNalgAulQAHPZpo+mFlnYZfkIm6R0cWuyHkY127iGUMLcFOsWh6z7vQgzf4OjtccE1J6lMeSqKCDq38a73lD79Q1uAM/CDmJ1nUKjSSggppjZvzq4uEO5eWZEJb9o3cRf/07Xqw7Y3OmNnkHU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743198594; c=relaxed/simple;
	bh=JrLnxalbfKJHqBv7l32G6RuzUoVThvVIagQUNr35/9M=;
	h=To:Subject:From:Message-Id:Date; b=hfJ9jxcfgzTegjDSjODevqsyXnFmBSM47cSqJpjeuXRC+b3vdiwcFuo9slpck1dhCWDZWDHWrrpiGiK3kAh0wyktX6BVL+4Je8/lFKpY8WWJ70LdnxN0UlVLW4mChgroagb1KiGUmPgyrd3yK2JZ4woRE+UAT8nFyjWWuCd7BFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjCOi8yG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjCOi8yG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B181BC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743198593;
	bh=JrLnxalbfKJHqBv7l32G6RuzUoVThvVIagQUNr35/9M=;
	h=To:Subject:From:Date:From;
	b=qjCOi8yGtdHzfo19H9isJa8+vMg76cxUsvDc5MjacDaSHsBxdN/piNmFH5Swtx/mR
	 igM0u+0b0V8T5HYRDz6vMhfuxiWtOUySALRHVpnSZLvyv5ExEVqBv5oVXEdoBNpV6L
	 a3rfCfzCtAlJ0rP/hoAAEBL0JMb3bDCGqWVwgo6vUDBv60+056LI6M5+IWEb+A94xQ
	 zsNw6GOFgUI/j3EA6xqoubIMgJp9K5HZifn/pm+M3CsRyHhadDiFbIV2G9eerCTSfd
	 /ehqp1XnYDZ6drXIa4wSBuH+9XxPy14OrfVqYhz7F4C3EyonhHpqaXwmxbG3i8V6aZ
	 Oz7CMaw+aErjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC79C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174319859362.27575.8809465803934786967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e340bac5ae3afb64349269c700fa77d6da079d5dd16d462caff69dd9e6613127
Date: Fri, 28 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743198593
