Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4355B23BCEE
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783739914; cv=none; b=pZwnpTVPwad4EtALWD1khvoVD5K5jf8H6y3eh9WS/feNfRgusQrm+ZF67cYZBZjXf4CgPQwrgu4OMobm4UKnkzRK3HeYz0WGGJGLEucCKs15pezCfll3gQgzTtOT9srjva6jlNjRKUUUXcP4TawH5IPv9IG1evc6/02pc3sx4vE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783739914; c=relaxed/simple;
	bh=mdij1XgGIV1b+HP/mjvFmnJqbn3KnYmU0omBlmCJ+Qc=;
	h=To:Subject:From:Message-Id:Date; b=YAQyF4Te/Z3U7YhtDm7z+4wClE1kg3HExng+ED81f7+Pf9bV3dAGmnihtSrB86S52V5/j8WHcFsbBXBIFkboPLpPuEp6hR+VS7iqERutORklfX7yonttpA+OH7JuOGYQS3oNBi4Va9u59aPgX5uotLiJmfPb8Y7jykAbwjQoJ+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mq/u+DG0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mq/u+DG0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7C1C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783739913;
	bh=mdij1XgGIV1b+HP/mjvFmnJqbn3KnYmU0omBlmCJ+Qc=;
	h=To:Subject:From:Date:From;
	b=mq/u+DG0ZAVkq7Pv7o0vDd9Lm76df9kkQ2js3Vgxv0X/n3pnJto5N7crLtuAOKFgy
	 AIudBn/qMC3XSfwEJ+9GzZqpiOTgvMEWkmDYkIIZzJvb7UTluygLy5/qYlTwMg4ZNc
	 2nYh9vakbybfk484uoK3A34W+FAUJ1DmYd5rQ611UCG8Wro2Lf7JnppQs74O6rjYnH
	 k0cGcumkNcsm/el7UwVUD5k8J98C/eISATG+B+8byyxRs6VjrQhSjwZrWt8anLtG93
	 Y4/y+jV9jzQuasfDS/EVT5uMA9H3vENjggWXC1m9GrY/3lGbW7qcLUZAxQRQmkQm0f
	 aDWsb7dTwAd6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5659C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 03:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178373991370.24941.11959245689862262164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68421a2c94837d159f270c82a928d8836d6057b4ecdacbc634ab79cee767cab4
Date: Sat, 11 Jul 2026 03:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783739913
