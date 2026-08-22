Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B900F2D0C75
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787364034; cv=none; b=srF4KuYy7t3ahKTsx/fSW0TATcRXC9ZTJjnkMr1iwXb8FXf9Jvpdyuh0M2Ja7NFGbiVtiDls5ZiIFG+1PJYh8WGwQulVdFCMfSFjOJpJ/94biV5qm1XFN3lEFWImuEEdFEjieoTWJDlyjQigCuZVTjDo8zTSnla3D2A/ctEAFGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787364034; c=relaxed/simple;
	bh=bmO1Vk3LLwGe8udp099sqY5pf7YbkXCbNOTghVaqbCQ=;
	h=To:Subject:From:Message-Id:Date; b=nH8OiipOoScCmf07Pe7SU/a6hBtkD+8HjOAV4v7pDy1L7mq15cBacoD881eMaWTeMV1VwUca9I7z95oYHOvOj5gclB9O7OYvy04QPcGsRAtMYl3j7iTRgrF3ruxlWA1bd0Ehk4TVA1a6WP/tiKq4m5DjV7S7H+EeqpjVk7/tq0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F40e/O3O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F40e/O3O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA869C19425
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787364033;
	bh=bmO1Vk3LLwGe8udp099sqY5pf7YbkXCbNOTghVaqbCQ=;
	h=To:Subject:From:Date:From;
	b=F40e/O3OJcaOXTydxcPhjn4zCscWNMzGd8EdYH4TrkZllXT56TpbTeY6J1qO7Yds1
	 jnXO5lOhLhiPmqT5TAAEsmhcRO4iZaAUrs6/t+DxdwaddPyclosixpmKoFIyW1AlcS
	 Q+mVPTl4nDdnj7DYYZFixt/rZWnTZfyHXUEbMESc7rsfasVwxCIAdjiv81faja7x9c
	 Knz2xbrnx16vzeTlhA3/f6NLb0rT9ASYoWGcEsHdmUbY3LtN4EQGdbFJXq24ZgIg/r
	 qTchVP78ORdgmcyI2evvNO2w2uKdOUUSaNyf2Z++6btSedbz8JyaLABGhxHAHPxwGJ
	 QJk6gZqDVjTLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B25E3C5DF8C
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178736403369.24889.14249473982261295255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c8c6f989a9f3368236d3ab82f02fd869480c6f19a86134d97ece784fbf9cf0e
Date: Sat, 22 Aug 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787364033
