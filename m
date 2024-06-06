Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60747FC02
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717714643; cv=none; b=QNAa+EpfPcrOLLltSmpmnyxvkNcGdoyeq52rmzJ7DeO1jYoodFWTEymCOvKefHL1lV1rYxMPuio2uUn4DaKAYtYCKihysy3H8q3YLqYDfm+ejTbShm+Qm4cMj9My9CQsX/vDb++sGMARuw8Bl3JoA5Pw5UohyIeDL/88vQk6uzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717714643; c=relaxed/simple;
	bh=L+aWsmRRQLEu56AD34J6LFtiCgUSrwGNTO5ony8W0xk=;
	h=To:Subject:From:Message-Id:Date; b=N3Oc/e5sSkB0YmPUI8ak5luAszKejUezBSvnoIMasSUT3bc8rP1pYQologuHfF2EdC/Mj7fhDmalMqFn2zgNUslt2kb9/d/264wyxORZvNOjeBnkQQdcJYuD7t33P3Fvj/TDkH+UjJcKSQH8h+6OWOlM9ifRIHXgyNuuEkXXvDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMKWp+Rw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMKWp+Rw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0820C2BD10
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717714643;
	bh=L+aWsmRRQLEu56AD34J6LFtiCgUSrwGNTO5ony8W0xk=;
	h=To:Subject:From:Date:From;
	b=gMKWp+RwY0anJopNRtBPJrzDWheuOi2NELbD7avc4PrN9s7hpJF68ovc4yxPLh3Dm
	 1xPCNSUA05Ffo0qjkBeQ5oELor6hVvMV8QwZXVavCnvgck4SAQXXDUovtK5orxq29R
	 /T8N5QqRPLHIFJ0mPljx6MRk+clzCWLDC+BDLHTs19y8QpUGrD4ewhPXytESlQIvqP
	 W6GWz8B9UgjxKiZr0IUytJroe2+DwqJFc9OXd5qHjr+eH314bwmAasNc1lVbVw4l42
	 tAY8ebXeP3ITeNmcWLsayS0jKgAop73IHkas70hUVU3NDAgbaQniToxxH6ekw0/OHO
	 6RiyPGaSbAh8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D692FC27C52
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 22:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171771464283.12850.18260911876187085152.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ce3ba9b66c7895a1f1c90a928a4a5549032e927eee19c52978feb7874f2035f
Date: Thu, 06 Jun 2024 22:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717714642
