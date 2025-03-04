Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5947E3D561
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741088934; cv=none; b=pnYeTQPJgCajBvCrx7HXRspO3evJGfo0fUWPV9oSDMi1sL1IltFvkY8GBbG2OfM1uFlJuhrYn7ZWj6TC4K6+Dkj4SvXojj/Uv46YmQTCVT50EuahneFP9/lqNL7jG+6zpD/dsn+XjgzK03W34R72eLmljTA98w/Xm89ny+4hwIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741088934; c=relaxed/simple;
	bh=AlM5vrChGS9YrL3kTv0bsKbNmauKrJtZtiV8HK0FpgE=;
	h=To:Subject:From:Message-Id:Date; b=c2cQgBFr5cnXp0NfQ26n5xXM00nJbVPoR0Tvubw3MVKQfIyDUIMBgunDnrA0HFz6v9ekM+PvOMq7PyC7DQULSvsptyoh57I43IA/8c3CC7+ZRFNlBM4G97BX3LExsquJXprrQQ1xJoB52oqpkzRXHofNfD/alqBMOnMs6Kpzs0k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shHwYyJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shHwYyJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA2C9C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741088933;
	bh=AlM5vrChGS9YrL3kTv0bsKbNmauKrJtZtiV8HK0FpgE=;
	h=To:Subject:From:Date:From;
	b=shHwYyJaI1EecIDUgPenHnpf9F86Wz5xHbytbp6Ys//LBLPAFqh9BddUcJq4I8tuo
	 DCs8ca8o2abSquB4gd1ML8lk0WQDGIOXfK7C8RfQEWabTbN6OPreaMQl1jnKyJ9+oY
	 1Xyr+cEpNXBaNCwRLTffTEOxXU3LznT6KaaR1UtnYp2sW3yYLdJ8chLzncWzF78toY
	 rYOgSYLYojZ6C9OyW12C7X3N+ZJ+2GB1e3tBVU4NnA3H57jSU0KE2EbdEDMAAg+pe0
	 1zExHsq9Fkjrh3qXHANgdT0JgNaYj50BUWwxcwhHEDdN7vCu7Gku+aaOSa5z6g5k/h
	 lEHk7ev0Nx4pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0C48C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108893364.18195.3594433258560986254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b797899e0fac1be04a4ec23f0fe0fa644879fe4c820161b0abab689d22f2cc8
Date: Tue, 04 Mar 2025 11:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741088933
