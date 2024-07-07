Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEC3193
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720311983; cv=none; b=r0xlsPzV1BKbERlkwW+jz2Z+ea8zBIkLsApG+JEbkmt4GsnOSD3KwkpSlVCq4ROlQ1qN4dNqL06rLEQhtlOASDV9ZDXoaWRN6ZwhbOAOrQHfFnN0sEXxL5PAIfCNYUHLvIgLAhOIXFqszdJQ4cGepsvy8dqjfB7+EHL2sYMoEJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720311983; c=relaxed/simple;
	bh=33f/E3ubX1d4S5SpeDefd/LfgRFos1YTNUM6PP5xzPE=;
	h=To:Subject:From:Message-Id:Date; b=RXOTLULP/km5WJ4tb1h93JLQrNXlLT5CSkJ3o2C/2wsqkZjGIbaBOYP425Krqi+VLMIMb4VeLODhveQv+pS8r6UyXLPT+N6uPsx27wzP8AfvCkH/kXSCgbF0QcJso7XDFIfFyKOHkvFJgt0b+tILcC3hy7DVHdf2tMnfotM6vfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DSRPmfVU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DSRPmfVU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB2BCC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720311983;
	bh=33f/E3ubX1d4S5SpeDefd/LfgRFos1YTNUM6PP5xzPE=;
	h=To:Subject:From:Date:From;
	b=DSRPmfVUescgQJae8VZLNFX3TPVwcQz94a2SlWzK4p9Rbfh/fb55UdNg1JK2iAYPb
	 csQNZLId8Nd8wTT80xTj6wDGJuON7XXH5mjpaZX7qc1ehj/KWApqD/J4fSQ2/qW9qz
	 L6Br5qUUqYBmfVcSOkGqj3m/DDYoXIp3TNOjdwGKn9wg/kZha+cTvfAf3o6t2u/lHX
	 3kmTa26MaOsWt8jdnEkoVlqGuswHJB0SnaySYFvjpyYKXmGd90CKL2xWH7WV9aQF2A
	 tRt9W7GbTl0xgn6zmwfOIkUFaEGDpKPG7GNRCQREmxjEw+ktLXApcGykHDHky1+yhZ
	 UvfWF/871RWqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F41C2BD09
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 00:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172031198283.9164.9120678950696274560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0bbbeb9b4321d2f49747213e350c0b03ce74403625a7d2ed55360ca258f0384
Date: Sun, 07 Jul 2024 00:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720311982
