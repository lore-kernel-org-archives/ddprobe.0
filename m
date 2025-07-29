Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18F5823A9B0
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753829994; cv=none; b=Nj7t8pJZiFCmR2uex3qXFdV5aBF1oMgTHOzpIJ/g26gPzQCrDLR5T2XPYGdghV8uscf+1uDt5sti0A6BCMbrtm2MTSxSSO6avsajhcbiZLkBA2IGqONEZ3H56ktJ3DoLlLz/NxuPRqVgweFZRHvkXuyvt9UHx1mUHTggfRmr9GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753829994; c=relaxed/simple;
	bh=V44tkO0Oz6a0adk28NsmSB4kDWBTRn+u0Qjms2agkPY=;
	h=To:Subject:From:Message-Id:Date; b=jMIM0OzOE41/baZWhXpeOyIOkpLdW848zp2bXQkt9lT9BjGrSXPNhNVhYgYgqOxJbORyfByiSB74jM3BGOe1UvDpLnY14HS3pAt350h+pF0B1RxA18HAjKE7dW88kc+a3xRMxuhc86swsKLAAEKths0SjXyk92HiingZY/vs3ik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMc74/tk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMc74/tk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B4CC4CEF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753829993;
	bh=V44tkO0Oz6a0adk28NsmSB4kDWBTRn+u0Qjms2agkPY=;
	h=To:Subject:From:Date:From;
	b=RMc74/tkBxEH7lYXWi+BotNPFuOjAmyrGqzi0NnBT/UkQL0a2gL50c4iARtpoQLqh
	 oh1ywWbRRFa/YH5IjjipvL/83lDbMG5Nt/8O0p3TzY/MuoW10sJdA4bh3qL45eANJo
	 3JZJ0zXjgUfHiUx3ekvSZzhMagzAV6CLfN10ygwvfVzosQk/YfHVeeiCjkuZIOpwsv
	 XFE3aqibeFI7tbk0KjuDU1XvkSztTvTrEzaY6ZnAmQoFWZw4rFGid7rFhmlAIUvaUa
	 HNssqf2R1N8cpY/lC0VGIRGCxC5bVq0jrBhk2h2mj1EPK1vo+REIZVR99o2Vc2qLA4
	 e9AVLpDyWUeYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDA3C87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382999357.2252.14705153836369343586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b69d367aea9d654afb028829eef9d50f1d01d015b1d97e47feeff8816331a7b4
Date: Tue, 29 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753829993
