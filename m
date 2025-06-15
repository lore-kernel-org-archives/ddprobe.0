Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3012B13B5B3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750011594; cv=none; b=ir/XvsVvm84ix00CdSoZw04kiY+kSbw8Yru0zuu6KtD9RxqZqGE76l9oJ6vnRuJaBIkjOFGzrHKBWLbw0/cWdNYfhTQoC+UynjfqRH8tqv7qch6eOc1CHKusDIZP+ThRvlTfcNJw3zsmXKg+unIChCXIVVKKLYcZAsdFd6Y2hUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750011594; c=relaxed/simple;
	bh=uuRfJ8xJkguq3z8O3n2LPqGWS9S2Fj+BJtYxPkZ4UVQ=;
	h=To:Subject:From:Message-Id:Date; b=YLQIKt2iAy8ITzezVNJ6FL1ne7w41H8crYdyRbLIDzdkJa/6/P0sM3noRcMR/kjCNo3udY/FIQvwEVBvqogvxEHyRxwlYsb41C7A0Igtve05FoqBVtMkImzlVWUJX8rPlNzCiOd+DAG2xZLwl+4MgrptejoKiuxnGEhqnrL1Eio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LQa13eTA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LQa13eTA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A702FC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750011593;
	bh=uuRfJ8xJkguq3z8O3n2LPqGWS9S2Fj+BJtYxPkZ4UVQ=;
	h=To:Subject:From:Date:From;
	b=LQa13eTANO17dwLhAT/1/vAzstd/zU9ChKShk+ltnwoOuUBlwrXdxFtDE1Ks9aV7S
	 DZWH+P5Fj28NWtjvm7fLKUTwZSKLU4A9TDGSKLS1sA3WHZndyoMmnFKoezXPDbnhCN
	 9i4C6VTsFw1hPdjlrJEwcpBUKXNJsmMMaaBpn4ZLA0BG9EPq0zpduoxad26gpGSwvL
	 hPFB4PzCLERvt5heR5lEFVeN+XGH9p9qeeGZX0To177dpPNqTL9XAWP8uDqDpGduvA
	 3bl2TTKUXk+HgSVqOGu9dCkA3LNkDyO2atQ+vSPJ1UxvbahxUuxSX9CXqNUgqmXL2v
	 i9aXDoQvwl//g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D18C61CE8
	for <ddprobe@lists.linux.dev>; Sun, 15 Jun 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175001159358.31815.531539954879545281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e590ac054cd348293a85f3f8dbaf5fcee9e41c630f34746820e61b8b775ada02
Date: Sun, 15 Jun 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750011593
