Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5370F2DCBF4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780286074; cv=none; b=Mz1Vkkju6fWmuAl/fd/DZRX2opLPyxWdsaDZkvmqIhHlkS2V03sowXAGmGOpKZ2/D5wZrMafWxyDMXEG387IRnRGIhWB7pJJTsqOK8Ob9hapaq9H/K4j76GtoQH19Xw+uYLk2vFbQUv7nb4MYLEHQbat4TMHKk90OR9jI8T0QW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780286074; c=relaxed/simple;
	bh=2Lqbzuw1XMoi88tiYBu3dNFE69PFvbxU4ze0h16AumA=;
	h=To:Subject:From:Message-Id:Date; b=bUziRM6dcnCWRtr8OjFAdJJ+dsehgy/qXVHl+S0Hryt/T2AO879M0YSFOEG53KT/42/fJkBh7/3UYHBTWZMO6rPlmYO27f2lbryNbUKKA5S8RdnC2ocK6NeepzM3MVUF8PQdsjbPspUoJEBg5NuSQfP3/1REqr0IOHWZvbfsXtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vKBQXu2C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vKBQXu2C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD985C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780286073;
	bh=2Lqbzuw1XMoi88tiYBu3dNFE69PFvbxU4ze0h16AumA=;
	h=To:Subject:From:Date:From;
	b=vKBQXu2Cn65IN1x0fwDbcA/ObB7c4zPguiUDLLcL33BWMLRTljUslUsU93hEp3zWy
	 Va2nhj/oAa1ydbtJKwKABziep/tnk6v8p0zZxAL5gMKPGxVOWpgd/n/ak49EtnKA+o
	 ng1G6NxkqcPJIhCrmURmWZNM+RNNNQx7DN7tKJygC8idvCojX0QQmzr+g7YMcN8j2L
	 e1YKME9G8Yh21xp7/ToXv5AOLwT3ZVqAR6g6c+50/hSJpC6dXlS4uN5v/yt2TI8Wjs
	 4V1ugjbHicAPffAh6CwD1WGrCXEPgyY4IXfYnxpMt+Wrl+1pYJhDanonImBj7Me/x4
	 OSrnOYxw/zipw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B045FCD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 03:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178028607370.7669.2778834051555383450.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be144c36e0287b6491b0a1027f523e588c35e69a4a108b49d98309cce2cd046d
Date: Mon, 01 Jun 2026 03:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780286073
