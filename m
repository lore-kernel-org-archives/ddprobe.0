Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328CB2DC779
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757615996; cv=none; b=WIuwuEqbGih18rwAku2a8FESKKzUML2j4wLF2BJE+jTPlCidEVIQJdvsh92qg7GtFa8Z5xKDF8JozWpfAuONvdvstavnVWP6NryKWvgjrRxr7TwYa6mdd1iTLPdHGYrvtHJNnQGL4xRwIlXlCd6Szeag6+pDusrzC5nfjMuSlCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757615996; c=relaxed/simple;
	bh=reOJYjhCvSusJMeRQbqttGgV509WimDBlUwRb3+HeSQ=;
	h=To:Subject:From:Message-Id:Date; b=rlXGYyYghH2dT8iwHPuGTJTbzhNLfch7E8ZOkfL73vgivV+mXoUC0A/Ja80bNvgBKFM8WvzLqZqr1HFC3zENFQYh2qVIfP+O5GQ0CQZVMAgyxi8LXKq9XgLU8clpPVG1TDOkgtbergx5QAcE+pFwvqKfYZikVJK95AF5f+fxPO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C2HsKo/Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C2HsKo/Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9303C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757615993;
	bh=reOJYjhCvSusJMeRQbqttGgV509WimDBlUwRb3+HeSQ=;
	h=To:Subject:From:Date:From;
	b=C2HsKo/YMAo9qVAv/TIUDldDuP6GaS3yrReT4NbOVy2qljnRFq43Dro05wU7dNmRO
	 LI0rQHYMCUVPetA6f33nENiL0tz6GF83yJy6uQy4aGicWcRTtUxJkMT8rEvAe8Xq/c
	 uzDBkcUnwnRWT5fsVMgtSSJYAcYyXr070+S6huxC67CLtcfl88qoJ3s1mg9beQudnI
	 xcgTvHAL0djSHqVTsQdqKM9hjMmQQHAXy0KQO8y5JonQmI+xA1mtoNk2DmKN+aWw+m
	 QM8YvyUjVoU1qN5pdo/DXa0f1g2PKmLKxuuaE7bSCl/BGHjkhgrMQ5hyhl1w9ciwc8
	 QDfycIZKVleuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 960E0CAC587
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175761599357.27341.15497633289492465517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bce13f1adfc99c80e82559ce1524eff2b8e05fe7b7d14d610b074b59de88ed91
Date: Thu, 11 Sep 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757615993
