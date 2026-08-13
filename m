Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C038207DF7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786596034; cv=none; b=j5n3d2/qUKO2cuWlT+BaE7zLXtMR6Rxxx0Mmj3pbfoWbLiS/TgbY3vIWSFbvnhaZfJbjHV/73/LJ9TDQ4PvmzQ3Zc7ZRs2u6TR5ZG88hAwgK/SYfOspbZ9QcrRMcI1fTZHVBeZI1UYHXvmqRfzV//czkCCo6nb3E7+ifo+Y7t/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786596034; c=relaxed/simple;
	bh=lFoV6mufiTxdTSumHmpbruBUy3FR2RpD4ZSymyozdKI=;
	h=To:Subject:From:Message-Id:Date; b=juAAaz0P8E6FTlVpAhMGawUrt5oG1w+OJKuu5tvnG3z3RdgXZDAIbrB1AoUDKJJUvG0ifa7+olV4w+MZHEsUlhxOG0WOv21cYN6q2KY7lgCa+zmJtp/EWZDD+7GmzQUXouecpTPwwgA7b7oRdclVCjKos06v3LOnNxVTZzmqILM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CnVxdhIp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CnVxdhIp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E4DC19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786596033;
	bh=lFoV6mufiTxdTSumHmpbruBUy3FR2RpD4ZSymyozdKI=;
	h=To:Subject:From:Date:From;
	b=CnVxdhIp7CCBcNZAuddzglm578Il6WAbhjRtLEIYxFJe1U50nMwFUPdyeklwWY7gm
	 Je+jwg2I04QcMfDj3opgkXPiLrchjb3AHKjWX4G17TZ5EJWvfZyiJFMvCr+Bn8w1AL
	 Iodd8UgUXTOlvwC/XValhpGKOOp6JiOTiO0h33XwKfgTFVkcu88yeR3FozWZ38Et3m
	 SmZuMbk6Q6I1alGgdJIyoDY9DQWAIOM1an0wHTodH9gkyKkMtefg5lifGfV2WnRVJW
	 KAphdWRrb9FRFKTSZkalXaCPuwmiurOJkcUb/Sarxy+2XWaI1uG46Gey3kB32fC60T
	 hpq1ePttuMJQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC919C5AC67
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178659603369.7403.3806791169157747591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66518fb187ac699690546e660c3b2a5aadbf60cebb27ba2b80693ff12e15895c
Date: Thu, 13 Aug 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786596033
