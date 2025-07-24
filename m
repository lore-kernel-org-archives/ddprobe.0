Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38399EEC8
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753328994; cv=none; b=OgBTsZrBjv5b9H5rK4oxbEjJfzubx0TwtP3rfI+OC0IgZ6z2zEEbHpLWUoIMEvNQNx9TF41mZpzzXId0l804CFkJD3MN+p3QFXVwBG5+vYI2AekFmA0Dnqoc5yz2ajTqkadlD8V10EfHH0hQ5pNKbqAa7euDmXddytZnHhIriWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753328994; c=relaxed/simple;
	bh=QYefrcUy+qJ4AxbUIpfS9Lqo58haLJj9rNIMCr7LZNs=;
	h=To:Subject:From:Message-Id:Date; b=KTFnLCyhueA2TnYEteZmfuW5bq1gKvMq5vI6W9iNYhf1uUy/dr1oCWtohyaOEfw6d9Sam8JWI726yqHt/2051rsGxEMnoJAd8insJbqTsoVg8TwSU64oE+IhddBhcC4mP6E1qZb9DXQc92xXUBQwNvUNlFwC0OW+n8x6Vsn6CcQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cAtJjzzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cAtJjzzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A115EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753328993;
	bh=QYefrcUy+qJ4AxbUIpfS9Lqo58haLJj9rNIMCr7LZNs=;
	h=To:Subject:From:Date:From;
	b=cAtJjzzW6k5QPGyHyf8ll1EJMieyiXclUtV6HPwl2oaiqwYvM7pWykx5f++RJv7RQ
	 zJ7mXw1pDaKvTXbgflp/Ufkcd6+ojEQ04URwBB/+Ovb0xtyP8CQlOgvR1Onyd4j5I0
	 GZJ6elaaW9fi9FYi/Nk81O4dCzdcnGtGs7Jv+n8a9zhFOnhIxK7C2MX8QLVjSS/jEM
	 BaiIx0+EDkm2kBuj2mD2fjiC2RrcrpzG2x8BL1DF3DCiE6xFnITb1//kVHyW8T+Ey/
	 ZCVWXwVX4T2AD346JShYx3ZQsSzB+AOYpKHiJgjNQUUv2nXi891nutu5RWOxOUu86C
	 C2SANDMdfeNpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F540C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332899357.21226.17006612018361476770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6949b120e499d134ec5fbe7397b2ef39f707eb92a0c15a2d374345bd95cd404
Date: Thu, 24 Jul 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753328993
