Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4876028F520
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745336394; cv=none; b=Aoi2BQgb5Xi6NU1qobBrjcCiSLABglKxDoa/UxoqS9l2sYAF/eCST/t9twP0T9YVr8Jop1jtK9tNScM00P2H1AJ9KDDaTtZvt3mlm3BFYIhnl5eacrk0r99HfsbYJmFOHmeCwvV8g3fX+PHlIWHTE+Kee+EmZCJ1ch7oIRTzeMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745336394; c=relaxed/simple;
	bh=w4Tp4lkqFvtMcGLKUrn9CelkukdfmaMtKkbqukL+yuE=;
	h=To:Subject:From:Message-Id:Date; b=qUAPFX23Y8LxPokFzv9GFI5UW6ec2qLzxidpZbYS43WsCH4ghf5Lki8rWQ4goQWYWh6o0SyUKaf8MN3PzaRc4XARk3BT84E1F8uVSpGnJwGu+rTtFSPVzYXd6AXv43VLcAce86Bid12jkxi+HdY/6kxHuiK6rdGjRi9ro6vWDA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI+At2N+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI+At2N+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA53CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745336393;
	bh=w4Tp4lkqFvtMcGLKUrn9CelkukdfmaMtKkbqukL+yuE=;
	h=To:Subject:From:Date:From;
	b=cI+At2N+0PqFkQaOV9OBA2P08EAo7uTAG0LQ6iUDH6WDE7li2ZQINzOzbhtgbq3Mo
	 MjT/3hFg9i3zx48OIR5H7qOVwvz51FqyC+ngBH7jK0MV/D2bSLm/a8Csqg6aaqR0DC
	 dLe0idznKKLka18YmVLJwKWi6LAJdeOZUe+f29i3svhwwQ+dEzvQchxLO7+mvdfWoC
	 qzY5HLE2AEJRbPrOGLMCwwnZOuFl6aBHxrJ+3vBwIXfBhbmVp3nYNrT/z0GduEh3M2
	 NCkSnUFT1r2Y3ZJXHf9nrSFbQ/UzMf3m6abydMZZcFB3DzkZRIpeRgXHMGcOSs57vL
	 pQkt7KMxpSEfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95356C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533639359.32600.8833893722439324936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27c0f72f41738d86e12a55e0ed80e872cc28e04eb8d9241eccd99e4d8f7e0425
Date: Tue, 22 Apr 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745336393
