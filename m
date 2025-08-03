Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3483F14AD20
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754239194; cv=none; b=WR11Td3w7W4DaAhqi88r5qiYoQbLjXCm7TgImnTZ5U+rxF9SCLqb0OhrrckVQ+qBcAl2VcP14IqBBYvUHe6A71mjytdtV6KjTlrd5q6PfwNCGNkQ4EjpVLDpinkeo641XSvv+OvlEdUR8HrTEH4m/y/qDYRGgkieB474FHMJVss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754239194; c=relaxed/simple;
	bh=WdwWG/1mlvv0sxBLQxJDeTcYJ5JVxkvhTtCHiarbI84=;
	h=To:Subject:From:Message-Id:Date; b=pboQLkMT0jivuuEBSkjOdHBMqB6pLyGjcIgMaUf0BRrNNuc7tCCO+5CtfTtzefpVp+Pz4/as7cYmjul/S7tBFG5hgqk9qdiktoz+GKVzPXhuONtkZgQ7c9OE/85WOiLLdotMCe4virKYmmZf4QXJ0aU2YVFINlz221v1t2HhkHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BUBs9FgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BUBs9FgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66F0C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754239193;
	bh=WdwWG/1mlvv0sxBLQxJDeTcYJ5JVxkvhTtCHiarbI84=;
	h=To:Subject:From:Date:From;
	b=BUBs9FgVDW1ykjjV0eJi3ei3NPKpJmA6zoxDbhqNfsGUs5+bfRujp/AMXMlvdqudS
	 GFQ5ajLGBMmPnx8wEAvwZ+wO7/p8M5nirDiKG6/bsqmEdY14Qj+JEu5pUYUra5e9M/
	 9tsu5dS1NISPRHftg6f8YKwdjFGuXpACxaWKY0qIVcSJsbkZX5onkVC0PHfXaU9M21
	 pDfOXIRUPAjaVqeYWrLyTwipgKNmbi+p28zPkP/bmNDByepXKbtw6gatEKRVG0gL+5
	 hA5jZANKq8Rr9ubnjLBxDbuhH/eZ1GzWC6UKlR6kyMR0GlV5TGZUrx+ChA8eVj23fj
	 7DoRx1wAakK9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91211C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175423919357.20488.11945187785258023282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 411905b3be8793293906c97d7ad3a0096b5a063a44db948a2bf88a992fa1c1bc
Date: Sun, 03 Aug 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754239193
