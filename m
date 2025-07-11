Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E11E21C186
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752250794; cv=none; b=SU+4jZHukz3EsN4UgW//Gg4NLP5vK+/S3OWn4vKbNNTE98dgGcOPyiD1TZXDI8TEmy1s7p73qQQiK6M5PffI/GilQ0CHq/8lehXiK29rI85rHea9lyY9s2ATXVYixhB6m1swZhHfVCMbV21JJn8Zn2D222luI16XR5AlNnkgkXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752250794; c=relaxed/simple;
	bh=IKu3VpL9piE1XN6nxro/Sx+TyvsHDAkTFsNqEoLuwm4=;
	h=To:Subject:From:Message-Id:Date; b=V1NxPUnrif1YtFf/S41WNLQ/acs7pGMOXSS5XJyTTqgdQ4/pOHL6mivcpUB0NyL59YgGu2Kp1Abz43LTZRusOfbucd/09j6YZi63tm5cew9na+iaz4OHnBe9Q7LwxP/H8+Xcy96z13TuTTv80W/EXut5ymYg99w33CXj7S5kDlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rAIhjc2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rAIhjc2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4932C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752250793;
	bh=IKu3VpL9piE1XN6nxro/Sx+TyvsHDAkTFsNqEoLuwm4=;
	h=To:Subject:From:Date:From;
	b=rAIhjc2nAAMO5UGlHmEjO6srP0cURFORr4GOPODuGrf5yIYDXTbEMeM3vWWCls+HW
	 1j10U+3Q8iIDVM943UXLTpYD/xRgX7VkCICQnqhq2vmVoDdTlLum75FzP3dl8zZYK5
	 JYZqYkvFQYXh5zyKK0atEi7oTrz3mx48bSSPkNsoTwRpLYIOCWyLV5HDCk1AZqGhyQ
	 YePsEXdORDnhnt6ytCI4v8FeqflUn4E5uQ52nvtV2Mq5yHks0Bt7TkN7/GX9wFB5ID
	 NfjpxMmfGkeAXIuCmiPmR95Azgv6mF2nGfpSHBDUtQKJPBKw45mLjU2rDZc+H9Q7bK
	 ROa/rs5wZadpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90242C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175225079358.5668.16270585632647953616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4070f5bec86bd6ceb72dad0007ef4e1095e5d254e9a10d96e28b6224b3e3e0fb
Date: Fri, 11 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752250793
