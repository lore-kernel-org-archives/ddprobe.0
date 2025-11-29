Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32A4117D2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764390774; cv=none; b=VrykhkbBUrMQklZM4Gim8QNe9LFUof1uTYricm7ilapp3KzH566oMoTS0G2YqH3rFXnDmlSB3AvkCETiQw+HG2huplaMY1RuMP6cb6nSg0tjXd70WX3PnuXRYGTZj2TFq3WU2fGIZfx7Sb4tHjg3mXQOlEmudpKth87kGu8W+BQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764390774; c=relaxed/simple;
	bh=s1EB7/OK6IwL7b9apJPQ/bE4GMjhqv2cug56p0tzrhI=;
	h=To:Subject:From:Message-Id:Date; b=FHtnEE0ZG1i1lu+9CqrbUr6poeNGsZtRlYjdLfq12opvz/3Rh8JtVWQ6KQ/wG05JQa99y7ZokgImrdRdBw1t/QeLz0zhaDhxHF68oisL4kv1yUdikezQfL0B9kDECw+tKwxZxsag/bspCMIhV3Dnbte9N12Pdq9O2zpnz7DKngA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WVBdtJxV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WVBdtJxV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD801C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764390773;
	bh=s1EB7/OK6IwL7b9apJPQ/bE4GMjhqv2cug56p0tzrhI=;
	h=To:Subject:From:Date:From;
	b=WVBdtJxVtGwH2ANf+xt72JUp9MysfjP4dAexPNnsnfLliyCjlJZq0j4RRiduhk6oZ
	 mYgPRTWXiY1+vAcYHgl5G4YTrxu/fc9m+9F3rNExnq6IqYzSwBEA3ZS+13fgPG65X+
	 foyjn31FlWd2hKPeckyr1BQMPux+Z/gEOWWRjvqH2ETS13yTkDX38MLfuHCqqhqWXr
	 e9mHFVF160i4QL9C1IUxV96Tw8OC8XLbvQsuAZkorpWfs7PxTY7+6GA416yd04ihjw
	 n1xkhzKWL4KjwNrUx4Sd3Bt1nvc6IYOoboJu7Al1r43XOxD3bRtyzBLVZotDP+HzVI
	 jhthsa6v3edMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96085D116EA
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176439077359.16460.1905770776180325057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a8c3f5b726855b443b8cbf516e6d5715bec263f5982e5e26e296c6813f5ac5b
Date: Sat, 29 Nov 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764390773
