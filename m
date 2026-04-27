Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4765B3D4130
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777301254; cv=none; b=cbC+uHk2hLL0q0ul09CH09+sdZdYdL5BouSq8HpClHb+YM65Nu676HeXvP115MrIqfW1vlsErvfvITd8FlSvI1z6U+A1bw5lD6hi0VTXufXPK4qmPE8RqbfUt+whrYHXaEBB4XHTT94royUq5O31nOK0wQSno1H94EOhMFNGfbI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777301254; c=relaxed/simple;
	bh=gjIo7vTxuTV18rCxkfoKEaOT0Llw7AYfE+2QUhzUEww=;
	h=To:Subject:From:Message-Id:Date; b=ng0tZ/Tl6CpOzYqWZmLKPhaAwPCdsznGkq1Oy2qWfuapuumZh5J4CBLWr+IpX/cu63DmFcrD8l6gRsEU1o6XO1kB+hOOLUtx1GVohEj0x62trseXr8TGKoqLDxHx01HSA5oIijRdgV1DaYPYevUoNaOG1nqZA1MnOsmj8mqjkzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k2fzInbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k2fzInbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6A51C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777301253;
	bh=gjIo7vTxuTV18rCxkfoKEaOT0Llw7AYfE+2QUhzUEww=;
	h=To:Subject:From:Date:From;
	b=k2fzInbDvHYiK3/BzKEATPLMzWOZPfdmiMvK/SLLQriug1VXjwsIOMu4lqZZydrfa
	 LdaYIz+10hQhKKgqJsSNhF6t6Hykak3ttGFoS2sw8p9XIVbbVj8oPeiJy9UAVVV6se
	 JZfYi7BHYa8rTWcmeLwQ+eN725Gdm3pHV6izt9knkfciV9MrTXhxY92uAGKz25SkJf
	 C6D21USZ45kKL8jixi6q099DfNEr+j14/1ItQsW+v6lcvlOy1jCKV5mvEjyfa5EXOS
	 JlW950wLIgYqsXHp9W3rAXcKFYBNQ4xgPeKZHx/nQy+5SP2Y/fTjqN6PzqhyA48Y5d
	 imJnuyCjm37Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB65BFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177730125369.3480.12757610711113728326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f73d7026f42d5cebfc31ef61f541f612561a0c693af0282190fb0b13bbdb0a
Date: Mon, 27 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777301253
