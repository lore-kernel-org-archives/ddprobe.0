Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5FD747F2ED
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786031434; cv=none; b=fKAR640qa87HTbKCTtC6KKF89gJ6jewLwA69SL2dedWtldaBZj5Fg2aYM/IlFG2pplL808wl/8sEf2OCzebLAJ8p4nEX1qClOxeK46uw0EVLKIlWmlBcDX4AVtky3fYvHPTKog1Gp7TNLqM1Ef781ipKqm/yhurkDwWZ4XSILBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786031434; c=relaxed/simple;
	bh=7PkP6xY9XKJYt5wgR9V9gFIVggbY9XRI7yHUDj4eBq4=;
	h=To:Subject:From:Message-Id:Date; b=kBvmhV5f5q6nhPJAmiggNs7K1aozpEiiUut0rbtA5hb9jnO9OnpJ9cFfrCVgLsYQosJD6VKX82aS2jwP4/n2AK5MxOcRnUsagDXdvdpfKTOqe5IgZa9VCSVziJK0qxxEj7qRSurOnfye1+pf7gmLs801ZG6uUv82a7TmoNfqTCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZP8WV9TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZP8WV9TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD920C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786031433;
	bh=7PkP6xY9XKJYt5wgR9V9gFIVggbY9XRI7yHUDj4eBq4=;
	h=To:Subject:From:Date:From;
	b=ZP8WV9TBEvJumPsYeoo8FpazoXUwr8wP55iGrQShVFMbzk/LLEjuaOrtOYzoS3qB4
	 QvJY5npG8TgjOhhE4kgyDWBBK8839nbLlyujYtwhL9N5m7lgTBV/iDO5bXHD06IM4z
	 nhlYp3LGmZaH0uSw3I2UVJ6awrk6XwSGlnA9wBharXjg2v6eladFvoCw0QnpdFycL8
	 xQ7FIAFFbtGz0NFTiWnbEy0YIQrvKyl31CDLHHEi2ptwOAF4LusF8NUlRNWwHnVkma
	 JPDnmr/RqpwNlF3BnsBBgkW9vY2IHqnfjy2XLAIjGCt21/nO9YUjQzuiN/5kFc0hAO
	 y0zcMqc/7iP3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4CBC56205
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178603143368.20500.15535871520497636984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 227baf615e4d7fbcd439f08d0a1a92135298d202be24d399f08ed021bee76850
Date: Thu, 06 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786031433
