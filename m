Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 195C630C606
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756328994; cv=none; b=fGtXdRqSoXuc6AjDSXPrf1VAqN9NzvhBZc4EYzdbIc4WfeSzQ0aCwYL+5MJy6TW/MEDKpdJYtH6LzfCe8wXqe6KXEwx1V5PIzcNzqBdvH1DZwiYqgdKAsxWHYyNfefbxRNq1NUF6Lynkc+kR6twrDfXNq9WVdX0BrxS9gP0blcY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756328994; c=relaxed/simple;
	bh=LyR503gnFv1OTDi4imnMv27XQj0weia3JTem1q3lW/8=;
	h=To:Subject:From:Message-Id:Date; b=f8orPaXinQVZs8wbnDULVzylJQ0dri/KE9lqvzj1glcokTG21TNAHq9AxZu/CDLDlmIBaayv6EYpdH4K5D8j5ZMcPTLTsnzeMKQcFZBBSc1gbhHhNBtuX6iTPpYTVHzkROF+w64H776iNoMmk9yt2XD/j3pTUlc6csor2M5i74Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNqwQWnZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNqwQWnZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A771CC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756328993;
	bh=LyR503gnFv1OTDi4imnMv27XQj0weia3JTem1q3lW/8=;
	h=To:Subject:From:Date:From;
	b=YNqwQWnZqss9LJulHDaal7DS7zpLebR9RlTLrE0R5FDwjAOWiOSlHfVW9PkiO9oB7
	 SCsFA2y0P5F5XWPu/r09KstXBg3Dl2kZ4o5J3wUakzaZ4JoL/tV4L2LZUnOoM/zIR1
	 HWf+A6o5ZBKKebDTiNcpqJk5qq6avE47bWh5wkgXCqwxdngiEs6Oza8MuvWPQyM8mn
	 jDMlyJgqVBOgVv6OCdnre+o+qEEOYznD72GR5JD1EoYdYqe8/eI2uJGPHR/mBtozAJ
	 GAjT7D5X9B7Pewq+f4fxdEdUeFd3KCOiw08hj0IwZ4kBybN61YsP16yOff6A78Re4X
	 cITpQ50Y2Yvpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937F7CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175632899357.919.17421527817959151239.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4269e4e194ccd4fd337c07de7e65063bd2a05a85f54b2912ac2ef54998a63a55
Date: Wed, 27 Aug 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756328993
