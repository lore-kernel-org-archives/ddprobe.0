Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CB641E526
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715438543; cv=none; b=DKGf4bCllE69aQu22jNyyT3fJiZGo2RGtPhtW1OWpXxMOmhZFLcCSbDxazHsCgsV636tz71Lha4LuFOPhHS83KBcQGEUhXdjNLTsDOQsZKhY3t+jK98GFjnRcC/1QfdW4tH0/ROSudWyc0JRzLoAw/8SeHyg4gQD7CNRyNU/kVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715438543; c=relaxed/simple;
	bh=65dgnXHR5th0CQUE42aCJstEe1m6IHf5RV/0pGPOv7M=;
	h=To:Subject:From:Message-Id:Date; b=tK3pxnRDtqyFY2PHKDwxKEJKUKWdL8hKslo0CxjQK4tzeYkyLPdP+MlrgQ25NrnICkgv5b3G52+99R98D0Aj2PDCovluJB/SLbH8ptWBPfC3eorjSreXpmsBrReh5azPKWqlOCWrhbUzhoD7MSFUeHsa11esX4l83wgaBnvEFE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uqJC6qOP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uqJC6qOP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDD87C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715438542;
	bh=65dgnXHR5th0CQUE42aCJstEe1m6IHf5RV/0pGPOv7M=;
	h=To:Subject:From:Date:From;
	b=uqJC6qOPEOhbgdFCeKSzvcIbuJaTAG3mwcLyXnqghXKj7/5vpQ3Jfmf4VOpD+p1Vg
	 7BlXdqRegJ3d4H4BVSw2PtQX9Pn04XDipqM0mdb8XeZltJKODf2NvWVMFzWJfDmqiM
	 r+SFwEGRsx4NLcQ/yIENG/NJn3FGt4gug7Mz6X9daOS4EUTmvk9iYHynMC0b/93/9s
	 xRMgvfadr74EuVgd40dMaflMb9/kfBWSbal4AQNnOgBCGfW4K82JBlHFTeZ5l70nQP
	 +2yiYJipG3b7oGUhL20Zr0EoOff+kCCV5q2k7NsJMQY1bZUN9+b/EsGNGzW9zOKVGQ
	 ImTpsDpX7BBCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB140C04FFE
	for <ddprobe@lists.linux.dev>; Sat, 11 May 2024 14:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171543854279.17686.9201091437999904388.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 81b42bd100fed41b0eeff8aee986223d15196bdad220efc11d9145e59350cdf1
Date: Sat, 11 May 2024 14:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715438542
