Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408413246EC
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768879434; cv=none; b=jYmY5n5MoXMH/3SxUx55Z0bcPygqHEb4oU22neGTA6ZSpesRu5m5wYkkbP1aVVId69E1wknbZPNkTJqI9XLLwQGYLTaz3ci1cUgwcgMuUuMrOkIpHBAjAc4+GFm3l7wFyxxiYpYqEpzT4HUHDsCDrcSMwKM4/HnL+TkHjuTb81A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768879434; c=relaxed/simple;
	bh=F69hew476eUwGJrdkjTZliERK6NxJ4foa13uR4Pisbs=;
	h=To:Subject:From:Message-Id:Date; b=JS7bFf5SPP3OeN/GSYrcMBhzCLs+SuWc1LtBKkdmEOU39Dm7SFhMtUf76N326JHfbPG02zZK1dRYbxvXPdl1nBYTmPka1LRYaEanKJGYgB4ycsNNN1NLVfihiT7+7+jcrDyBWvvKZ1D0ACeTf3Ge1pRd98DRQ3Lt8c/LNDvDCCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hA/YfpE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hA/YfpE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8EFC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768879433;
	bh=F69hew476eUwGJrdkjTZliERK6NxJ4foa13uR4Pisbs=;
	h=To:Subject:From:Date:From;
	b=hA/YfpE8jPYqk9DjG05LPnSpwRiqqdpqjDwZ0R7q1/O9jEwpYdMBLR9psqgMiTyhA
	 ue0bmg68DnYex2XEfsYuI4HuW97fIHVlD4nZ014KVVF7M3+fSD3vsrPzVs5f8zWGrZ
	 3xE3bad+bL6NSSZL69kzqyz3vGhp/cBggHcJ007l8j8OQGidFUTBWr3RuMbH0ppHBC
	 m5IaZAbYZxi2JupziZAb8/i+gvHmL4o6LmBHBCAeKDOe5NZHUwuZsFeqaCgYZoqLwt
	 W6xdZfh19kz/MTjfjNsImY+QQ2BiAlL/QHH0BX6tiKaIUL8ko78YvLQcXiHeVe+uaa
	 6qvYSuxH4A5Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97061D2ED0C
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176887943359.7352.1120064005469622962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d11d26f532bb2793e1efec3c7868d0527e485543a9beebf86fa83abefda7a16
Date: Tue, 20 Jan 2026 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768879433
