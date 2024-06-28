Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456E8125AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719558863; cv=none; b=qSrcadXwH8BUNg+S3BnI1+vxhsbJACMe66RHLkfHJ77r60xAcKKaR1mOsPcsmtYVK84ebwXg8B6WP2H3OL1k+UxbTHRFOcWqmkKTf7QjvAFT4TI6A4lXFCsVzlkYFcvFqYCbvEk25fX8XASqUTcijMZyEWOuNBRfVgcUdZR0e3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719558863; c=relaxed/simple;
	bh=PRM4+NCw5eZfby/phESAv4CFc31aBGXp39acYLAWLGs=;
	h=To:Subject:From:Message-Id:Date; b=AJVJAcqHpiOl/SU6Dstsiye6U425+3YDQpbQgqMuRBxvhu1Hv016Imevn4mfJfSDN923ZVqLA7oaJNVpegc53pAfo7+SQbnWYxAqWKdqjDV5ZN4a8OLq0oOUK54IhpNzJebS9mEKKVarj6MR8uDuTLyGhy1LnOg0HZwBf1qkR4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xk0BSRgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xk0BSRgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE0CBC2BD10
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719558862;
	bh=PRM4+NCw5eZfby/phESAv4CFc31aBGXp39acYLAWLGs=;
	h=To:Subject:From:Date:From;
	b=Xk0BSRgyTxNH9CqEV0LHtvWLrnTSCNCx8guU3nuz88XyI5x20D/Y77fNUg5E3bvhO
	 7yUQ6uM4CiQ0ihyXAuJFmwWjtMVfHdJ1uL3i25o9j0X/8rbchMPqGjQdJAkBq+4PeB
	 jEqcWsXknRRQn3DFaZY3YvnSh7n8gFF9b4rZF51iLjK43ofl4SMSqvEQwtvZ75VM3D
	 TvLyrZkYGHjvonpefoN11KjDa2ABBhkMdpWXF5qwvuMTrB0PT6VWJ+6dLVpt1CZqdX
	 lNX/lFVzMbB8qdJu8tRgHKnKmEQ0E4qIXnmVVMRlx7rLqxZ5gveIoAOSuyR1AFs4Oo
	 iIvgIzYH99o/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC09EC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 07:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171955886276.32371.408973594326689218.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c88f62ed84d36630f9e3d49e4988bd1846754ec62e51389fb66c7f0db03dd733
Date: Fri, 28 Jun 2024 07:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719558862
