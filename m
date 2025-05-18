Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4589B1E4AB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747579794; cv=none; b=q+epZlxK34ieAk5V8F7xAkrJKPW/8oz4BiEx4WpdHo2iHzlLuHt7FRCAXr+AgyPYZI5GXrqa1XPSfke/80CTHrxQWWk298iiKSPS+JeXVUhIgoaxvSt5y7AORjthAtC2w2ob7xITh0uCmHPTfoFWHWC+EwIBQN1lok+tV+uyQPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747579794; c=relaxed/simple;
	bh=sv2LH0maOM7dun+kgFTe7He4sY3OgXd8P/1KlQJrnAI=;
	h=To:Subject:From:Message-Id:Date; b=lo0Sj8jZYGeSa4Ym5WNYiFZXc+Hir9qvpB082u2sVsNyYudI8NEe15Pj48f6Q9YCaWCxHj8U02MPcf3E2MxQeyGp3xKxbOooHFyuwAio7kZjkzIai9hMDOhd6RSNPt5WWBgzkMUL/HAoQlG8KPbjGyMZjytXX7M146YwrGbDvRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MumBhD8R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MumBhD8R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E7CC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747579793;
	bh=sv2LH0maOM7dun+kgFTe7He4sY3OgXd8P/1KlQJrnAI=;
	h=To:Subject:From:Date:From;
	b=MumBhD8RBVIeTrb4TGKT1n2Jitlp0giol87mGoqOiXMmN2gG7kH/l/13gYRXyatVl
	 cXdbg4YXRLuJ3ZiqcBjHqhkPNXmW/xUpy09tmbM/DF7VJ2xxStrPWGHOFvBul48IKu
	 LW9Qt2K+4FY05Z8RilsCULh//cuQ7DUASBhG7tKRgZaHdUtU0ILb/LvGr1xaIZWeCC
	 03V+EIXtz19D1zqq02JdFaehBnWJA7Z1kgho2Ywkn/hp5oP98ntJ7HYxkjQUiE3qgq
	 ALaFroEzu31XbL9lsQkSyI25r6rm6YLFkSRX1To8B0pfLA9bV04ifOSZYLA1qBjdyX
	 pO7YZoKprqdHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B85C3ABD8
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757979357.31261.85898572120901687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6592a2f580a783015da7be752dadac1acfbbbbdfd5d465c7639deb2b38d2201
Date: Sun, 18 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747579793
