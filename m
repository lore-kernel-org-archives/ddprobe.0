Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27B8514B084
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767504834; cv=none; b=Op9eYHBPAwEosCby1KxC9VKAQvETXtszrTSj/S6d8pZcWKpDrpdyK9k5Myvrtb+k6iQuhu6VANyGJIQrZz+2WRCNqeCcw/qbNxyDAfsO1e7hcYQpoCM/4bsJBBKR9qGpskGGYJZKD9db3FzDIjxgUpJ+O8EnmnxHY12nQ658lic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767504834; c=relaxed/simple;
	bh=T7ZalEt9lJTvUKxv4UJKtsFGcAUsS1n2LzALGfQ0dZ4=;
	h=To:Subject:From:Message-Id:Date; b=Z3VFViG80Pkm6+gCv3kT8OkTrLP+TYxcdu+rPiJ7Z4pD8hGtmYhM6ckcjpzWE8BwCgTlFSzU2vZnPU3wz+3+/IwEjrLw1lfyhkIaW1fDZxEk+yS40xmooHnXiCcwl0+KBPHJbiEk6w7Kz4W6q8NoZgUv4bkQguCaYsyz0FFBgng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y1xjF8km; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y1xjF8km"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5D45C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767504833;
	bh=T7ZalEt9lJTvUKxv4UJKtsFGcAUsS1n2LzALGfQ0dZ4=;
	h=To:Subject:From:Date:From;
	b=Y1xjF8km3JSZIxYMyAqJxXfVKkwwzjE5dcelh4ZLwkvs5KIGuBbuKwpaHINGPkhly
	 B81DdqIf2Gpxt5mgax4t2wK8J4CrKCTrKANk1OOzJDAs6YDqnVC/QVBmTZKVd5/XBj
	 OGCw9yvWN7Y8VZd4D7sHV4Y3slY2K4UNALz4etVCksBduWBwckiGl+FrbRB0yfxF1R
	 A7UJlLmT8JBrv/pc/BiGhui2sF/HjW3KenoOXuRzz/RRc029eZPXA4+foHPpp0gSGK
	 65Owr9FiYN0aO8zhkI4jbjdx3KkYUhLXEja0cIeyfviFTg6aluj4CFAHRpyY7qLiyA
	 IJ5RJ4MDdiiVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D7FC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176750483357.25514.6318928392909427845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e709290c44775cc564a1e196a59c356fbc5412c4df16faaab3cb0e65c1abb19
Date: Sun, 04 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767504833
