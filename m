Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484CD26B971
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762346394; cv=none; b=Fc1hGmBBjYdWypKRHRtOo2xWPGiwmyVyivJ0NoaZek0ngdEqHkYsUPilsgIOa/xJERXaqFWP7xPnVw49E5TolEuoJ2oO/4QMy+hgKUFPW/MKYjzPayoSe0TQEjVSJ1oCVR466xmxl1d0yqSUCpJ2tgoCb0IL/3S5qt+LBxsEe7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762346394; c=relaxed/simple;
	bh=SsYcsmrp7clELq5N+96AFiEq3L42Y6piw39CZ393ssI=;
	h=To:Subject:From:Message-Id:Date; b=fluHBh83EC0Zf9+lvNKRtjH+0GIT3wQ2GZsZtmql/5xIqChrccZH7WD8/fNqCSwogmEnsg7dg3Ed2AJKN1BE+WXBRv7Dv20XZdIrVgwlEYYCtmq3YXH5dZpYVhAv6X6g0i4V04b0njT7olKh4Lo72XWnuby6S9Xx+HAq9KDaH7Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cQEbFfNl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cQEbFfNl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3858C116C6
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762346393;
	bh=SsYcsmrp7clELq5N+96AFiEq3L42Y6piw39CZ393ssI=;
	h=To:Subject:From:Date:From;
	b=cQEbFfNl7jBD2rpZIBSyTmMrWRUtR/dvD5Hdb3L4eSnUvsEWJZSqtvDG14goagro3
	 ZcTmszeS1c+uGHR0r6nPB7aB2/m5GTHswOInbKJokTGcZGHrdMH04b5NuqOlpTaGtl
	 tDg0ikWWSi8gLvNrhbkEmBUS38CEmX/F+bFEu5z8HLYhPysF/QwJd0kaF1BfPkKd/A
	 C7MQnHkcTH/RfXcsA3zYy7hbhzC7022d22bEcvVM/AyFXkK1+gbI9Yoval9WwLyIW9
	 oVB5FfqPNjX9r7P4AlF+LGThS1Xjbb0ro9u6wQC3ZM96V3NrmkLmUqXuxUj6VPG1rr
	 Rw4GQ3UfraEAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CFCCCF9F8
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176234639359.14766.11515629045392796922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9901bc6e29a5bfa9c1df6f5d5612d09758179a810f204523185ddd2e42cbb72d
Date: Wed, 05 Nov 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762346393
