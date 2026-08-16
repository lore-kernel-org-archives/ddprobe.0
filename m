Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AF9F18C933
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786842034; cv=none; b=s7/wBhBeKOq3sh4x3OLaQPwRkIFafVM+z1ItNlkE/xVZUIh6u/yS1hlU7Mw0bnjHTtXq9ZEuQ4WTJnyCJyE9FlJGZArXQVYStk2mqm7FGDxdxaoIwT8k2sGqbDc0znt2ow3IZUeN5YZVHDpkf4BFXbaR82KVPAKn21yHWx9IUTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786842034; c=relaxed/simple;
	bh=ORlLKJzTl7J8rSeW8gp30z8/JbJ34WkzwWcyvXkSfr8=;
	h=To:Subject:From:Message-Id:Date; b=PuV1t33eeGqnGvJxXJ471MBmn2XZ1xS5vWUBURB5Bj0dNAZPeFJ0xGRevL+/pwFQF6QHLG8rk8+25wEy/r5c9sdH2QeSfwT798xX46hI4+lrYjvy/3XMPiXLuV1u54rkV+Y6LwOWSPD3LPiS2K1Kevj3FJhdohLhsOKzLUju0yA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHwXQuTO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHwXQuTO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2718C19425
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786842033;
	bh=ORlLKJzTl7J8rSeW8gp30z8/JbJ34WkzwWcyvXkSfr8=;
	h=To:Subject:From:Date:From;
	b=GHwXQuTOTaDlV+XF4p9sWU3vNnzTsvENBlf4qGU7y7x0gZHD6PNukJIiBYAEDWEhD
	 slG1bhtMKqRdo2PFSoN+FaHY/GyZkKnE1b8w2/59rIVezMJ9i1p5imcqqGMWpII46d
	 rtL37KPTiv1oGQyYJa152SUzUXSkZGy2aSrhAN9IJZrWcYgY4KvnxZKa5K0xPWUP3a
	 Cj9aHQAI0fpJGPAScmhAwLtlsaNH7u4X1BWbOgcoMFkg41fiX5Sq900FWXrcpCY8e3
	 TFufvODxBo+/1yVBt+qT4re0RiNeQpp6kM/EuGEOFK6AbyfhYL2hABtYvRbAJljz1c
	 q7nKp469sC43Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE65AC5DF67
	for <ddprobe@lists.linux.dev>; Sun, 16 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178684203369.22372.6844522618456939419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7369784efc8cd23090c22d8f045ac39b06b3b7863eb67b13f6615f29a80507e8
Date: Sun, 16 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786842033
