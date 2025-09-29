Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 240681F37C5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759181394; cv=none; b=FjLFLESoCwKV6GfJPM2A/wyJ5FRBmCJYgTy+Dg38LTDdHrfu5viFxdjq52dfTqkkmPXcX/lnLPfMx5c8tJJQu2qQqZUduwhw14sRMebBAaznnJRNZBTsc8rCZuumUl4RLcZsWZpesFvUsnKH1Goh8MoxnBZ6r77TDQ9EmAmAb/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759181394; c=relaxed/simple;
	bh=t41XJgGz+jwpt9rGmHp6QzooYD0IdR+L8maRU9AvJU4=;
	h=To:Subject:From:Message-Id:Date; b=rRaLrkA0+HluHhOeiIlWC0RZe25ve5QB98RmaOaka8XfSwq5lfIrsx9Hw1RUltbWTsuTScw9e7MN63/28v6LTVxeBpjeD6s4H3em5I5JYzxicBQ25MMtZDCzu1AEJuzZJrnWLSdXF/4FhsezDPYJRsiOwUTDxdpEwSM3NrMi1GY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8SecTJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8SecTJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA593C113D0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759181393;
	bh=t41XJgGz+jwpt9rGmHp6QzooYD0IdR+L8maRU9AvJU4=;
	h=To:Subject:From:Date:From;
	b=H8SecTJDM+SMLpJqJMpLNIpafon14gEvGUxB+4JbQ0+Zo9D4sB3toa62DKZtXkUso
	 fGrAr6dKkUa4jz3UjDbc61j7KOCIfBrVp/MFJTAhRzy1nboE2rWu8F8SXthpAU0ydg
	 uWRaxRnDvyeF7ARxzWCgxscJAYdTjmNsJRM/9MMp55OkRRpK3A2OHT3TeACohn1zTb
	 YLB56UsYl1y5d/54+TiLFgVIe0qSLKoa1zbOC646p3xxXCKdVlaW7QkOlaxbZMHRmI
	 X4zR8o9PYWBN/am0rdlrb4zb6Ki2zbnSb0zMbhlOcm8kC6groMfSgiVHga8GMPW2J8
	 zuynXNJFUiMxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EFDCAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175918139359.24116.273900728495341516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6214133b2d0d4b16f564ec6650117ec965bdde64f9fc46d609a6268157d99749
Date: Mon, 29 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759181393
