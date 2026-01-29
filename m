Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB024261B80
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769700833; cv=none; b=NwdhBWGQ0Lqm0+FKe07lfTmGbrMcmQyHNDZ0lDnOP5H+Oc2d5ny0ONnKwelsyX940sUgM56Px4kDNhgKJ/mBBFbhPDB3VJsm40TfR6eC16oHz8Mm3ZIPE/0DGpoMaQkbgLrXvue8YL0dssMqbVCudDGq8zwQNGsuVQyvIcHNaYo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769700833; c=relaxed/simple;
	bh=kvvmB5X6Mk+wvXhfH9IUnZlYpBrDkj/eQBtjLYYNqts=;
	h=To:Subject:From:Message-Id:Date; b=B3JPwFPF3gTUOpdQ0jkAUIIEQ060vdHQdIMhpXDbr3akGReJWFaQP3SaZaTlDyqjblyzK4bTvZmc0AqYz7wCe+e8hNl5h5WqmGCAq1Tx/ZRd/iUvwgHUSltG2VAiEXHfv1qBzIOkPhCu3d0EWuxV5JIBgt5xJWjSlYOn8+QNtF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HwayNXGj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HwayNXGj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9EBC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769700833;
	bh=kvvmB5X6Mk+wvXhfH9IUnZlYpBrDkj/eQBtjLYYNqts=;
	h=To:Subject:From:Date:From;
	b=HwayNXGjElaTEbMZlzeyOFAtIqvgzS4wjkhoJAOenv6B3TE07kZSMumTc9MoxpjzH
	 1Uuj96FvGlz7+Vu2oPPbN+n1BlBTHUyvavJa4TJpsjMR6bIPR8fqKIWkdnIlY+8Jwc
	 bLH/K9rLl8vV2Z0phgl9RYTsTRx9cmcDgCRnU337n11ZT+79hjI9LjIjl29bXux0+k
	 bwQNNXJlpKYufvK91uGOiwC6JZ9XYV7M7uGTAfXv6bCi6rAcrEpq/il+IK7p9B0vL+
	 tZfS3FHee11B9j88akc7wrJwZHPGRYG2XtEJ1a9utMUhUKkDar4fcL/JPg7YLIPgY6
	 5ByTAViFdkeMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEFCD6B076
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176970083358.14242.5137153963054298960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2124adec0518f9ebf3ff9236a80639ae8846d9cdc1df802bdb04e3f2f4e519d
Date: Thu, 29 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769700833
