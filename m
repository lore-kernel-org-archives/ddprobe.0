Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D7813EFF3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745908195; cv=none; b=O+mMKiba1hxbYyXRbU5njd/IdX7XXFnXfFJpJkSo6KGVMOK7GeBBf7zpBK+wJtLCfkrg44YC6IHsDvVB742ZOXC7rGrgKw6dG9JmlYhFY3/PhNv+lXDD1cwQkoKtH50bGkK897DM552JdrlWYaj08ZMAZI0tNJiz+7Onwhuc2dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745908195; c=relaxed/simple;
	bh=MjHUZYcCD4XSB28WS2V+qZ0I0BgyICxELd3vVN8n5UQ=;
	h=To:Subject:From:Message-Id:Date; b=ISKD8pkT2MgwnEb8n+hYK5PE7NKuz238QIZ1+ZofOEC2yVwlyyT7fQNd0beJNjhoBj1rXsp/3O5P9MbTCnWkfFQdxDY1RJkBb9o/Gp0+sfBIMrLOzuRhyYlRdgV/HV8igDy3Ms049QbD0uJya4EcKJr42EZCJkELA6AG23ibCtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LeXkxNH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LeXkxNH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02E5C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745908193;
	bh=MjHUZYcCD4XSB28WS2V+qZ0I0BgyICxELd3vVN8n5UQ=;
	h=To:Subject:From:Date:From;
	b=LeXkxNH7fPNFXjn/XJ4YQlXtXQn5ZQUHHOXxX3H6bv+vtqqE8/VZ2huDCu8S5KezQ
	 BRMjNqEr9h1UYfHmZ468srUaJ28uW0ZK1VxH+SB2cCcwvl+K1T1wympsiC1yU9uC06
	 C8YKpWQXShofIDL4H+s60zwPZXtXhT12l3DvcZ5iMSLuUA1OpYWrC89Fcr+Wk3QP/p
	 tZBbb1tvLplP2jEI44/puKlHRY65HRaqjzTeLuD4u0x3LUfWAGVq53JtDYyWB4TChz
	 aZsUVRUBlR3fjUaNq7v9shaTo39jc28QbSArTPjnmQHC30EEFvGr2+JE6jFostt3FG
	 4FU71hwHDCciw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDFC369CB
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174590819357.2732.11761011306073712228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7df2aa6ff42a3f4cbc248d3239609bda6f5130ed0d0b9b2c550169016ad37c3
Date: Tue, 29 Apr 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745908193
