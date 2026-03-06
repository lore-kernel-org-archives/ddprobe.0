Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A73E2EA171
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772802294; cv=none; b=jyXG0PbZAYEGAGXC3Zyq6EZhH6PoUUQLKw4egJFBaG2OkAN51PL+L+GpP1/F5XmIyIgQ22mhubo8ow9Ni36zb24ETkAmTF0OOqDFF4P4oHIUEl85wWn5Rr7tNFieIcrTmz8NdElvA2e72PrqJD0JlcpdUsaTggIBk3lqpl27Ces=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772802294; c=relaxed/simple;
	bh=CB5O3UYxOkwJgqBd26oQD7ETeOCM9AqaJDMigpE3dEQ=;
	h=To:Subject:From:Message-Id:Date; b=p/qNDuIppiNHnncOGn3XoiBLmZt7WSQC/atX6VSHZqLGfXV+skDPcfRY3F/DeBZdpJHPqbJ6PjKdhaGQyQB9+T3asQCbt7jFNNyv28FQHxIIR1f+Tjnxj8sX6K0uktoSZwYCyVVk5XDAmfE8jI5bOrqjKUFqrdfZOli0SaAVIQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYh9l4HO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYh9l4HO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B05C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772802293;
	bh=CB5O3UYxOkwJgqBd26oQD7ETeOCM9AqaJDMigpE3dEQ=;
	h=To:Subject:From:Date:From;
	b=jYh9l4HOUiRb8ymeK2It/RiMAPgc5W8SVRnYcopM0oQDJPrCnlqbbTP72aPZ5uyhS
	 Ac1Gubz5WPXkSwgocaLb8p1/xHjv8Jd1ke1kR3B6JWAnmtCyM84/rTvgXW/InIbkrO
	 ItdlZs3qs1XfvFR26xVtcpE8qoUwiXQS4s5sgHT3J6cyERDa5JxCE0tuPVfrcP3MVK
	 h4em6SHygT2ar/PQc2VaZTK+8mju3hlsd4uQPM2YkDs4GzgG4ueBG0O8QVX0K2VhMO
	 vzC03riV/AKkR3NWKIktYHhzu9pK7meive5jxHkMWp1WTcwWCpQ4E0WH4gity0STdm
	 dGJlVKkBQ9BgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951F5F0182F
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 13:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280229360.29610.10048513464281553593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476eb7968e0e4949b0147297a3664b0b16d74fd923312796df7f8a78d5c2d025
Date: Fri, 06 Mar 2026 13:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772802293
