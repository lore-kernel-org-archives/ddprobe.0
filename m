Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EECB201013
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749061794; cv=none; b=tyLIPN7utMor17CMiexqRWaRLnMHJRaLUutRYRt5STUj/a6gAZjr4Zf7xohA+pb+xh+nS5lDkW9GUA6SKezy2n/hoOjQ6PVj8/KlczegJb7Og0Xr1gaDHma9W1rkwg4WVikrisqSQlDLrT+Bt3XVk+ci7po4yyBk2g4T6NkHSOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749061794; c=relaxed/simple;
	bh=3gvbbjIus388R6smoswApuL5i+JJMUeEhUcBiggmR6o=;
	h=To:Subject:From:Message-Id:Date; b=neySoEmtc045cwfcBvWi++5IiaD8DKkM3gnOU4zkjwF40v/31tXFF80IwDQUeno4qCV1/h98KQfhHDZ9atBKdkdE7RYOgJ6WeoCvRpxNavUHAMwlvfg6cy03RTq29q4p8u8Noj74Ir4RW27DSEK8yn/v5wyNmJ1jYFSVb3m3Thc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uB2b9QfN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uB2b9QfN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5224C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749061793;
	bh=3gvbbjIus388R6smoswApuL5i+JJMUeEhUcBiggmR6o=;
	h=To:Subject:From:Date:From;
	b=uB2b9QfN8x+SUxlTxAmxhp/H/zTeq93H2yRs6TZiQMkBMRMDY9IAnCKtYNw7HdVlo
	 BlFU4boPcrhzRe5wq/uLCvzu3z5eDZnVVw9CzWAgQYQURjFxXTTEp2egd16NErr0qo
	 ry30YzhcYzWXGdXJfElHS8QEApzXhj1nWICI8tyu1hWXWUfXaGC1p/N993SE+PD7Tv
	 GYFVwTdTB8rXDE8294bHJg8s79DEOiVMv/J1rTf52FKNOYM4JaUfqMJK1T5vXCZZVr
	 YalHaJes2gMvKv5+nu+WkU5WFFTTu6GeqFC/X7AvglZko75pGFGKGZqL25Xz2BTfdr
	 Rb9OTnrAwQJGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E08C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174906179359.12377.10851030318377816166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74aa8c596c2b793d3bfa2bcbd2e143fd9f0c0a984b76c1e9bb769df4c46d0595
Date: Wed, 04 Jun 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749061793
