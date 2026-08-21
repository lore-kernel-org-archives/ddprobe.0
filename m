Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 545AC4A33E1
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787320834; cv=none; b=Gx7GYstvNxwbwz4HZ950Jc/z8oUREUFhEm5ibMmrktw9zKM594JnnVOyJRBFhV/e6Jq4h4J2xUIMFrK5yK9kX8OakdGtAaw2waXNf0Nvv/ozsmbgkK58ZViyxGM4/SZUqxoHHz/ySYNYv/BGtHV7Q7rCqzMWtv6foqlP0Ef85xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787320834; c=relaxed/simple;
	bh=zyVvFkfVgvSBHrpdrvq8q5YgNyAhq9vLz/0ylqc1uXc=;
	h=To:Subject:From:Message-Id:Date; b=USkqQLw7Z2e6BRdVkY7xZFkeYHFbXh6ZrLHzvViuOiOZ7SuR7+1XwX+4MxZsRxSesOpPtYQwCsUDTuHQIZAQQDrCmvviBqjRjusKPnk/rq9dqBphr2oEQiXLFXotOT7YGgeUFZsjW/6Yb/raXfvNlYa81jS+io+Zevl0lY+JWRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/Gfg58Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/Gfg58Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8011C2BCF7
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787320833;
	bh=zyVvFkfVgvSBHrpdrvq8q5YgNyAhq9vLz/0ylqc1uXc=;
	h=To:Subject:From:Date:From;
	b=D/Gfg58QbjcQA2BB6+Vd5W5jtHIlQJFNnIu28leGF3wh+f3qPb2bQFYzR8LG4iURJ
	 N5YIbwrgMQ/LG32CU8dn/Zwq9toVNosrsp16jfrZ2U2i63wpPj/S0pJbrcghhkiIMP
	 CidawIVXD2IwZ5/yVIMVTXYo8KQMyYdAZV7HZnm+ctyVg56e7knC5Z1Rwn7MhDMo4+
	 noMZnEFbhxSbXbhuaPoO6YaVhDYaWLzRGFxC08io/1yk11gvrSTH81sqF8qY7XE8Bi
	 9bzHs4em11AZXcQZfAKms7N+2cQ9C18itWScML4NDjqm80e3bNlm6cWdKQ48v4TJnL
	 kTuUTvGFMcNcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F41C5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 14:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178732083370.20841.6701831512709311625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b28b49bf0cd1c29de716e98e4a26a720fe835387a1df072d185632f6d48f446
Date: Fri, 21 Aug 2026 14:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787320833
