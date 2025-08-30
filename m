Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 312865B21A
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756576194; cv=none; b=Z+IWXMMo1YH0yqG/yjUA+o7D92cU7jttVKtF+QYPdcFR6q2Dbsl9MOR4sZcAId2Rz30pnwelBBhKxpQ7Se1tpvmxNo7oQXYMeI8AQyW7fuYyFSUnlew4gOqtV3lB1Scu2cBWJDBFIg6QjJQ9o5OP4ySqHQX5zyopcg/4kJzxtgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756576194; c=relaxed/simple;
	bh=MN/GdW9+rWGN8gHfxuKXCU7jtRwjV8anmJ7whaQTICA=;
	h=To:Subject:From:Message-Id:Date; b=Zbex6rsf7LzfAYqRFRZFhrk7bGxXIv2l9DHUYLYWXTBWevclWagPZKTTFqeFGqNydH4opsO9EKHII/Ve3VuyX8bmXTrrDqjhEcxgRMbg2VT1Wh5UDylpReG6WLdbV9uhRgilrtGyThvDMMj7z37oUaynM3qP8AgTZR6e0zpmCFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ji5FZ157; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ji5FZ157"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E88C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756576193;
	bh=MN/GdW9+rWGN8gHfxuKXCU7jtRwjV8anmJ7whaQTICA=;
	h=To:Subject:From:Date:From;
	b=ji5FZ157RCrt/hIpMJQ9C+GO4cGbZ6+lm+2ucnp2EwzS67DH2JlXrK+gCIhEkAA5T
	 55cOnwcbIRuDKNBs0hDFX2TC/vT2SQve7H0g1P+AqowpQvoe7LiTA57wIIh3DfWYbI
	 nYaDjJI0jp0yp2uPotOInyUdO0CnUD7ZaixYeoUNzlvuOxNG8VvpsjuyXTSNBU8lQc
	 nE1PXgftZNZvDO2gYo9Z7EkAXfJ8UD7upYu4+cqbHIe3GwTQ5cZxgWqBCHXnMZDdvi
	 uau98Eywxikre0LUxcT/t6z7qshnp6y1uiAzAqQu5hGpUvGKdvNyi/r1tPJntQ7pjj
	 XehdYX23SBEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E781CA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175657619357.13273.3116073561428099273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f97d982d72e24c282a50711fc1b4e1a043010d881125e2f74ed426c32ddcd33e
Date: Sat, 30 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756576193
