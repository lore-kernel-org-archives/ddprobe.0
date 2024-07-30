Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C13729A2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722352554; cv=none; b=QCS6XDtAuavtDZIgLt57MZF3zRhvU4pOpxbA3Bugvfxp4igkz+HgKWADD2jn4y4Yd9CBvF8v2wu3RkHuH8iRs8aAjC0/g/0GNVs9xSgEdbsZExFnxbGMI25Jvz6Aj+bNIAmz5wV2tqyS8/dp5JoIVhz8jfUbepxEuU8+eHXffXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722352554; c=relaxed/simple;
	bh=iDfrzdW2Cs0GmECw13KCpqPeRaO86J3kI9ML/ARAXcg=;
	h=To:Subject:From:Message-Id:Date; b=TV9UZSHNSrlgH60/lENCRMFmO8Epzv6wfVOEh9Gv8DhOPSHSnd/c9DkC5SqnqX2G9G0EM7zK5kO7RITpBJTYr5u9Aui9VhuxM5gNshiG4U7ogfRyJeYp7WJk/lACsgctxH6o79tjbSEfeMnB8FCd5U9R1gSES4dn88VwJhPAdI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIouCFJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIouCFJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEDFC32782
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722352553;
	bh=iDfrzdW2Cs0GmECw13KCpqPeRaO86J3kI9ML/ARAXcg=;
	h=To:Subject:From:Date:From;
	b=IIouCFJa8ErZnQiSu5ZatnVoqEGisGX/FGbZMdDljd6VUjTAHmAmYd07GyQxwlvcb
	 dfJWVPASx0DlwW4qzVlWkhPrDBOIbw3mdP7VXOFo4bUY3dCW2M81YGFlc63g+bV9aj
	 kRRA/vXZEmh7f1pD812pE+XgzTJc/AlPMVKIQ//3nlye5c8vgbZKh8K1GK2K09cGMC
	 iJvo4zaonxr/5dl0RwYamzBGXXqVWTMnAuk9B+wmIuI9NBnuX2mMAO4rdcNrORXTLB
	 kiQFy8V2ML//lM3gWyKvVSaQZ5K70//ed24Pzv2CN4LWACnjH0xGSONM/UiZsMCID3
	 omIf84mdBk4xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9814AC3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 15:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172235255361.29906.14639692423629738242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9a0dc4f0ef54842f11d8d7d1399489040db8ee2f86c6f536e68ee31b5b0521
Date: Tue, 30 Jul 2024 15:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722352553
