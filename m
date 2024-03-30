Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D0918F40
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711831697; cv=none; b=I/FSB+GIty45xztSVUcm9pGILSsm207Nyp9b2GMbooGDUUcIGwhpPEtQ9jnvUvlB6jP1LGihnUVLP+nhPRw34zPw8ksmPYzf/gcx2mpOXZ8ISLklY/J2UFvJE+wOhYk3VvWGHlUIQbuknGOzJaOupTD4kKOlgjP6nkIPWTrnmYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711831697; c=relaxed/simple;
	bh=BR0CB990dDslSp6tx6tYPXMhJwf1ZYYCA6q8OXdvKlA=;
	h=To:Subject:From:Message-Id:Date; b=gDCaNUvyv15D3+tMPQ9BymbR1jn7ca0fQsF71WmM2Y78f18G38WFJcrava6sDBJXVpt2g4IWr4yQ5Te918NkN/udvW6P3EJFrQoxNIWTWpqL0aP4db2Or4hhHqkhvF9a1RNuOG8YJB2hn8Wdr3SAZIjjj0n/LNrLwaVhZilu/U0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q51IBk+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q51IBk+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 95FF1C433F1
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711831696;
	bh=BR0CB990dDslSp6tx6tYPXMhJwf1ZYYCA6q8OXdvKlA=;
	h=To:Subject:From:Date:From;
	b=Q51IBk+MoTpj6fi3qj3J9XEUfiPxtLR46TswcwHCNswsbCCny7aOXC9Evutx+RrXM
	 IExIPdXNZYaxzIxXIYAYSQ3qoR4Y1KgtgVim5d6/wS772CPfu+5MVYqMv56q3wRA8V
	 +gq1Atj2txS4NNIMnJA5ejMkIghfzptfIo0XB5EQTsp3NbjmrMtFvQ5kcwS74aQBQf
	 8lEq4J1bpTUCTRUum3/raPz7biTbosZpMr0fuo1BsqMxZtgayj1Ut4JvFMmbWdhBLm
	 zi1QDg+4LzLj6OS0MVOFy0EY0qKhHM2/1Hlv4EaemyW5xdvJ8Jwy2RJgFWf5UVIuGo
	 9nseLr6k77+mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 721D7CD1288
	for <ddprobe@lists.linux.dev>; Sat, 30 Mar 2024 20:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171183169642.25010.1746349027654599663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e17f178d2bb40434e5d56f66c020af6720b82dc72d8604d891660d2bab232912
Date: Sat, 30 Mar 2024 20:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711831696
