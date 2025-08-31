Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE5E2BB17
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756621194; cv=none; b=dMlzY+82jAz46LlESCUIHDaYZfaKxUz2in4N9DR3f1abl7tNc5vKm+PLKuB2OQ3qxvvGlr/X42BG5JIT7RkwFZnRoPMPWv8tIk2gf0ISEn/u5yOQD+N0Lyfkn8R71wFrL5aDI1AxzY0+52vPElx95MqE0RIZyrARehEABJDMK3Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756621194; c=relaxed/simple;
	bh=bjVywQ9bKIZ4AyaldhsFfPUdiH6tI34mkgfmvPwOu5o=;
	h=To:Subject:From:Message-Id:Date; b=aMDduMvTew9xPDGbZJzVKmSJ8dsMkAl/l92K85ktZ6aqB+bf88o5EuuhnXnZg1wfJWylgJ9BhtXu4gNaPUQ81V0W/Hy9FOTibD8neM1MpFsfvow1Mxnk6tp1coq/xDXsH5zk0MvxtXwrIXwVuVK5o7BMFXue33qeco6HyhVWCJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MnoFvPFU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MnoFvPFU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA601C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756621193;
	bh=bjVywQ9bKIZ4AyaldhsFfPUdiH6tI34mkgfmvPwOu5o=;
	h=To:Subject:From:Date:From;
	b=MnoFvPFUjp0Uh+QqX5OpaB5iuRfVAwQOGgO1mWH1cH7Awwe9zrNXVPkK3/a1s+3SG
	 L8EeF7oig/XhgPYf/RE6yzqzzANEAEsrmZf+L9sLFXzH+2f9azpzYSZ3bFSqqJ2MmV
	 Ge/8XFxkp4LHHbQnK7NyZ1B0YqPZRXSJIzWaSAE4KthiI+sfURs8QeHD275PBV6+nO
	 H6zLBpiqWTgmzPHv9Lr0Vv3tYPwbpq9TfyEinRI7sYwK55ihRa3211wNDlKjpP+hCg
	 o7WIs6FV+EhM7/BAs1xx0XoN+9DNiU16dFEVKH4IuRMUO8NQxtvaI8VwWaUenpvszP
	 yBHwGBUI3eKuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91830CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175662119357.24452.9182757848226289288.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f4443108c763276a8b9492594b53ebacbfef4ccf76dd76d0ad1f101c4e8f9c
Date: Sun, 31 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756621193
