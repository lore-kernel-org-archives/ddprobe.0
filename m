Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C809A59
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769904234; cv=none; b=qY2HpRc2GKbJ99tzWWwvP8K2ApZVeDbPzqnyoQ6Vli9uUbO7NbFeWqx5F25i3RMltGEH22P1xt64lvdSOGOr72alUrGBDdz2CE6EfwV63eLKBqXFiw0qWMMcrijU103m0SpBEmcyvHpaLF/AmE4EOdQtBmXTK6TDdJ04qaRl/WU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769904234; c=relaxed/simple;
	bh=ozJRL79Gsvo41h3uLSfvJLkZtATso0JLcUHOa0/Rcng=;
	h=To:Subject:From:Message-Id:Date; b=jLLmM+DeQZWAI25z6IVrkXv4cxy9Wnt2QzxvQc3hu3X99rZoK6DgMu0Yb9NuA+GVWV3+IO/4qdTv+2Sl9FtyD1+WHdZQXDH+En4TPnwYhWPdvRagCeBmiEyZ8E2UH5uBLduwLNHbaqEgvUzOJ/phgjNb+JWtL3BC9FwOvBzoYpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ao4Dh7Gv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ao4Dh7Gv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A27CFC4CEF1
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769904233;
	bh=ozJRL79Gsvo41h3uLSfvJLkZtATso0JLcUHOa0/Rcng=;
	h=To:Subject:From:Date:From;
	b=ao4Dh7GvcgfRr7VQ8o2aax4coodwrxsXVB436hZ8scCtv5h13paD5x2ulVG1Ln1tm
	 7oKAOE2WQFhHqRp3gGG9BO3idDqDwUlsilaoSYGXXpYytp73tFOQSXcRr8FOmFUbsF
	 Pgr3EpyzC0DLrsGhG9N/aAlXdKf9Zu156sn08NRWHt5X4eaib4J1+hIgR2qv/hRCEO
	 SAmlqAZQ9c+5toTAH+AgQk9okOaMIHzvlYNI2vSI6KoPrJOzs0nsVt1MQ+PLRbsLyy
	 UqzfeMq+7TvJhdwsPw6QCL5zMOF5WM5UvvMEhzjh2O3oKPQDLgQPZ6D1d5R66ON7bU
	 oclZ/cNJjhY6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949EDE7C6F6
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176990423357.318.6598670747205824641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb2decb7698be813bf48639b9d6d8ddf08bd5f3894108fdface3d121af50732c
Date: Sun, 01 Feb 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769904233
