Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 540DD4C8B
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 02:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716000143; cv=none; b=tFTxZt5z8qm8jLb3KUYngJASWM54sV4hXiIKAhxC8VwSMf9kCp563tNf6l6UCP2wmWMKsRsdE4U1hUOBcXUwJ7a613GdsrJxm7VdLZd+o41xkujspcaXUegS6Cwu0vgOmd5/WWU/ahSPsKS7O14exQtvAXghFaWKl0eceKrrZL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716000143; c=relaxed/simple;
	bh=21VvaSvwRJFY1I2jco0xXszf8CWbBu0ujZkmlSnsluY=;
	h=To:Subject:From:Message-Id:Date; b=DLkQzw1PEH7oTl+cX1I0J61Vo51gShnBxARXiXzDmnn8QnZESlegbHcceTyOLP6yUHmUSiW673e9jumw7+ureCX0uJ0LGnu6PgKmH8ZSmIqXBie1SqwY7mWNIDMUsistrfDAQpUhPAjIp/7/4HthAI72nZcy7+aBwucBKdQ0Zyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQdKUCya; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQdKUCya"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9ECCC2BD10
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 02:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716000142;
	bh=21VvaSvwRJFY1I2jco0xXszf8CWbBu0ujZkmlSnsluY=;
	h=To:Subject:From:Date:From;
	b=XQdKUCyaphqL4rz4rUnqzUbpe/5TCl8zhm4IyQCA1SMPvekdB7HtviUKvInPXgVET
	 w3n6MwqwoDbIVD6GLrAMoinMO5geeSCea+6dlFX0tDZx6bisIzsJBLcV6PIhwQKmt0
	 B982jV7mvt4Ji20gEJf8k8BXgjs+l95g9pfRN/YLSs5dxtx2UYTq3g06QmJhz+72s8
	 vAN7+C1LvYHqFfYLO0VWLz+Z3LmcF/DGRXY+0La51e0k5LCaRTUaQBgQ3XEK8mCxqM
	 zyiTIyR1hayDb0uQ4unmc/9ezZ6wv70qKXorOScFfBlwzvTM7++ryJOYksoPT9aAig
	 6J4gt6cLWHSsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C393AC04FFE
	for <ddprobe@lists.linux.dev>; Sat, 18 May 2024 02:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171600014278.30628.3936492572062969939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 939164b7e37e2dca869808aae88c45d0626e0e911c27de6a7270279558220abb
Date: Sat, 18 May 2024 02:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716000142
