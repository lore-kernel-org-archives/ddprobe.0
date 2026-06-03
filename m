Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097EE409618
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780475074; cv=none; b=AkIDwtPZUk177m9Kx6YTqbMnbpFGVtZ7tHbeEK8YDEZuiisOdw2OhWHquwlAjY0rUOwM9QBUQf4bE1M5zinQun3L6j1Wo9cSY5h0Juqu6/D29cIMpMGBQgv1anWYA6OUy2XsX+s7raFqxVQEjBGoChhLAS/bJxV/L3BpLky6sHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780475074; c=relaxed/simple;
	bh=RAkuAHSv+nWT3tHbbWWTq+YtaiAJx/gLAn2woi8b7Vw=;
	h=To:Subject:From:Message-Id:Date; b=a14/4D67GFZCct4V8HdxrQs5X745HwY/xQoUKHkdY5AgO1So8pVt7Rc9rq+S4/16dmN2sKloJsO0yf87fLRmyHWPbMf/42qnDvlaSLF3tc8oG09CypXldcKZ0uYwJA++PF4qOur0a4wnu1LyDhDXmPPLJ1D1YTAvxsPbA3XQXlI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qe5DmmyI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qe5DmmyI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B78CDC2BCC6
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780475073;
	bh=RAkuAHSv+nWT3tHbbWWTq+YtaiAJx/gLAn2woi8b7Vw=;
	h=To:Subject:From:Date:From;
	b=qe5DmmyIbWRjPxGmIKutljQNanNo31Iq6dq1Pjv5HVdWBiZz6wB9pQmQ8M1nAa9uR
	 dlFIoHnwltiWdKyWV17fl4AIgNBbQDalo55FP992dOM9CbcDnme8be08n/pVmaKitk
	 cymCHJohoHohTqlu32NQU+aA3kS9Uf2EJtzFTEnm3PYk6qCV/gR0el6b1JIu2hx1ib
	 2uX/vzgbRXPBlwBoXVBwqOYDh4cJwcYhExk1OQlf1M2/JwC68sDm3gjwaWOAWtm1ct
	 kScIuA3410cu3wHdNJEtOPWm4aPnnuVxl5c+3WjgVvzv53EbzuZygVGM34U7SdL1RQ
	 C6nJhbbO9rTdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A971ECD6E55
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 08:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047507368.9549.13654721421953239192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3663cb09fe83df1a727e16ca93832c02e04e803e539767f8b0eab834736d5c56
Date: Wed, 03 Jun 2026 08:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780475073
