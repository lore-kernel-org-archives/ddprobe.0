Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E80940D59F
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782753514; cv=none; b=Q1hjr9GOnatqhu4OZltooj/O+OT7p769OD+9t+cZYOCBya6Kx0ZuCJ+vEdtGQ8zg5rNMTKQHMq2AqykdI1cna2T1WXCnmduvk3kJojTkMWc4HagVHyTxxYJM9rjwwfhIAwCpk5UXWbpj9hVKu+fABLE512uoAmh4REc2xeRi7JU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782753514; c=relaxed/simple;
	bh=hewCh5y5bEOGixNEehxXHbCqrLymK5JvzFn8RM4qerU=;
	h=To:Subject:From:Message-Id:Date; b=Rm1b3YyeAfV9eK0f+8pGMtA7rDcY8793yySvIb8+Shy1ofGNA+qIQTYkm77ecs1NvSa+Ss7dIW/nYSe5YLa285ZCOxdRSa3mG9GQSNg4eD1m4L9ZBEw+bPvg6WilRL5oivvLbo+yMLVWrcukgmrlPe5PEPD9qKU49F4WFbySXk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EpghyNTE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EpghyNTE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9220C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782753513;
	bh=hewCh5y5bEOGixNEehxXHbCqrLymK5JvzFn8RM4qerU=;
	h=To:Subject:From:Date:From;
	b=EpghyNTERzk/9+l1aS7N1JLFDmB/dVGPWRnyT7qJ/IiRjW+tCV2UPP7blFMqUeEzr
	 dxmtIaJhl5z+l67egJnarKg5YtVgGQErjP93ba3P9xH4AziEqHB1q/cyxBRuO1UvRF
	 4p7GBp78sR4YdNpJcNBRkYZrb/79I76RynHZ0hbEsP3MGw8oxyoa14CYQuxDGzlszX
	 jlUThCiTd1rdpQ/n6xAPga8XJYTG2GG0UmDiI1cCHTVTrXNqhnzXGbRvIi74QZMS9b
	 SUvKcqtTBrWOh8Jd5DRa06kTK+9gu+SOnWIbPJiSvbqVLzT35JXSWyFanWQNuAlmTn
	 YCMT8J2LCq1OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B08C43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178275351369.14927.3550824633754094460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a6f731297c090b229bde7e26b954bd3fe8cfe40caca1d1c814ccf59deec852
Date: Mon, 29 Jun 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782753513
