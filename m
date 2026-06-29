Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC703806C2
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782755314; cv=none; b=q5doTEybxD2SL95+Dau8qZl5xO4vlMTnxAotbhXAfyak/lITSKiGyyMwhM3J+v+xvIElo4e/ZlCd6wzIitzTuce9Vgh4ODI6S5Gzn7/kgWPvKJXEL2JguSAW/PZSbyS5saD5523C/xuc5/PqgQQy8seQ5Kk1P9ltdDik+1OvofI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782755314; c=relaxed/simple;
	bh=f1t3yAqGHXIfhNv1dhqAJjGp4T/3579m5iokG6IjSvI=;
	h=To:Subject:From:Message-Id:Date; b=ZKlCzjczZD2MijkblIU3oYNs0INZ6u3hmLbANRhom4muaasKNPylauUvwxrkQOHLV8qoIrG52ZVPsNd6NUm7DDTNRcW8cnziosZes0xC0ykDzWNKjvW973cwj3As+p1MJOFzkb7O7MFIs32TaRrUt+991FFwfY+e+gVYyvlNwlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2Fxnowg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2Fxnowg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA58C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782755313;
	bh=f1t3yAqGHXIfhNv1dhqAJjGp4T/3579m5iokG6IjSvI=;
	h=To:Subject:From:Date:From;
	b=Y2Fxnowg7KBZi1BqdR3u0mucrLihoDvdTIkb2Aex49y4oG4D+OStill0J869+3WWf
	 iLOywPaPYqK9jeG+4Z33VvheXXtzYN5rlhXWzuTMTwR8jsCL2/fca8hHhkS53Y8NSv
	 X4lFn915I1uZCRfdVDmvp8E/DmQKgzviEM1fJMl4es8o0HbSmrM8T1iohSLVoll3x9
	 ZcRmgr9Y+8AO4kk7zoF+5HxJYqU3KtMO+EmwVE3XuT4u6e7LrrIr9oin4Ue+5rLykr
	 eqOMxJXfKnyxAdXZnm6PexhtP30YgvNkWK45slPN83N1GZSVP6s0it1TvKbZ0K6iqv
	 OjGvk/A7Ts5dQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9686C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275531368.15464.18040549356768183511.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e599b171c724da817f92c0bc368199dba71f5d6f36aa95f0a30829bcded0d8e
Date: Mon, 29 Jun 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782755313
