Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C26C26F2A6
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763833314; cv=none; b=DdjyFPoMm6wiA8oXyrA6f0CoxIOaXXjsyPL+QZr9XNprijGgexYOzIrj22YEFWc8ZINcjtrOt1ErFZy7UOtcL/WIqS6+ruRmyHtm82/a8sPvlwgvktQ1/mLehszRBBUgACJiQ893Lxh2/FFZbmmuoFPE8Oqqdc+NVK6UISUQOh4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763833314; c=relaxed/simple;
	bh=WcJfTz0qnLQrDGKi5f8ETRYaca+CXQfNyWY759cpmAg=;
	h=To:Subject:From:Message-Id:Date; b=EyadnQZjeuhpaJcDuayzVflSltj8k0bQJW6AHoJisIKKnOtP0AqxO+tLMfMjnaLHhouFhZ6KnlI+/y0ZBC7UtuAqTx7m8ByIbm74RJwr+VZ8rl2KhF3NKIfxW26nkIa7HcE1+xrU4YhvGEmWwuGMSvODzf6xodM3WcHXSFbIcKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TMBB1b26; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TMBB1b26"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF42C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763833313;
	bh=WcJfTz0qnLQrDGKi5f8ETRYaca+CXQfNyWY759cpmAg=;
	h=To:Subject:From:Date:From;
	b=TMBB1b26UWZZa9F3zCXhVohcuO7BLjBa7UuxswD+4767pz2Vjdol0YtAQd8djgfKK
	 MChw1Nas/6biLHJ1SGhm4H5bs8RCj2vw9PKCOKBidHtZ4VoT2mupn3/I3yEhh3NJlP
	 v3hJnd3u8QFm3/VvLggInDVD7GG9uqaG9cqCxeerpFEI7j6txl69QgzIFaqsyyqJCL
	 g5whjA6CA7zo2s8Neofxc8CUtDq/6hc4+qsCe7ro/Y1AwmGoLEctR342Ja1RtR4vVL
	 o/CQVAVLvdpDSMJSvtSIDv760HYGYDRfblh9srzm6WY5tR5aqJ15wlhmrq/gerXfrd
	 AEl4ygrza5zdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 997B7CFC51F
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 17:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176383331358.12647.11308130328639056479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f7bd05d0c118141dd5c4c05da83c0853639ff9af1304d8da8f15cded7f3e7c2
Date: Sat, 22 Nov 2025 17:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763833313
