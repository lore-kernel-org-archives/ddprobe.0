Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03E992AD0C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768693434; cv=none; b=gQGpY8RRLrpEp3KLOZeAZYa+xRIbM8Vm6Na137NkyXJhb+gJoq6Xk3muU8ftcw5fb2ymwO9NlIh0QwMmnpt66QroNLGe1YANiF03csOdoWuZuG7mJMQ95i3g82MSD+NH6ZLD6ZTY3pnKT4c95WDZ564DZ86BFVPdj+AMXo1k2Us=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768693434; c=relaxed/simple;
	bh=5oJtQ7CMVAfUtymJ2gkfIWOi0teXOMVhZUGrDqV2M0M=;
	h=To:Subject:From:Message-Id:Date; b=FXzCPAwwS6gPIz4NhucVsY+zP0G0vaaEfWtyX0oFVIkyDEcxsiu6yyP0/OvMZuHMkIc3OyzUCZ36zulZnA4aC2LX/dvtqD2UwvEeM+uDJ3KMH4QNYFKNuC0cU7/07kZMoSKGNBG+0wmmRinxqptfGCgQueEhZbUbRrfeVjPbvaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4Y7SIly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4Y7SIly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0116C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768693433;
	bh=5oJtQ7CMVAfUtymJ2gkfIWOi0teXOMVhZUGrDqV2M0M=;
	h=To:Subject:From:Date:From;
	b=F4Y7SIlyIon3DuLwkG0xVFVvxeI3od9DTt6VoMoqHXFXBGvET1UYKznn3BKp53ZVo
	 wJANk1tl4+GM3kNEoDZjBJ/gfATzfeht4GTDWsTXnvITWpuIF1S7buwFoXxkPDxbE5
	 GBMrl5vMCETu4ZL1ZauyhkNyD9CzVpucGWnF9wUkNZJAs1GRGRlwoLAi9bVH7URz0d
	 i5Xb/Wc+d9Yl70NMNKAl9+Al7zyyZOQs0B3wsVrB9n2Nw0tUrcvcIDsJ2Y/ov/rR/J
	 cu8KaB5brXPlPIuI2o+1fHG3Gj/leSsGDbD+LrfyYKndZ7+2/sJrEaZ3S8y7Wb6/Gc
	 +v6lVODG/L7ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FED4CA5FE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176869343357.994.10045389304530660513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e00a032e9eadfe05207b14fcfc26459a056527a8b12dccc15bbc18d7790a542
Date: Sat, 17 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768693433
