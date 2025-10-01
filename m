Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E576018CBE1
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759333194; cv=none; b=QTD68+AuIji5ASCNVK7kfqO0pU+fCf8pZBc/MpVTKZli8GQKOPAyTSx9iBiUrfzcW4j6rxMx18Eyj7Yoy73C6xvUJgdNzKYzUODnP+lTmrVHinlrjYJVnNfeWGZm4KGS0XVWq9arnbQRkDDBKefoxb97F/6TBNBNFnI2Ton/KB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759333194; c=relaxed/simple;
	bh=H9E47zghjsef/idDJ2R/aqSbkm+tx4YTWwwQJ8pJfB0=;
	h=To:Subject:From:Message-Id:Date; b=VJWcotpHRGxAvk2NsVm4O4IfTlJbB/0/P9o66HGOEbkOONOOzNdrFLMC8pWB8YL5ZLA0ilpbC0w2hClBmi65nbxCcT+xKJ7Zp/tadNs7bb17FfwBgPRQXKnhLG4QOkHqMqsxfY2WDleIrBB5J4RPSiudkFb/46G8ubmZdaPrWog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLEyWpzW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLEyWpzW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA108C4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759333193;
	bh=H9E47zghjsef/idDJ2R/aqSbkm+tx4YTWwwQJ8pJfB0=;
	h=To:Subject:From:Date:From;
	b=CLEyWpzWjetr/FrHAC/abuqodTWAYOLQn5taRt8jTSZn35vCz9AD13oi837iaMjAQ
	 LnbMFCkoxbX9ARnpZ663Cfb9sVqomJhQ5/mfQFjt9kP+Nz+Z9flF6uG8TdQkc1rj8A
	 W6ZBIIXPPMKvDnV03IhyEz8eyvq8Hj6aVoPzq2wKG+HqjL+iupiILpIMGWB5pIbdof
	 MtS/cbAOOoLuYO4545FopPEjT7q4rcJIjigLqjh2T5U1ENJysqiPkQ7glvXYL1SFvs
	 F9liwq3LbQMdbJrQFnZcT9Lgdp6SltJvpwpqE7Ea+H2yEmYkCYAnxH6f1SQLr0L0So
	 ZjH3wemP4Xctw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA708CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  1 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175933319368.25259.5403145620480664150.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a7aedd0664b7d4ea4b46e5e7161310143cbd3a89ec1bf95b25e0d6a0f3f6d24
Date: Wed, 01 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759333193
