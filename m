Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F9C61FED
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728231954; cv=none; b=YJqtVomK1rSXMA6TtZTHU9Sx57lF7mzy3sW9KPADOlrkH1gJCpm2ObHzg75DBM5NNdPzeKXtyIsIrGF2A/9KGAD77iZ4Au4qUr1emRUypynYeP+RtTDgbb0pFZA5ebw3OZYO1djE1OUnmdM0NvR2Beofei6dAf5qLutFhii9qe4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728231954; c=relaxed/simple;
	bh=WRiR4THURUof7hCSg51v3O1kSGIrg9x0qgleLBaR34E=;
	h=To:Subject:From:Message-Id:Date; b=Hs9DJyY3VSyJ+XvtMOlGofLY1dA8vH2pQHucA+MHnTOnPnqczWgGT/TAS6LlTIgYBt7ncMl35IGhRr7bdZuYadVHkQj2EM+UUnCLAQb0b0m3d0qincsYHTKWn7LSk62wD1Y7IVjJImUQf30TWSCw/jI2oiQB0WeWp6m6QfR+Ngw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BD5N9N6Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BD5N9N6Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2BB6C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728231953;
	bh=WRiR4THURUof7hCSg51v3O1kSGIrg9x0qgleLBaR34E=;
	h=To:Subject:From:Date:From;
	b=BD5N9N6Y5xVu+xm880RA5zVd17tgEYE3HKudb4xAnOtnzMjg9+RXZFNIYtFTqRk6+
	 BgnFNX2kPMidCm1TLpRqhG+TsjEaUh/2wyrJb17aWeDyTgZN6/pHZRnR8GmyP26V7d
	 WitjXMpz0sT+8bcouAKvhEG+Si9MpEsR5oMf35fINb66y1nGz/ToJDeCAYSM4tCUvv
	 35o9XjAtWPZJc0lDIA0+tjfLDGZCz0n44a0rxIi/JUsqYmczPscOh3qmLcvRDPsJnQ
	 TgbSuWAqdHDvaSuhUzoGdzX6n+9YuuXBtwK+ozZE7es+t8a21upcWX29gvRBLeyeW3
	 tDDMTfYC9ckVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B69CCFB424
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 16:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172823195360.31730.10474558341761992829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b0477509681106a8a6f0cbb240fdeec00486e1406752af1e8a59baaf82afa5b
Date: Sun, 06 Oct 2024 16:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728231953
