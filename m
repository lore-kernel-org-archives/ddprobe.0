Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327FD1C5F13
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752006594; cv=none; b=YjEiIEJFcpTwZdGrMWwfoiW9ogxZMB43mIxSuD30d4MQNk1mVxRlXVqWjPFuicrj7C+ovt2A3EvIH/MwCf4TvBKZxhNAEWZiyDrhXkA/g1WretFaeVZhIYGwBrw+CWxWb7YzuDIzRlkDzIUivTcEJlAEZDKJnL3Rys0ezsUPKlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752006594; c=relaxed/simple;
	bh=05DDi/B0ja/DrlQu0vCr19wa2j2e0tjzLk/UvsLJ4ak=;
	h=To:Subject:From:Message-Id:Date; b=VxBX6IShkDFVf2mw0bim7Qz5VqVZg+U4NvbSAqAk5ep2zusobzZ9BaxF7c9Abe+xjM3hluVyUbZoAUmoYeepUSbcYDx2WL+Gi/MNIplj3BjbUHyf2UIO/ZbSKlCEC1jgYwY0osAi95JunNG54O0Q8SJHlnG5scwSDPg508IlHe0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FaAP01df; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FaAP01df"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F865C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752006593;
	bh=05DDi/B0ja/DrlQu0vCr19wa2j2e0tjzLk/UvsLJ4ak=;
	h=To:Subject:From:Date:From;
	b=FaAP01dfctniRPh/ldmtQ/G+1e2j3WH7QYh+wJ3hJd5qOSlQ+Aw5EY2eW95KMU3B9
	 IP0z6fL7+r+lMgwUHlU8FLFEcEiUSkk9PRL1cSRZ4BVBxIYgyxR8OpWBMPMtl14wW5
	 S1THA9HcGi/xghtM8nKMfUoFmHwdb5BAJD453fN4s0c0bQyMbYLQLJWmtChd8IDCjo
	 H5/3jhIqn/2lwqSzD7cBhcnBajgz8hUrlZIc00I5IRS6ixjITmNkYl4F1j2YI3L2Tj
	 skpMmPISxCwSCAKcaeMx3UOEIsoPoHh3kZd51L//id8L0bnJ6+8Lh+xM66uKIdwidy
	 3GxGRsIOyvGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E2C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200659358.27732.11427532965439863328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d83752e2a4100a16bd69aef40ac6182157446485165377f08408c3bac4e7dce
Date: Tue, 08 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752006593
