Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F2E31B3B19
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782030994; cv=none; b=EC1T/9/EaI7aZ3yYuyHBjUPIBYgPxk1obdtF9z3f6Zt4MEgwTyzdyINk/OimKeS0TKdItfQdHYqHepllCBAjKdz3ONeiGzdjZ8L+7cp1ed2WNtLsDmvbHBHsr+hUbAwV81VMgQM766pWaW5RizEYsgwmZEPYKaYkhePI/mlI8dU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782030994; c=relaxed/simple;
	bh=Hc/GJ9XWxMGbOhtTU3o1hSKFYS3Xtnvl7gb6ClGpEm0=;
	h=To:Subject:From:Message-Id:Date; b=mXnP75U3U/bIuQOmLuiCbYNTNlyreQQHLwUQJ/8p+gpUxG15ttPfgTQnO3srGMy1Porv+BD9JA9xG9+TeMIy0l9/JLlX75dBea54rWcNdfv+9eOmjgZ2OXUO4LAX63aQp1C/0Xh/KaXhYTZENg9QUzK0Bui/j4N8Fqzv3MgSpZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ppC4Trg2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ppC4Trg2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C4BC2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782030993;
	bh=Hc/GJ9XWxMGbOhtTU3o1hSKFYS3Xtnvl7gb6ClGpEm0=;
	h=To:Subject:From:Date:From;
	b=ppC4Trg2fuF5gkqvvP3ok6JsgmgNyKUPQGM6PqEumK+zV6NEqNCgl3F8WBaxQ3A1Y
	 HB+fJgDYGHIoqKrjin29gZKXrMpfzjrGNQwAbJqNru7ulZOiLvIQi22/716um4g0/F
	 /DDxEwFJtOKfLJyT5OZmwStNeQNmkNQlAuL2X9LDOYR/bIoVJQe0qWAPHxHOS7WhlT
	 E4yxsyTAGMHAZ9QTlJoNQrZGJfnikWZNnYlkrw2P9bbVASR2soeqi9ETsq/jDFwhfq
	 0HriuRKRbuRt6gwhIqTxZrjdP7rDcjppfcRuKLMUQEZqDS0aEHE/4IimE21RTPajWe
	 JXXbftGu0hogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0C3CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 08:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203099374.4093.14189907159947320717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba145cbdb6b503e38faed943e74bc5146fe79dd78577c2589ad8b2131b95f9a
Date: Sun, 21 Jun 2026 08:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782030993
