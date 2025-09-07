Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3243D367
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757250595; cv=none; b=bj4vqa7YYAXZ5QsmBkfilXQONLrNA3Zx2cWqIXRquBPEBzTKobhqFR5Ls76dflVsuJ7wuUgO864asABSY/IUa7i4vx0k8OJ5ovM/+PK9wGUKxa0dS/aYUT8+VWgj6CATJq41Q8+U+SRCQDApROjxwmTYL9sCdbXJfuJ1WxPGrLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757250595; c=relaxed/simple;
	bh=fEfW4RxujgbuCs3aoY2F0mIq97z24tkZZi52XrIwwX4=;
	h=To:Subject:From:Message-Id:Date; b=HKeQ0SUCwcMVQzaHUPpdVm9j+z2MQa/ZHtUbXCTrUuICHgqRhpXPd1PF5lI7bXpOKz2z1Kb8L6pjTsY4swzGMrB0dUCpjeBPQP9SEsPp0y7pLjEpVH8SRaJUCWi07ABqNYNVvjpBSQW30+X+4U6spoZc7l6P2FfVVgA0UNPigGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WdRn9E6L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WdRn9E6L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3172C4CEF0
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757250593;
	bh=fEfW4RxujgbuCs3aoY2F0mIq97z24tkZZi52XrIwwX4=;
	h=To:Subject:From:Date:From;
	b=WdRn9E6LjuV/Xea9rbSg5EuUyl4rVMmJnKYudk0GLl52P8Qw+87jRGxf/zD/dPwmi
	 uJgIC0nGUhP/wfArZQjRVpGacqXh0Jfbhxrc8AdiCRImyOlQ0aqeXFEeyJ8OP+kiQS
	 OYu2CjxktF2SnOMN73BWBz/hUezxztzLuqe4NbeSuqyEuvs4QyDYHPee8F48aTgoRJ
	 1azWazoSjaw+0b7QW4dMzemGmoh42Ddz72hg+6shixWKZ6RRrF12JB7ACHIVeRt1EE
	 E9WCBgPs23gc8nKTxhzRnbZr9HIZgv6vjETUk4K2dUN9lX0X1IK9rrwuLCohQzj3nL
	 uWLE0CN07QEfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AC0CA1017
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175725059357.17941.4020620988223360244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a66c00d46aefa3cc38a4ea07293eef0b88cc66e74d50754e336e93e2fb444d5e
Date: Sun, 07 Sep 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757250593
