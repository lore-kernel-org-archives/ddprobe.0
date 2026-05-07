Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 862F776026
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778134654; cv=none; b=PHvC8dySE3R0qiCK9e1Tdqm3z9b2jBMLDEJ49MR1fohyoYXasdrxZ8B+/jxfnnnssDvQrhZUbOy6ZCU7E2mHjRRtM/AyRgonWecb3U14atxfEK66lr2WxCR7RAc0K91OxQ1ahMQoJZhCvZ/HRcXDVrhxST2ukXNWCm7F/txL65k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778134654; c=relaxed/simple;
	bh=ms0LMwIlEyihHjV4n5nHAkCnEeBnzD8QW7Q67N+0LSQ=;
	h=To:Subject:From:Message-Id:Date; b=nwCSo4bzGX5FIby9dQSL7jRHvxs3BxrhPb3bGF4rv7XjAVv5unVwFgm+/EE/yGnnAERVwx9/UgpmPoWtTQfX+S6l3qykPkCe1N9LOQ5Wd5ftDQ6GRHf8l7ellAlXs5qZ7jfNAyfiG0JZjO8FEXS4nPbG2/ZTXnwpZFnOT+YMpcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rlZCt0vj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rlZCt0vj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD10CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778134653;
	bh=ms0LMwIlEyihHjV4n5nHAkCnEeBnzD8QW7Q67N+0LSQ=;
	h=To:Subject:From:Date:From;
	b=rlZCt0vj2jZx4bu+Z/yJjrLYufeqLjOsMWzJXKSN/ixhs6gKFFcyYVfuBWLqBpTos
	 5ID50PEgn5d1/YL0r7Dwb0bJygqSJvVb/cD1z80Wl+XbxyL97JgfuHy6tMJcJ6YTov
	 Yj2E+srS5Sjy1xTRMLIQHm15yLwZNoX85A/t7F1WKEL3pHSryJQvf8p4KPcho7uX0F
	 5NrF2+JtOvMKnqYAIlWqM0pUO+/vNvs6143rY2k+Ddw1Yh2iuKVxsUx2pr9UiHWwA5
	 lDjzujiWD7NpQ6cvMPmT46KHOr9skDAWLpBzqyNbHUmKVrNjO7HMbSUeDOGCkpg7JP
	 UagOw2bSQ210A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB04CCD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 06:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813465369.5042.12425309284880906576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b12cc207217c1bfa498c5483029a6b4896a7e816e43c4081f8bf7fd395354d47
Date: Thu, 07 May 2026 06:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778134653
