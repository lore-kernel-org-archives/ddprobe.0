Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DC42223707
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756677594; cv=none; b=V9SpG62bEClHQBF5uzKyFnubs0CNLpprveo+zztDDaM81YOAex1V0lo1um0jpmBoEyr/zbJ8CFtlrg7rbrkwHPdsC6xhpLS8Ldkv21wDD2byORxsERB4ZxMuyT010a1JtHhdpibebf7vECGprxSK4R1ucbBaW3wwSwWMWsxg6p8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756677594; c=relaxed/simple;
	bh=cdKhLy1nPa0z6RaG3WgU5y97pHWLtBsK8EWWl3jztpA=;
	h=To:Subject:From:Message-Id:Date; b=FDwiC2hfITw6OzBmtAZ8N3CwtIpUSr3GZSV3nrjn59Oo8TBP4m6oB5hlkUybabbE4Y7Dbnp5cFELDARTEkinSoVovO3GSUqrKefqdfYvlAs1XNjfshPnpTFTrEZX9udVtnjcKjNyUJGwOyPkeYDarrgizzgPZJ2OCa24gvu8MvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIl7GWsA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIl7GWsA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D99C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756677593;
	bh=cdKhLy1nPa0z6RaG3WgU5y97pHWLtBsK8EWWl3jztpA=;
	h=To:Subject:From:Date:From;
	b=UIl7GWsAwaZZenU0agy6++n+4GVA7WQPyL3hc1tUJiLKkhGxdmgchXgAx9LPy016Q
	 pNbT+e1bnEwiaPN+hEpOBFprrprpkdBt8dLk/bEVThYkxwYBq+H0biha7K/P86BRLy
	 50zHoHJtym93CwvqLa5EKcSUvswa0d9cd8dmSW13HNCA+DjEb7SkroEluUK18R/6GH
	 rUKY3s2nlkqz06nptW3ZSMkpjo++5IWZHbCJRiuKznUzKBDCN28k4oc02K9YxtkiBE
	 AJp0+0bd1/0fWbzrYoVEivcHJXXnU9ZnD+rqAdd2Hg1VX6WT/jj3JuZJupMqEqlXPG
	 7WbqheFhOFzKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9340CCA0FE8
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175667759358.20280.13089559043496654743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 459ff750a289fa6169496acc39fdb4ba59ad78e497e30067a481d1ebece9ac4c
Date: Sun, 31 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756677593
