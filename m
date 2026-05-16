Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F4E93D3CF3
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778939434; cv=none; b=WMqCswnPAU9oN5UxbUMf3zp25JALD3OqQQtM7DDxf4jw8pD887wtodACIk6UZ/cLmO4L3K0w1C6+C96AzGsg8+Z4KvL5LjemhM+Wz9Jv2QyZH+r/M0zW6kgzNw4WdB+5LWUWQd1P/iv22GhJOoJE5SrYnhSd194JnoRUOnVdYLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778939434; c=relaxed/simple;
	bh=tukVICAWvEVo5sgT6gA/PAAhqTu9lofaP7Di8o3EDdE=;
	h=To:Subject:From:Message-Id:Date; b=K7+Ct3Tk58kjBZEw2ltQzVqrAP4+O0m+RPu81hhSnX4h34CmgYRBl7mBZDTRHCYL5eaR+y36RR0/2ZjardQSmkmo+iSbyEcTWi1Oh9FrJfLEhKgioKuT4gEW+MjYdlR8Q1uyLgBaladFm32Sd7QDQqvlbQbL42bB2ws3EjLramM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rzHUySfr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rzHUySfr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC4AC19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778939433;
	bh=tukVICAWvEVo5sgT6gA/PAAhqTu9lofaP7Di8o3EDdE=;
	h=To:Subject:From:Date:From;
	b=rzHUySfrL1p39ZCyWGl0HMnq37G1g0seMbyfRJDuk19rjS1vXUbaWoy3+UjpZU+pM
	 4uEJ0Ouwnnt/g+hsK63jEhx3TFdch+bMTwR1C1fJDnk6xb55GL6RyTn18NX//7bnMi
	 YpawEYQc1imxa40Lvv7CSkaZO55aIUoRoCUk5BHvekiUYD5Eu5loUzAwWbhOApqKUZ
	 N6vm2srYyAMVc5iYnJOqgRYDEcU6zdwlhheWslE9M8CeiI5mwznJDoOa28D2X69X1x
	 d+KCADOF76o1k7ljKml5LTBuKnAOu+LD+uEi0ITrWBp/JcgGVYz8Rht6C9NBKIJubK
	 V1Sra9EoO1PMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B099ACD4F21
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177893943368.25557.351280139589377668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2403df66e4051fedf9ccadeb7ec1d36610a5cb8af01f841b7cc16610807028a3
Date: Sat, 16 May 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778939433
