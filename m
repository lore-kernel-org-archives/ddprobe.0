Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D045D2BEFEE
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769459633; cv=none; b=XNMRZgaj61+YKfNy2zLMx8/yPyntj4PpFwv9bVJ/65MyQ8066g2oEobjgTsl9VkUOF7vUMlX+R6fC1tkRWRThkuy2YA/lf59zOPiWaO3YxEUgWYNeCwopg14QizJVoUZ4ZOOII4fyCj1JvH/W5WbLUpqa7H31aEeeWRg69unfvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769459633; c=relaxed/simple;
	bh=ps+0qa7Z8YDi4sJJiiADFaj2iHcfXq682g9DCKMuzt8=;
	h=To:Subject:From:Message-Id:Date; b=nRKpeVP/8LuvVmItcn3iUXAfXNqr+JbYsTmnjrOwb08AXDvdHfNLrwnT9j+vRNxucGgfb8EgRKpHONdldAFWxoBjBZhvXaLHU5aER0/lLncnjZSbYeWhQzcfJ/t30JZNKu1/mVCWTj3IFFffkSnqfBUXC9uU2PzdBDh1XtdViaQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVeQjSei; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVeQjSei"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A455DC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769459633;
	bh=ps+0qa7Z8YDi4sJJiiADFaj2iHcfXq682g9DCKMuzt8=;
	h=To:Subject:From:Date:From;
	b=FVeQjSeiizfLdSrZGHUhQX2oY6iVSGsHS4FFFiIBLmCn4ZoBJY5DjS3sWT9cyR583
	 QtBj4FRWdJgY+TQBKX4ml6Xan3ijCc3FQ+VrNp+Q3bssxOKZu06OMZ5ZUHeDEzZ3RK
	 C9mFk1JokXwEt0vJNdAFU1Jya0dGlMt8zJQjE6UMve8+2Pd6rJBZEXv/oh32evDKTR
	 Ye5wQxajizuqdxjNcNaowNz83cg3nwZ0nvLFe8upZutiZaxm/tqkesS1wFvc1ymF2e
	 TJ7QsDgUSDots/ZlI5vyaCZePYpsbLa8gG+3rVOmRKXUTA9KV9LDfSA7Bd6Do6GX41
	 k13e9iDL1toXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9354AD19519
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176945963359.27174.11968002182102376992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80321d6f944580f4bb41847c5c96caebd4d6c3af4e4af6299ac19edb12d78c07
Date: Mon, 26 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769459633
