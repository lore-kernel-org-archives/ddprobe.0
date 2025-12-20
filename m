Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AB872571C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766238834; cv=none; b=ReW3oK/mQCwXupTO2ljhrvaY4D98ST3VyHo5TxLnstnMpuQ9B8+vjUekKufMgQBaITVWMw5cShSs2PW2cXxB04YukuN5dtM8qoGtrKUjxQ8CNMwssj7BUQaegraRS32uE3Bd4bctGWuYl8WhOAvjI57yBXMEVskzHNvQrrxMtFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766238834; c=relaxed/simple;
	bh=Z66bFNw3EAUd9Vpn745KkgClU7x9yYkY1WJJRaiwKik=;
	h=To:Subject:From:Message-Id:Date; b=mTijueU1B9rb4d190538V+RYCO1yHwmXYy7JpYjNkmHIxQIDv33CID9NndLjI1VtNOYm5Rjv9CRfl3xdG8/2p1q8N8AcUfQNJV9YeuRZ1N10aVNW6xZJtIjFVW7jrztGPON6cpJomDuX0HFDr3GQzof2nnvwuU0FFGQoUtfJcic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JiA9j7Vs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JiA9j7Vs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25EEC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766238833;
	bh=Z66bFNw3EAUd9Vpn745KkgClU7x9yYkY1WJJRaiwKik=;
	h=To:Subject:From:Date:From;
	b=JiA9j7VsLTstGGP8ZrmbMobh0e+SNV51DP9xo2ODtn4bkAKnMNW5EYpAAzYeRrNit
	 jXmPzhS2wYXi4pukvjs5bNTGyYslK5xOJdfow9yTQ3MjGFlgf9GckPsfaiEGCNEhgt
	 /g8cy3yaCp1uYHXgZlMltPIv8GOt/GLyzSA3YcdjpPseAb6bkHkD8bH7zKjHfEXoPJ
	 3FqFYxCuuVGEkeLQEP0LwUalbbwHs+Wj2zAzwoFz2Z+S16iUGWuR/8YwAOWzmBbA9x
	 r9uvju3DTKWRufF3rUbTy0ipDulABf7GZZK91Uf+D8rO3RrPFziWeUKJjBPJW+pSvg
	 g84uTC0yvo0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9204DE668AE
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 13:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176623883359.15383.5261863826905693898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafa2c479eb92f59ed69c0b04d85d8b03411646d0651ca447234b1da6895a9f4
Date: Sat, 20 Dec 2025 13:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766238833
