Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9091E489
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754167194; cv=none; b=LyHVN8FDyOZsfdxOy5IFuuhXb361aWDgGaQK29eqjbHZbO4beVmrPU3up6N8qVW7RpZZPcSPqWPy3SN6nmC0Afp6z04v1wEAisKNfCrZFOyWe7I/a+vy++GOZL/6Sol6OntLPkdLNZuQV5rs2VzE1pUDc77RuywNq6Ymj72Zy3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754167194; c=relaxed/simple;
	bh=BxlIPdsLR1AZFkI0VYouzy3+hkYWhdGf+YsV2PyyukI=;
	h=To:Subject:From:Message-Id:Date; b=tTLLoI2OmcIpP1L8+zcUW/mdn5/YIJM0+N+eex9pANUfgYJVxW6wDjPWGoYlUaW8Wdi43Niiz1Atn1rPYBonKYWmN+iYvqGm7nOiCijYAFe2jCKE/bDk9dWaVeCID6yHqaYLK9/mT0oO/TJjQPC5uHQp2nKCOReWZsfWYWNf9Yc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=unj85p3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="unj85p3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FEC4CEEF
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754167193;
	bh=BxlIPdsLR1AZFkI0VYouzy3+hkYWhdGf+YsV2PyyukI=;
	h=To:Subject:From:Date:From;
	b=unj85p3x66ZDvu0A4NyVTqO9THfAhs6k+NKAHkgwhkWJMSWnz08X8utYaDZq3qUXo
	 pQ8zc5V+Wn/Ls/6DwPX+US2U+ZWJK9/aOjNSK8XGfc3Cy4qtNp38vYQGjA7dp4mcCW
	 nthiarSY2RlHAIjqbXnDJH75Cc2yL/nQUxLuZefiYLmU5yfVqrdWDvMIDCaPWOT6+s
	 wOTH6wezNv65250SFUfnPXl0BGywhQVMWA/X4qzI+anrlDIs+rQ4NXTTVWOAjcC99u
	 BDq2gFV4fPnNPeol8GacLooFfahyvi1JfigvJyNVVVZ5UAoBPLBe0g6IgaXXYFQWG7
	 POEWL3gdySqDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5DFC87FC9
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 20:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175416719357.16407.8642914001798209011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c73c79e511549ad732607d75334599352a4eb32a5d33532428545c097bf7a6c3
Date: Sat, 02 Aug 2025 20:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754167193
