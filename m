Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BC2F830749E
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755272993; cv=none; b=rEfDNBnpj82v0R8l+FgTkxsQqj7sWhbe9iDBaERPULe4OcgFBOxGeIh6+74AAt17LuupWunu1mBsSOsBBBBdO6AAA8t5s9HjhxEAX965KQG4zgs7IgW3xYwp1qKOkd6Bff5kajR1pduJMr+C/mNz7Z4Y6C6eMkpDUbZad0VojQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755272993; c=relaxed/simple;
	bh=r4hVTUlxOOSgwyXXRZ0gU1BsXKHsKHcddhuyFAWOgH8=;
	h=To:Subject:From:Message-Id:Date; b=kD6j5q7FYUKw6K571bGw75h2ei4UQbmddATU5fLpqxrzUARfkx9fRHwCyUuKcaIO6hiZeglbSu90ufzDdqXl+K1cYnDcnpuNFXtP/gwTII3zmWCLZBEXPSKXs076VNx66FpJOPZFFuWBGlH6ucUR6lrWSSi+wq/tASt32YzS2jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KR0X6d74; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KR0X6d74"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE90C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755272993;
	bh=r4hVTUlxOOSgwyXXRZ0gU1BsXKHsKHcddhuyFAWOgH8=;
	h=To:Subject:From:Date:From;
	b=KR0X6d74fvZmkWjGi8zcWvuUQVd0W1Yeg9qGjc4Lwmteqskz8oxDunK/YskuBeGr1
	 3HGWsaEve+U9ur4HgE1aUB92U2UNiUX4E4mGZ3R++qg8vSYS9jVlyCrxri4UhFYfI6
	 gpYidIthH0wVHPAShTgHdPuUitMPjvjGaP1LGkX1xgHxnBKiP7awJ897nY5B0k3WDT
	 DBd9BisUCBO8+TlFtei/u6z7JVUdjjDNynbkCT21/pQTu+qXPeFlhP9zBF0NDmvwTb
	 0PV36G7aPRSNc95nP0ls1p2yazb14zN/0N2HKxaMDKfl4EDf28bMvvampldGrJzT3o
	 5ayGlAfdLU+dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9F7CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175527299357.6787.3166689709543460331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4403c301a90ff172e0d7dac59561e227dd5f35b41996d1992c9e26a5327631fb
Date: Fri, 15 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755272993
