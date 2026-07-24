Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B0312BEFEE
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784930434; cv=none; b=a0DINn062Ttm8Dng49d2LfDRLa7o9oEEHeR9LaSUXqZoXsrOLyvIEV9xtTYNlvF6HeFwrkEq7Yf0wYl/eCBJ/pyGw7i3UFD7D33xobv9AQURMmTloHe8MbfEu6mh0ezt2ebfZ1htU+riRlcihEQ3CDmaucJud/4uw+ta4dGaccE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784930434; c=relaxed/simple;
	bh=PqNGOrFnoxQ5MjDpvQRo0jWlVR4XRdLqUmJEQ7YFxHQ=;
	h=To:Subject:From:Message-Id:Date; b=jyWkCCGt5HsskCGjlosZEdL+LU5oP3zB9dexY7guWbELd6Ib+EqfsxBOHyP1t2PllQg8T11FNA44c4mylWC8aqheJq72GkrnnPDWQu3nDFPthwMu5JfkW17d0JSOsDhYxlKoj4pcACDqePBADelzEvDwgJB9soNBpYPApWkfzu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jj60pveD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jj60pveD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F3DC2BCC6
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784930433;
	bh=PqNGOrFnoxQ5MjDpvQRo0jWlVR4XRdLqUmJEQ7YFxHQ=;
	h=To:Subject:From:Date:From;
	b=Jj60pveDWbk7wMecBn8d6VbMOX/711vkKvwR+jMbvyjtePpONRU2QnnKgVZexGwSo
	 ybUH+skXvdyq90vfI9bbdIFSFZIFpc6x9H1/WopdnaOfkF2054D4ZytYtba0p+BdN8
	 0FDr8X4vFZeReJAiLd/UukjaomzMSw/tjN5PTmV6NrC7+jQLwRKBxIe1nod3opwK+8
	 PegWCROTE9Mudx6gQnjrHYQzrkeDUKHfrwZtnwt81g2q47hmio1LpumUfum2SGNVN8
	 8ysqvG76hBqzZJy/vTzqtPUEZM06wRhnm+sYFpWr7jjnybW5DirrF2YtlCA9pcwv4M
	 lprDEeiV4RhKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFD5C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 22:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493043368.14383.17966429890376512976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fd0c89870e441612597d666452223c38d4185eac094f9849ac83f90650bc7e5
Date: Fri, 24 Jul 2026 22:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784930433
