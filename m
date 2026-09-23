Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 599553AB460
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790135434; cv=none; b=mj2dbAynTLQxCNv3pnBrO35XCZ4wTq5TtaFHqz8VeY1vOO+VaFyMvidXb6XbZYGI6lb/cAt2zhdD806kn4emn4BXo6siYdJMauvPf5LPMvQy4gRhYlwU1rNrPb5zGhHgcbAirWPI0pIj02JwmM1iZQn6yGD+V3SICa72SeHvJnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790135434; c=relaxed/simple;
	bh=TTCBH51Q6v8bgZQ2JXbC8zhBmD5+wgLhJiL2XPLdTvg=;
	h=To:Subject:From:Message-Id:Date; b=GRluP3IDRbo7HHhrqTBI5VB4qnqpscPeQStn9lM4iev36k5a5/k6j/nxBTEec9ECtFkXQxfiOjZN6mVEsjd7gAQ8oFGjEj+M9A/daBUSIDh3yYO17hnxfomMe4irjcXhIWm2LGJqOCOfKXG/qEAJpyxR6Jh396Guaw5POUzgvfg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TcnuKX+6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TcnuKX+6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDFADC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790135433;
	bh=TTCBH51Q6v8bgZQ2JXbC8zhBmD5+wgLhJiL2XPLdTvg=;
	h=To:Subject:From:Date:From;
	b=TcnuKX+6G3txXd7FZKuTmIrT5MsToLM8B6Nbmk7d16u0rQkS10ftXddjutfqMB15f
	 SFXh6vzaT0DH27b6wcesfMc7Uik1WAVaE8D2GjZdnMfsw6WfPM+VJKj6+z2BBZL5pJ
	 uj7SI7Msrq8LbQe8C4iojcCQ8YZgzpX73g0LKVyJT3lxm351Iq7fB8DO1FkwwgKV94
	 lZWUrKRQBo9/fOIa50L5Gz9s90jb6K1CYBBLx75JTDZ12vGhqEzcXuwkuUDPXXAyU3
	 e1JIXsQs4Rw6SwOSHCgTV3NcGuoBEg/lZMBPl9i1Ek17CMTht6cRrlphBkvRHnjxqn
	 p+IljOaim+uzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B6AC982EA
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179013543374.10283.12899384837527021156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b314a867ccc226120825e9ca427d1d9fa14d1d5f29aa57e767595b47a53f474
Date: Wed, 23 Sep 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790135433
