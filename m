Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DF601C2337
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736753154; cv=none; b=S5zyGWAaxUAGpSypys5QrOFXClirgpvvqpG2GtnC2p6OAt7HkqJ5ONQSzOCEsFT6evgxwjgrAqJ+3BBseFzIiJETdjIsHArk572AfSkuBSphYmh79JSx+5MSv+laKoeVorTh/OIfDwvvUeRBV7wtWQHf6ZHWN5y700LYdnJ2p10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736753154; c=relaxed/simple;
	bh=tzBrQmo9YrZAE3WoGh6Ldqw/1AUvGmt8/383mEgwAyw=;
	h=To:Subject:From:Message-Id:Date; b=fXUIxJbuIrjqGlDFwJkgNb0Ak45Eq+0iUyZ8LZXJsvx6tBHAMpagGOd8u3ZCxUEFcB1ivnzIk0WATbrTY5xPNx6OzbXQTe6LPBWTDUx4GAl7T1HdPauYd+fbWNf0nHPI9LVN04z1ipAA8VwcqsXrfh88s6NH8VR7ZUfLFIpwwvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA0XWH6q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA0XWH6q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A607DC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736753153;
	bh=tzBrQmo9YrZAE3WoGh6Ldqw/1AUvGmt8/383mEgwAyw=;
	h=To:Subject:From:Date:From;
	b=LA0XWH6qBxagvaaZM8kKCArdDfHjcTjziqQoJgG6lcU152z2vyOJfrnorQMy7BwkJ
	 8uA4wQ+HZoaCTf5DR6itV+fM8eu65iPFs8U0L11vpwfPrwojIzkOzybRf5W+Hp1Ec9
	 CO47T3TJIKLAWVje5mwl5fjxtPz6qV/Z4LhJk4M4kUDlkt56YeV0pJVhzop9eOm3cN
	 ntRyqF71uIF3DWgmUeIPlGCwsRXpGorT5aaj/v0O5LYt6WixD/w6xmDXkO7xQgLUO0
	 ht78A0WaIOdbfctDEPcoVIy32FVOyRZfozAibMz0O8+GhzMDnPG/izrzjMfzqC7IUA
	 SoRXB2GQwCYfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFECE7719F
	for <ddprobe@lists.linux.dev>; Mon, 13 Jan 2025 07:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173675315357.27723.10387918648309019062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a462b811313749804fa313f505d69fc4e18c224a10481496bec135717333095e
Date: Mon, 13 Jan 2025 07:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736753153
