Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E1775474F
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773318294; cv=none; b=KgYExSr2J61eAyjiqFA8l7kEslZOoojJ/xvMMy8LjXybm5AYNHSvsj1rI9TsE7xTmdimRlc+mIeHpRT1ssChXAx0mS/bjyWe3pMxhH//9VMY5paJDh1zNTSUvPKFvkefRbgwt6Bx/nodF2yeN9PrEe10LW2CpYWUtOdsbtSHVNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773318294; c=relaxed/simple;
	bh=DA4RynuxdNA/lxyEg/N0C2pFmTgzJ8iIRFN7eHpMOeE=;
	h=To:Subject:From:Message-Id:Date; b=cv979XlYcjs0qVjzc2WbWH2ES17koctmo1yge5a404+rPX7kf8l86xfkuIeI6NpOPFbkdR/VKLTWCZgPpl9bioomHbgZ+g0qe7osc0Ojf293KZBJnQvBpsxr5nesEjfRr0fOsCf7pi7sU+EFFjr1GkzkyyKEQKotYGa+fruI4XY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FfOgJPzv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FfOgJPzv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A857CC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773318293;
	bh=DA4RynuxdNA/lxyEg/N0C2pFmTgzJ8iIRFN7eHpMOeE=;
	h=To:Subject:From:Date:From;
	b=FfOgJPzvWrYQzPUKT51SwLw6kETWZxwm0CcJQfHDBvtirVR+Ej7R88zctFBRxVsGo
	 bwmVC3K8mq0ydWavBT3xjx9FxZ/L9zOJzS+r+31vw3zy7ElthsGAUFlJl0z78M4fJL
	 NwqJo1ESr9c4g9ms6l4cAaYT6hEpEzZ9ZYYLZmowZ9qalgYR7tcAmqSd8M4BVNVhXL
	 1Da9hWn4DcafRFOnfPgYZF/fV9/ZlLxm2RFDBynYuNwcM+RWvtSbOBIE7+DMflsi8M
	 RrD0E7mmkIroYF4QXKaBnDpE210r6ezgPnrAu2gdvFR2YFV78WAhlKAiTTRa29iHRj
	 odgfpyWJipyxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99CE1105A591
	for <ddprobe@lists.linux.dev>; Thu, 12 Mar 2026 12:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177331829361.12588.7945757973316599505.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6047dd00dffda56c805011bf017917b7e3a672ab3f0721ee81fc01d53cd7d27a
Date: Thu, 12 Mar 2026 12:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773318293
