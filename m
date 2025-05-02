Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327261C1F22
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746179994; cv=none; b=pVAnIghyz2VarkgbAPCS1+Fy6emOEDj5vG5kmJsFV4Zb88M9/o7KvqHhuLHfwJ0ZVPOq+bBNaCBqMjS4IlAoKN1IhPkb5jWVfEb0v7x9wwvzj1d9XebNQM/A843tPluGsfUfhBULG37zyVmPGObE7z2CoeEshmzOHZtm7HDOx2c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746179994; c=relaxed/simple;
	bh=jZh9jyoor9eyi3kAd7o8fdt7PsXoHAAjYTvGT0pUCB0=;
	h=To:Subject:From:Message-Id:Date; b=lBfu15RjtDA04/xHkaI73qRrikDxEOgt7gEOGSQfvwXnd473vTgK7hRFPvWLa/sfILriJJn4U0OYtC1DOuoT9b84epzgViN6ayxWZ9o+gknPKXjgvJJ+GIboIMc2KDF8jxPworCHAmGTVPisIJhicrEG48nLT/BTfIBgo0t+3eA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X8CAeKiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X8CAeKiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA3A9C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746179993;
	bh=jZh9jyoor9eyi3kAd7o8fdt7PsXoHAAjYTvGT0pUCB0=;
	h=To:Subject:From:Date:From;
	b=X8CAeKiQ5Je5AJ4W5y1SBNRu/wIUh0eZE4ZhUIlqC8tanGbPlBW2s4Nihiczorhuc
	 utIt8v2/F0ZudilsedkSFxQseeXlxQWdVq8wd7WW+Bggx1+MzZ7Ge61AfvCH6zfog/
	 0Mq8XhGN3SFCUPNj2BToUP8w8pjuiJG3epRZ0S4WaZ5QReQbSmVGTwVZ+GcZIb1h11
	 kJREWu71QbLhOxK5850uciUR0YxYjlsPLXJeuGWMyS0SZNOOhRav1A8Oy1yLW5nsMx
	 N0I4cOrlaex1u+gK56QedyXoh1hjCZ+0rpncCHbwWoMjtH10t5Vu9vV9T3RH9NVOQ+
	 ZvE/t5XDzWL9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95EC0C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174617999359.10980.8998497746710674920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f9738f8299c04b8d2fc31a94a7ac88d183275f4a86c055bcad126c355319bb
Date: Fri, 02 May 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746179993
