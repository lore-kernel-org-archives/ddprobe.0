Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91D9431E833
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780048954; cv=none; b=O6LLiOp3IXQ+svd7+lgNyLP1p6IAx9TB2CjvYNpNgt1HuwSDtQ0d4uu9Zpm5xZlbBgIRUWQyOZ/y4oRS3b5USsUVklNvpQxC8pX4RJXOtPMr7OR/pYLIPj/gu1Q9Iyz5l073d9vHUAeXTDUckA//1aEjlMit8CSfbuMCuPFwcNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780048954; c=relaxed/simple;
	bh=Z8mE8m+N2JHxQKAObe7LXt+CRalAMAr15sDguZEXR1A=;
	h=To:Subject:From:Message-Id:Date; b=lP9aB++zXtjLbF8RCppQjSc7BqX1Vcz95zFKm5H3YsS55E06uvnTEwbMIYeJCQEUEku/+U7OrkYEbqoGptM6rF4dfLGUubYrcYthhY3Eq6tbcJPAN9x9mYjwpMlDvuy74b5T/xwKLFw1kQVSjD777F2yJ98al/KJnAUXsVGbBLU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppNB3KEq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppNB3KEq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2959AC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:02:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780048954;
	bh=Z8mE8m+N2JHxQKAObe7LXt+CRalAMAr15sDguZEXR1A=;
	h=To:Subject:From:Date:From;
	b=ppNB3KEqi7Up2U55Q5AcDvfP5fx4OYKWnlwXDQPsWV4r5KylqSSoxaOUa72fTdn/h
	 32SSfKWNjCuEubtp43pm7k5yQ9Q2kFVxbzZcUPZl7/Jh9f0DBB6ouqLq+VFVFK3Hai
	 dmGgsO6e7iAF6xkyMbb/c8h8dimNHqpdfGNg/54P2i6v+D+Y46+pUjeI0x2p3TwRpM
	 DgSiD4Cc/SGyXZrjfdFjCu0Vz7gbC9tpp3W264eSOkvLA/Kqb6KCsm7nFjHi95WUqX
	 +rw8OVbSP/87+Sv8JYG6XE0RknazuXxkMNRb1u4K38xVnwapoS/JuHdeO6/BUlbCZO
	 ziV2ZnNBvOj2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 00901CD6E45
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 10:02:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178004895398.17821.13747120897459270121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0316e515f05fa05b4398e626e2331f2108456dc710431085c2a6290ccbb70c55
Date: Fri, 29 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780048953
