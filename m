Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AF7B218ADD
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746523795; cv=none; b=RhrOeRYRt4/lkMX7zvILgG2dZ5Tcsb0HXwRBLYweiSDWGfqmW4e+KstzCRR8VKoCZ4BiUORnQT9j5QqtfEU0/qdj3TFklX/7ws37NEEzDapmXuAQkVwg3k17BAwLbYD0raVeHY7dYhikzChN/Gbi62ocO5PB6vDraC9B1qcOIdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746523795; c=relaxed/simple;
	bh=d8Je1ZJAgQAXLW/sjuV557rpTSYUg5NF1StWKfGTeM4=;
	h=To:Subject:From:Message-Id:Date; b=Fki06+VtVBGRFMkOY7Xfit7PC5jKFxFwABusFCV21WFS8kFnia2QSW5q2MTW2woaR0zrX0gt1ieiA1J/LUfCUPnGbjvkHmCvInSyFVKAAlYQvJivYisXng+1sTSbYqypZIspwKP5WgeLVcdLJv6BA24Ve9HDSYMLFmJh+tkQwNk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2BZdpYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2BZdpYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0586C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746523793;
	bh=d8Je1ZJAgQAXLW/sjuV557rpTSYUg5NF1StWKfGTeM4=;
	h=To:Subject:From:Date:From;
	b=R2BZdpYQYjD0cvmDZmtQd+AwdyDnTw8Jjol2PspeuT6Q+5Os3xll8oB1uXcsADloK
	 7Qxlj2yUHm50tdhKmagyZZgLb+j23bqFJ83Ub3r23tPl8+QLmlzS7TaAbtVpIqWZSY
	 SijJ1+/zbnJ1dYU2bWj87IWqr44Cmplw+o3FfWLy3NkJ65T8Ypfjg7RBMEVWNB9Sm6
	 FYpmn7Bdpd+CPghynuAAGGPVvpay4F2uXINErZHEIgAFmrHqoT/HxzSDnHnL1aRADG
	 z+f3xNXZ82daPf9NKKiMK+FgKvb/xGDpAbozsUbUicZslaFoBIUlPn7E2ifHHJih9u
	 ZjjyGYuqUPJ/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E9CAC3ABAC
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174652379357.18796.3562095282546368507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbbbef1f2652368c8fb303031f8129b04fd231ad713c3fd442660eab1172d63
Date: Tue, 06 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746523793
