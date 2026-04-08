Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 933AA2EACF2
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775613334; cv=none; b=ujXdZE/U8G+uAzMr6iA5cjBXQU7Y1q2s3fg8qySSBCzO9rS/aAhD4/2u12aFKZLAv/+Tj4NZ68ODuuMAMI3pKl2WZoxjrmypbJfeeLxFbzaTXfq7x4yEplI8RPhNHhzlwiAKQaNcH6nmuzTUfxjurcHCDwT/5cqCwA5BY/6ixso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775613334; c=relaxed/simple;
	bh=OgByTx61g9tdNsXV92CvjweHtXqoEDWjFX3vbFbovYs=;
	h=To:Subject:From:Message-Id:Date; b=S9PL2fPvYxR+lvj8qYRlWDLGzS8tkNfCRwa4ULGpcaByMkpO+fnSzVSGZ5PVaRpoq+I15L5v5h44fiX6bRXTmLTuhlycC+o7UkDpbxLtLXzuKcWmzH3Fvj/yhEg03gYGrjEaZtFueueQoKICK5HK+xQ0jrASTVAmrMNhZlfRQDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SCtFcsQO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SCtFcsQO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 2D0ADC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:55:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775613334;
	bh=OgByTx61g9tdNsXV92CvjweHtXqoEDWjFX3vbFbovYs=;
	h=To:Subject:From:Date:From;
	b=SCtFcsQO6xQGjqj0e78busAyL/ANxRmocdPvOm4pRa0u+/NeWc6vp2iVmpxuiIPct
	 Vba6/sk/MYU0G0reqOYLKz7jl8L8NO8R4blzpDq0fR+MqHn7rMmYhdnR52tMIR41v5
	 uQOCD9D67q6kzs/R6dbH1T/v07GVEH1PfOMBk/snwP63XeaekYsKnurA7WJh+haEqA
	 u3NXMn7gGQg+0rKMD5Il+YyKDxmVnbptc5/FYQpePorU775zv7dvEfCsuAbI7TCJzk
	 N6IYk0wgvxI2DyNyu2V4VoTPYA0GSdex+evwplTP16zieM9G0t6Ak6cETv421yiKqe
	 u+4faADHfhsSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFE61105D992
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561333390.22074.6066741384289789561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f51a45f447cde8bb2c55f60a1329c1fdc6011c4c779043b533c73f69fa2d0513
Date: Wed, 08 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775613333
