Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630D32D5C68
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785667834; cv=none; b=F4Pf77EAicynvQRQBK96/25Lz4KS7+IdLtmjrIgHlLvJKVWpyXrfxCINg4kxzietkcmpImUivT9KBz10weC9CsJNS8pWx03bUX64lVTJliiHijSPUh0DRuSZ8JGlTlLBtjV21wk7L8KIlDckTbAExud/gb+AXHoIDOiOEEX3/NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785667834; c=relaxed/simple;
	bh=K/tRsYaGH9gPB8dPFNf2S9MFybpCGuD2bXtBRFG+9TU=;
	h=To:Subject:From:Message-Id:Date; b=pZwqR/GtInsgoAa8XKKY120rUnc7P95r1N1OfxYAVfv/a00smjT7QHK0rtAU4WoFhb1YkS007nR6epHSJqjkTRiWq2H3OnZ1x7vL19xvwwO0U85BYY4I/zgkhmT4lKS9xLsC9RveyliK8sjxjmXVPVjGHKe399Pvi4TPP1cBKCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fXUn0j0J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fXUn0j0J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8636C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785667833;
	bh=K/tRsYaGH9gPB8dPFNf2S9MFybpCGuD2bXtBRFG+9TU=;
	h=To:Subject:From:Date:From;
	b=fXUn0j0JJjyovDzFOdG7Jm4qKAgdTsDHlwD5qvnO4zCXzAOt11yQBiH72MVI5RBvw
	 DmNrPOKLzpXYbSaR3lxWGYtRYpbK4/wxpY61cg1LALc+joJZyTT0bN0yyBFJFto43X
	 Ek1Lpj3X0wSpPAgyB7GKciL6LLDLeg8BOqcraklBLpCA9O5lyVkIWQ0NwduPFXz5Bo
	 RzgNJDSCL59cTmhvcuWMeyraDfGafufYp224kLRgYT6XtzYvqaQxcpIpIGnWIxwdYC
	 W5R9qMiCzeOGV/7ybnQbRpEWyYKRhoikm264MTSmRUTiXo+Y9YIy4rljzGFKvHK0FQ
	 PjTSSFglZVVxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEEFEC55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566783368.3552.5722556132327454715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c7142df854d0b47e1548fcc5a94b560140628a417a9b8328efe92c9de997c12
Date: Sun, 02 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785667833
