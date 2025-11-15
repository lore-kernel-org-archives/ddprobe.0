Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 163BA1D7995
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763168994; cv=none; b=DPlg5AsSwkHUbV9i98wiFipRAlhWDrbmBtcg3zkJJaWCJMDe1603KXmqNgZBP/VPsGIzNXAEX0pXOM8BjzzQ6dgNea/vlgoKzWuK4DEsv0MUQfmwQD8WFqh9o62nstxdy4Bi6qaMgEIKUKsdkIJYE2OBEBw8wr1j9QY5DurphkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763168994; c=relaxed/simple;
	bh=unhsigVZef+73qqx+O8OHrXmU0dd6EU2Z9D+wwZn8kM=;
	h=To:Subject:From:Message-Id:Date; b=CmhdNC88G1kpY353nef7u83FtQHw6wBbDAzXh5PSaQHu7B98/lzgPkhtBzHvK0wl1XU7trBWixG2WLG7z5U4UuEaZfEB6bh6aJHNd6+ip0yO77TiQAlKfDOeBPDnhy1Qm4VQ52WbRM1jQFAvgPHoEJUMsP53VLu1EX4ToFpc9Gk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rTLT+EXQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rTLT+EXQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDDCC4CEFB
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763168993;
	bh=unhsigVZef+73qqx+O8OHrXmU0dd6EU2Z9D+wwZn8kM=;
	h=To:Subject:From:Date:From;
	b=rTLT+EXQmUoUrY26XwmUpeG30qq8mgzAjRbkudicfLmvqxOjYdNEQ5c3G/6GZ4l7N
	 MgyBsiR8qw+7UiJNozv/ZINPZGATPKOEMXpyfmPQL+XCg+/DGL+WIJkriy+4Ji5Z1n
	 +oDoPwYPrxuPiLsHo2/afCXM9eO7diffSVLFAjj/tvV3QVYJI4avh2uWx8pLgs6+5R
	 Ga22gWmUb+3Wj9lGqDlRkLTmUyjE8oSd+JGvBtjHzBUfH3F6PYS2BOQuMoZIYWyvAr
	 tDdLi39qbRywpHCOJnGTijNOYdOB2NnmwcqBEMul5KrJdtlz4wG3e67RgvTk6Hb9vl
	 eBqjh2WLni3Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA4FCEACEF
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176316899357.14374.9030528640430848683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9eb0f08fd0da65fbf8e073b0b6e84b055c6df62799458d3d8125f733bef836
Date: Sat, 15 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763168993
