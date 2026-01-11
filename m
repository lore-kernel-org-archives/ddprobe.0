Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2946022301
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768155234; cv=none; b=OdKv/4OUS8pGosJGnwewronwIZb0iUzGL5AypQD6eUu3t1VTzEKDnZKybOB5x8Ue3prAVTirUMgMEJFWXCvNUyra6px8uYLDLrBggoC+Vuw2BP1IX6DNFLtdxZk4rRkCKJRjYd5fDgP6v/hXV493rfNhStvj2vdM1OjH9CYekNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768155234; c=relaxed/simple;
	bh=RcEReX1DZGKFGD5tSN5zeZVv2D+QFgGNViEzH0K37/s=;
	h=To:Subject:From:Message-Id:Date; b=OAhetePaNMSfCkNfHkHK1HKOMMRXuIM9zq+HQiMKRoFCvCWUpHmYyTIbCpm8xQQtUEKZWfQM/ew8R3YEOvQAAlSPxsZvbFydSkW8mb+K/AQp3ORkL8jcw99R6Yi4bET5Zj6ZfQoe9Aqei4jgcxYaNbeIrR8uas9hZWNxTQrOoZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvUUxbkn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvUUxbkn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC90FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768155233;
	bh=RcEReX1DZGKFGD5tSN5zeZVv2D+QFgGNViEzH0K37/s=;
	h=To:Subject:From:Date:From;
	b=nvUUxbknFKTaYWiZHfhItMBqGBY02StiyjqQN+ZeAR380KEcEHRwXE1ap9Yl1EegK
	 4k9Kv7I9oeVUxVikDVxNMzaoGglXK5PSy1vngeRhMdsvRYfiaKkE0Lvs2zH1dSAZ1o
	 QxVjeiSoP/ga6b8YKrniU+SVb2Dsu4gqKRsG3KKCK/V4cjyturDg+wWC1aBMHqairr
	 m9GLYTKqeQj68gBbYexEeAj0XH/G65/nO+qqT5Ark7D5G8kjjdxxk2wWnIkdmM07Ba
	 paD0uCWNq2Og+QBCpoFvMKrmtH0GMA9q3qV72k+QLf5Y8ftUPYPxThNKfqbgZlr/V+
	 dOi6psRJb/ggw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 938D1D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176815523358.28485.15587726652506673633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 575eacf37c762729a482cb54d8ca18f26e993be8fe2d9b4e0d6a2bf3c6a7b5d2
Date: Sun, 11 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768155233
