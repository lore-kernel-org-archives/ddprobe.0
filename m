Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132021F542E
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758913794; cv=none; b=eIdT4qjDSM/ft2xYKnhcgkGxwSobc0inRWWMop084at8cSF/mubmlMsGBa8kI/mTvP9yWayrh61zYA2VuXGL4uYRCgtbgBk5QNoWVS5WofGKO+p/atfgbAVwCCX6jrY1bXJHQGh7/l6UHjCwgI2qWWpu+8o+/vnnnrjDJ0AMr7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758913794; c=relaxed/simple;
	bh=UcPfDOM8Lk6JoeIwCZOfRCTKcVpFxayMNtglC6Qkb5E=;
	h=To:Subject:From:Message-Id:Date; b=XQqXmv+DvNQgwnLlHmQ2VfBUl0/qk8Mm30wkP9g9IxCBeMh8Njybp8FqdRQngs53N1zzg6RKc9oNSquvybR6QMEhhBsfQlj9X3zAyTIeLtkbFqAEvnCetYDjDmfTE+laPgJ/GRdkKvpSicBzH46AUjLMLOAI+mPTOyFRvMKTHPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXNX7xq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXNX7xq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABB2AC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758913793;
	bh=UcPfDOM8Lk6JoeIwCZOfRCTKcVpFxayMNtglC6Qkb5E=;
	h=To:Subject:From:Date:From;
	b=MXNX7xq/vtmHk5jGeJ+HAC1CQ6QQYkHhDOiXkxBTgpuNYr5sR7YLkTlAvr7VBoS5I
	 +BOWr8zFWSgsUGBxgHDTXC1KUt+S0XsfMPQ4gtWxgf1dH3oTs5Q/c8JmxJVnK8TFk3
	 FMuE0WANhFJkfMW1XnRd2U5clYBH+4s0Vmi+i27Phot7xLjknYRN9xWNE2uYTnlMYR
	 RCkwzTTvsaAUwMXk9hWTpIN7qYqqyTAoqcT5o9YwR0keypqpGr3z98IfQSk448mes0
	 +rruoGe3vKUXvQplOj+SjeTwmQhmgvC2JgnC+tbdsP94Uxz6jHwbPboCXH5r4pnzOL
	 L5cpnd1ROrPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974D1CAC5B8
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175891379361.2697.5503466311209835122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93a3ceebea09ab0bfeef4d9979ca2706952c671c9e4dca88e30b546de3beec14
Date: Fri, 26 Sep 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758913793
