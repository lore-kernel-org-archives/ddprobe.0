Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 578862DECBF
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791690634; cv=none; b=SbMlx4zeGAq6zor0ryk2Ft3BHFlvKrk8Np1DmsWdT1NNMZNbAuTVgao5iSbd821H69dwJyd9KklW95prWi2b9kcceuFuOAgBnU4OvmCh3og8yMaHEwIadWI7mzuAWTUKbgwtJvroD04B4kFw8ffg57FUnk6gY1DaV9K8bo3y9aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791690634; c=relaxed/simple;
	bh=XooQBLPa4znD4f0t+zVyFMiFMBdCSd5pKEhajYEuQv4=;
	h=To:Subject:From:Message-Id:Date; b=ZXG9zBLn8EsKBhuTK25RT8wJEuHdv1fH6FnJGQnQnKBBku9dmzrzQtB08nyaFACGzkIyRoxsPlc/xvG7XjqaolpzONNHY96zrg4AV17bOxMMrpjr4ehQP6t5sIsBnYwaLGjCJuvtIZ8TXDWY+zlKP31OSjFgBpChm60wNDFVNhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qx4UjOw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qx4UjOw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66D9C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791690633;
	bh=XooQBLPa4znD4f0t+zVyFMiFMBdCSd5pKEhajYEuQv4=;
	h=To:Subject:From:Date:From;
	b=Qx4UjOw+ZkR4IeSANQ8Fg+OgFh7S0HlWs5zCdDrhtA8yAziZNER4rsFull4zbzpt3
	 BGNC3Zplp8yS32kB8VW+xOy0dXvIhia2rwy0vBzGwkv6bS8meMoo2i+aXQzsMsQfHJ
	 Nui+qVg4bZZajSzOVnddxS8MEwqNd/Q4ekExPn7pN5E4M+hBHl03nZzR2fGqvW1dvo
	 wEwAHV55QgNZe4aEildPAtx2JF3tsmxU20XXxHwSQtlBl6ZLkY+b5oKsCUXZl39m/3
	 tI3ExKtXeLOe7AC1r0tMbvH8N0nbgcpazbzcly5b43MLrIGZ88vOcunP3aivedUDD4
	 fK5Efy0mLHDqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2E0ACA9EBD
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179169063369.18208.4476115013169328721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4385850887ff6793d318dc965914bb088c420f3c21d66264409f8d0a288c2455
Date: Sun, 11 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791690633
