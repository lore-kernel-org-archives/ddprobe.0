Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 339AD41D640
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790285435; cv=none; b=ImaXqSKOijUoLSeL5fm0d+YFCtqo1wz1YCnHqSvOoqNn7B/ltuTKATJ2jeUIOemfmJFUPZxH05Suy2KGj/qo/H8QnI0XBHzP6eU0seHmGYyGnEEw/keABiyDVFLrQZJ5inADt9lrC9qFPzg2/YZUD7qbDVx2d7PVy16ZlKJqka0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790285435; c=relaxed/simple;
	bh=NZKzBLCm7D3JyeTkGhfiVMRa6DPssse/9GI63WLQV1w=;
	h=To:Subject:From:Message-Id:Date; b=BeTFy9Sg0Bgpd21T6bWJn9Q29U1tcjPdlbv2hSkyS6ZiDqrDcE5HtY3aMAvhsOzvB7gUOTMfwqtzVMZxP2XEAyDYp3yY3+fhyqfbXrCQX9qK1hc89yEy1vybmnhi+gX7Pr9eqcHW8+HRR2tUBwER5Mz9TpaSDQrJdJd5lTGnvcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p2+cGWnc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p2+cGWnc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92E4C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790285433;
	bh=NZKzBLCm7D3JyeTkGhfiVMRa6DPssse/9GI63WLQV1w=;
	h=To:Subject:From:Date:From;
	b=p2+cGWncA0YCjuX6xVY2Ywbp7ELGZLj16T6m76/UmN8+PB0abos6ZcvxyLwugCTSx
	 NZI+CvWgkpDDQUMx9eydizdV2UKk2sFXKxTop/6tmZrpAZE2LT7cgtkkZO7TRvj3dK
	 NzdvY+cQmTL4IyTyPRP5eJuGX5eKXwbXUDOl7S3scSUDFsJ8gKMamm20GUO+AmzniA
	 4Z3vODkA6pTS+zyEucdaV14K4dOaYXshtN0En4SkwQet1BvmXJCUEHZQZ1wSxWAYhf
	 xZKSzpiNAb2Bf5WCFknV/ept05m6azKof+lJYnp6LeQGfvtnLOHAnPaXjeCDRHmwey
	 n8AzVm/XWOejQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B63ACC9830E
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179028543370.17421.12295682838993182690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a60f2953273f11c0ddd5b675e6595c47129d4ebb972aed30c06e627a56d78f9
Date: Thu, 24 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790285433
