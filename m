Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24347126BF1
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749443994; cv=none; b=M/LGvZoUVPZ4h36YRZou6kdWIxX8pfZce42i0V6+yZe2EdLYHsrgiEorXqrYJJShJjDaoOqkEVjOYWB8HzfSIJUyNsc69qJP8Bg3wnjQhGmjUGhL4TwD4w3CFbX4awHQtxbhIVsNT0u1Gmmsm6eF7X+0HBPDhDyX31widJvEMJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749443994; c=relaxed/simple;
	bh=YmYPdlvnxtbR1jDnc1ZR7N1+KyE3a5JQnnaSrOSnD+E=;
	h=To:Subject:From:Message-Id:Date; b=QKD6wG7ONAYnlhZbFx5ZJ1Wbz3ncNInpQaE3/YKtr7j5tmo2y65bfXERoXFrmGhP6Bk8Rsm572O8sbEQeb0Qx2/EZSdw+QEti+gEZtuBbSmW2xmD3GmJQW1nYXmA6kTTvFZPf5ZqT1kR/HgtfECRjaerkwBP2JFERjD0P+nCxq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vL6KYFqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vL6KYFqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C73C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749443993;
	bh=YmYPdlvnxtbR1jDnc1ZR7N1+KyE3a5JQnnaSrOSnD+E=;
	h=To:Subject:From:Date:From;
	b=vL6KYFqdKK64M1wFVk3g5+2bM1lvYM+oOBa2wQNhF6Vcp0dSGqg+3qx6Oz/xHtXwQ
	 07oHEJW2/6J0cJTQptl8X5JoTwIfX3YdwYF/Uj7sWKi1M3QtgTS16l0UFi0gOVOJ1o
	 wUGfQBmnznvQ1UNnD+TVHFBpakqAsvcU4fklyW2zR8SF1jrYtiYwvhbmT2g5525WUt
	 0kUPV/cYdWdmb0OWDhNntTLPHma+31NxKD2hsJAZSYwxfPz63EWQotH/mSgyixaDoC
	 qFf44t8NzcoEWxQ4AahHMnXM8nDiJBO2z0a3pCWWim7E8cP9LmvJC9anHAQe4kKlk6
	 gyC9WI4OLipsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C44C5B552
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174944399357.28753.12416121268165065209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e47fcd56fc0e5a32ccd43886cb3eabc0f073f7ca475dc9a03d214f9c17ca562
Date: Mon, 09 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749443993
