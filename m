Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EF953B1BD
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763911914; cv=none; b=c8icLR1a6ChTcP91jbKAPFWwLUVDbbTBqP9BCiEnSjeM2XAbVfrticnHoy6LSvbxN7fUCIRNN2ORhrsPXhvPTrko2m/qH0hkzVF6o6APjYKS2rKbRMtAXZ6pPEIwRYV7uhjIPxU+8NBmCf7WuNhdvUpHxUISPSkPX+lNyyanpS0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763911914; c=relaxed/simple;
	bh=zyWPPjHUEXeWF5cKdN2m80Twpk+MzDYeWsuz21nA4Fw=;
	h=To:Subject:From:Message-Id:Date; b=o5j/PGnNJwSWOajhNl/AuT+KtF03h0QinLZXkx7imhyEACevdzVQogQe8Nh135qzKiIvRIZc6zdE2K4aeQhqtZZGyNlQgRtu3waQL5K0EtN5EZifPBuKjgZ6f3Pd1B+AkqkqgcZ8AxtNhz1JthADbtslvWIE9LFy44SJIDlL5es=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARRoW1JE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARRoW1JE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A817EC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763911913;
	bh=zyWPPjHUEXeWF5cKdN2m80Twpk+MzDYeWsuz21nA4Fw=;
	h=To:Subject:From:Date:From;
	b=ARRoW1JE1lzFlEw85RlDOTQ3MTzxp76JE/GIlAWUmAKcXOUK86bJrggm959hA8ujw
	 X4cszDBPbeMmGrXMRGThQfZAjzOnfF7m94d7HqkGhq3Yifid6GfdCkMjfSr6SGiASv
	 h1ciC/6JkwquMAA0svIAAqJJY/mC8W7uUTxRURkVUV5zxnhL5WsTF/K0Rl5eOj0AzP
	 OvoOtEJZIC786J704moGluWpW5bCYmE5oMduWzrT0iVHK9DZpErxPGYwruqcOIMXEg
	 OxeTifOC6p32Kbc3fghmYpbAlCEs96TRWorpBiZbicIe4XiEG9Plv7X8UDN9bGu9ab
	 ff+PBzeQHzyhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94448CFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 15:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176391191359.11720.12143526159435086642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4cf7d5a73aa51cfa3383c0b3c5aac435271d563e319e07517d0abaf50f405ed
Date: Sun, 23 Nov 2025 15:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763911913
