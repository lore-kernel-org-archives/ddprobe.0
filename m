Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A485220687
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764694974; cv=none; b=vCZlksjzA0kE5YnSINlScpbKLHUxVptXVFKxOSqYPNGlVBGEHEWZ+9PnHZT4Bq4734r6wBuV8vMOeTXmq58+takQtYlhp3qE5inKKlbyygkF+npOJIBqxMvbT1C6YKR9bQl1wskA9X26olpOgoobnLqjpOjFjonfqaccBRJYhR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764694974; c=relaxed/simple;
	bh=jZu1eReu4rP3VX7OGa+hfoiJ0pqEdOCMaupcsQ9Nyrg=;
	h=To:Subject:From:Message-Id:Date; b=O96co1ouUi03dCLAMQK+WFjLIrVzMsXLe8/B4S0Ord/X26rojc9Nj9q4nCzE3NL0VjL6eHmEXjD6TZ9o9MQTc/hmG5ZCfkUlmG+sfN5zXeSmE0iBvy8wB925qwWHNwqtZdXPZ+LXa085Oeq5ZSrj1e58dA3mBCuVVZNNKP7JLDA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svZTproH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svZTproH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76C9C116D0
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764694973;
	bh=jZu1eReu4rP3VX7OGa+hfoiJ0pqEdOCMaupcsQ9Nyrg=;
	h=To:Subject:From:Date:From;
	b=svZTproHoHlVcgxyY91APNKLYN6/sM4xFEl9Is2lsPZ6F2pTAxVXmuG2r5OOgfSxu
	 pSl6csx5vDs7W78MGTryc2Mcw64yyKRcLG0005p8nOkpbsbc4taJ2Y1NRTdYpScZXp
	 FCXy/J8EDJh4m5N0Gkoy9Dt0YvN5Dhij+GNkQIzMt+A5eMIVPYzcZbKqw957ipwNpR
	 iylBadigJqFPOB6kl0duQO8GbCaigxRkrvRlkdhOmlZEeUox5xweUrk6gFjhlOxBDE
	 PecjTH33GLyJNfPWklKvL3eOWeIQqxynL830W92KWZ4lRodjAB5iMKuEyFeIFlQBQh
	 arvZ8JHVTmYBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D86D11713
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 17:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176469497358.5566.9151245196084464334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a434d90a8634aa5b31a796c6efc02283affd47741c260f2266996e8887b3f575
Date: Tue, 02 Dec 2025 17:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764694973
