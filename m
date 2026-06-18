Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44B352D0C7B
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781757394; cv=none; b=IpXqyT2ariQa22Oz+kRZuqKatVXpgSueYo6imC5XfkZNY4cBfOj28785CiM9VFoo7MaVIq4BjOfZAbHXgHpPdnrGmnB5N9dZPvRMhMpIrJVeuG9kKC0IZU9SWZLHVL3FVuQD49eOMIuIhCTCTHXrf68HsrzjcqzdpD22IOiiB7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781757394; c=relaxed/simple;
	bh=uiIOPu7eFB6hpFi+KcPbUL4YFH5oPWBovO03n+m97m4=;
	h=To:Subject:From:Message-Id:Date; b=CJoXdAAt07IRDJeZfQ6+AShvt2FyzplWryw/Pep0U6888zrE5iBmzhblYOnlpI1SFey7dQ2Fp76SEugcnlxqB1mKqzZOdonn5ayE8xrER51yIcp1DmtgVvH3DdPLcMfB7nfN/S2jVxUN/8EAtpLl82AbbpQjlxC/G5diNnl5J2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KLri5zb4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KLri5zb4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA138C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781757393;
	bh=uiIOPu7eFB6hpFi+KcPbUL4YFH5oPWBovO03n+m97m4=;
	h=To:Subject:From:Date:From;
	b=KLri5zb46z8Ps9HXF78V9pwKWPHwpoEy34wKULbKjv5NRzisiKji3hbbATYLQDXHY
	 9cKOor10VccJSagIXb8tPQ/IUswgFtBMr5nEqhAk9nigvf7CkzSYzHqg0Vo1L5XVeB
	 UwHQ2E0SNykd0YBuX4NgVOCB6daKMcpOSwLo3PSUlB+zoYmiUp2v0ugXqxek5wENm2
	 iNV/RNepgonlHqRCL9GvuVaEcCFrCQYM+YNqVPH2Ll2cUjrtH2zKpqWsnVFbD/9J06
	 gBcALELsf8cY1KsHpJZOVM4DLrXPUxd2R5yWt7SRhwUoppoHsWSUGCF0X3QlZQJeXA
	 eQ0yBmEA2NtIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9032CD98F8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175739374.31732.15109201534827375748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb7d0808b94bc081e2b8c73814e2d71726b5f4379ed9ba593e14882e73a9448
Date: Thu, 18 Jun 2026 04:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781757393
