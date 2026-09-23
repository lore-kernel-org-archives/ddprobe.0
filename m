Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAAE47141A
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790199036; cv=none; b=JKX0gLJbLyhooaTnWfo0M5dbOVSD9hFP4R3TgE+MoNlrT58mgW/hElGOxL0d029+Q+sMIBrlOz7vuVP6dL07RlZri86UTmZuf+Whl79MS+VyZXz7gJgGXNmZK2krptjb1iqv0hzNQdetIkMFPfdo8wlIH4bd93+An/9G3y6JQ6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790199036; c=relaxed/simple;
	bh=7gtPqpP6sZA205cHaEEsEQSmUUqvP0y1GQv6pNWjEWQ=;
	h=To:Subject:From:Message-Id:Date; b=q8tZfp0m/BR3xkADyAZ6OJ2+eMr59f2n9Olz3Wt3JgUr+mWUL2DMcDw7Ct0QnzAzoy7qKbmBf9jyLmebGhbOkOVAjF2+rqpi4v103Sd8qJd68s6CaFl4oyoDKSfAdeQIsRrNb0byRUs7BE6DOpD/Tia6ti89aESR/ruq4uJ6xGM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OvG6+wDH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OvG6+wDH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B936C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790199034;
	bh=7gtPqpP6sZA205cHaEEsEQSmUUqvP0y1GQv6pNWjEWQ=;
	h=To:Subject:From:Date:From;
	b=OvG6+wDHjK9k4ayoyltOOSuFIGqioeAqOmSYtk29vQlT9t4wcFGloxwOgq591vL2s
	 m2HjKPBB6q2dYxLao537VrP3YUKszZiBHQAKpwtCb19RdZzJ1BKNJpmLKWM4HiyXzM
	 6a5cWFE0SiU21rrGtMOG7N3f1hzi5zWwHoYuU1faScavvcnq1MUtCL2H1dk1E+2po7
	 w2xON/mKNEBosP5D4uECOc3wkMDn5Tk7fNZDyFmMHViP1KxyiQvs/l+PJGsgZ8AqZT
	 Vk0cVCYva0RzN15YBXe8hpK0zrYkbEpwZtPSFzRDutUfrdWLvXJb5RDA+rQZnuYKwP
	 e3yOrof9gZ5Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D692FC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179019903384.1860.5220230859889465188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 819c0f79d73ed5f31f7d72a404570978ce0b37c0b039fced8afe32dfae426273
Date: Wed, 23 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790199033
