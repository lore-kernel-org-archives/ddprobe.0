Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C4B82866
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769372034; cv=none; b=bYTBLsBtXpezaTK7rm4QWWA00xcdo9AFq2QYn4MHZnfH98b/IY3rf4+cnmEGUBiYkm3inrI9qyGUZVtaLgPZTOq3upPohMQDPcOp1J8fI1wZwH9aCqKssZKjf0/fuIDt4/CYy3sXlNeN0KBWzPOMNspnto7qfpz0n9nA3mcx5CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769372034; c=relaxed/simple;
	bh=M97EDHLf3OzeDBAFuR0uaEuX7dQNvnNFTYUfVjqWZsQ=;
	h=To:Subject:From:Message-Id:Date; b=lV7OCZREF84deJ18iJ3AWNrtfGiibDgZwaB56BeGqeSJEdoiiLrASleuK7RHmAUFoRqYblPyb2c/cO+5sadDHB5s29A27wkHQ/Aa48U2XiTduU9nJrp5OZMp2fY39SVsBoZhY+LCcDcsEsT8NzEzTpaReWP0FqZc7hsLynx9Gbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oAVFgvz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oAVFgvz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A70B9C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769372033;
	bh=M97EDHLf3OzeDBAFuR0uaEuX7dQNvnNFTYUfVjqWZsQ=;
	h=To:Subject:From:Date:From;
	b=oAVFgvz7O0TS5fDpfL4KTNgJu1jqQKsx9EaOWBJZMRHgdjN3fFMuuzPMYmimIBf/z
	 m7U/H5wcZNcwRSpTC5wGNUL12zOyRTe8esb8oDzkueQS5FsztXBUSGBqxL552rJrv7
	 fzQF080NUdd7uw3HG/XDfrWUCwidBbVyNdbnK2iCtYNquR2UD3RUWKg9b4CRGutqVy
	 d5x5CxsKHyYMxRzgzoFjeNNlnvD6J+7zi09QgAKy+N00sMdT3ewnMrFdnCN2pZgXDD
	 xeGw8m21Hy1yTcs6hNI+ghLp0kCGlL0NJZ+IGiGOUzwf2oXoRrdXosc+5cwWhT+nUm
	 UTv+2c1Lo66PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96083E63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937203357.7667.3731899676607182172.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 548f67995bd96e2ee71c6f619b588f9f44fe25a58ae039a25995cdbddde816a7
Date: Sun, 25 Jan 2026 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769372033
