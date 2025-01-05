Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44D5C1D319B
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736106354; cv=none; b=L8DrvM+yBuUGSiAOO9h+/tvFlHDCw9GnDXyjprVe5+d4YOlhkbTtmikSWQKy5bWPB1A/B390h9fEqhjtOp7qq5C7TTz8Dvirc0GSGR+T3uN3rsF4JUh14G5wXFdIt6X2xjDea4JkKN9PZ7b8go9Ln/ieJEPdt0/wnSAgK0CwlrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736106354; c=relaxed/simple;
	bh=WYYJRlH36fQJ5OQJkBdHQs1SfwmMzVqvI6iEYAdMTwc=;
	h=To:Subject:From:Message-Id:Date; b=X4MHWhPjCUzKcTeZyiF0wS0kkHcSCQiv/8Ia0tjwPE+RjRIm4utmhQsia05l1A6+YjpnLk9mwJoGfQXh9q+Iiwzn9hlA1eDsXQCPsRUnI9r1RGx7DEibZQFkRERwEoME4PsMjonyJ71CJLejs+apUQes3/VwvvfP+9t+HKY0KRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nDfjdpTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nDfjdpTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4EAFC4CED2
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736106353;
	bh=WYYJRlH36fQJ5OQJkBdHQs1SfwmMzVqvI6iEYAdMTwc=;
	h=To:Subject:From:Date:From;
	b=nDfjdpTtL5j+bFO28mvML0jQJwTOMq03W/eZIwMBrM6PqCESXneTxEF1kMHVotZP+
	 5SMvzYWA8u8XNa3m+bQHJ0GUCinssvq604HFd8v2SPcaPWzjVlK4/k9sDHF+6EqTKM
	 6yAAxIwXjjYQkLydOAs+YKdNqy7gVWndWDSE1NCpEXoLqubjeZcrHxqyfhBBlGmyHe
	 VfIPfXEPT0rRLOw5cuOtAmO1rHWC1W3dQ/Ti16PfarqKlESrv19BknnqCnl5oIBHmB
	 BDI413K70d90+SLErGHsuMtq4M0NiUYMiCUqPpwEhIR6TMF43l0s4kb1MyYt0KoflA
	 VQNk1IuVmsP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5FF1E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173610635362.23626.9738405295132539936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1bf91727dc24641437685d689158766c53909fdddf379cc7f14f58bbf3bd21d6
Date: Sun, 05 Jan 2025 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736106353
