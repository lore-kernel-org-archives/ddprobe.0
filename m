Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1111433F395
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767629634; cv=none; b=h6b8wJpXjwzffqtvvnk56PD+NYZXhqcbmtD0H6B6bAc5Yzg+pa9fgNjJLc0AtDHdN00sa9DukO8H7s6EoYi0cDYen7oEDXpb6LL/Vg9MRTeAP5mMAH/CQZjiJ4X0MqEatzpXyE3TVrrVEnvSZgFlIM3OANxZiL3CQ1Y8e/ZE9lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767629634; c=relaxed/simple;
	bh=+0ArNcSMNARfCOGQqT77ryAtWYJHmTRLcrxokDfwHW4=;
	h=To:Subject:From:Message-Id:Date; b=j8WqpZwOAEQaWlpTRkGtlsurkosPFwcGhW0tpx0hh0rTkU9w5erEA+P0viBFHjVo0vceTKEWCBQBoItm5orD/B8+gx6uufaCjsd8Dl5sQTjpmtQDBAfi7ZX65T7pqDy6XazdaxIWuROeonyYL4FVjhukfNpKrwdjvBholEgrFX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n1oWDaoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n1oWDaoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D2A6C19424
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767629633;
	bh=+0ArNcSMNARfCOGQqT77ryAtWYJHmTRLcrxokDfwHW4=;
	h=To:Subject:From:Date:From;
	b=n1oWDaoUZG8sQzxvfJMUdHT/NFFKMXeVAncw+ZHuOyLw2DpW3n7B9nE+BJGCJlq7G
	 d00himvSkNsUSi3YmQ27ppwaFZ7tABVs9GHCKLxn7unAgCwsIP725BaCQJrgd5KXC5
	 l11DSk6xhEwTgr4T5tgi9wksXMTfz16RSInFTN9t7m0n0b0xQdXuwHMlRIv0YJax/N
	 TJ+fYrcBKcd4k1Jn8pgnHJFQLJGJnkPb62sRTfdxV9mpvpt1kx/Sxk4x0K5Rpkwjl5
	 34Zjw7PUWTxwZX9PBu5tPKpja3fSvQKo68byIgKOSwVxhcgisfHB5ap9RzTcS7UUr+
	 hx0Lp8odPsuIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F24EC79FA3
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176762963357.19583.3578080383677982073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1282d475cc0979113ea3faf570d1f5756d63a826cbbc0233b4986459055c8ac5
Date: Mon, 05 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767629633
