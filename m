Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D74826FA6F
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767562434; cv=none; b=ixWXL1K5nASkFgLKRhCwGPexsCIhfezPdY3Bm7U9I6+iA04EYsr8uerGpmK50prQDs5qnca5lvBPjNwXmHkiOEa8tzEcQAxfZ30vKrMHjVNhgjjafKTGnSTBK6qV+XdVue7pSLQ6RrkkAiMplLepzs3hTJVX8YWnRRzQfBVjmvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767562434; c=relaxed/simple;
	bh=g4NiMk2NImPa9a+AKifH6jf3QoNeRiBVLvhtweAkIfY=;
	h=To:Subject:From:Message-Id:Date; b=MDxg7T5dsXhIxk0x4nPOzq789TlZxFuEmk0MFsBL3TLn8NpMwZlbBnnjqj9ef726hVfoq35l8GBZ7kWAjv0n6VADvUb2shNtNql5OLwz9NfjWotlpuVJKJjJSZ42KBFQiwpxcr2dlTPjtMEfoNLdX2t3RAuHFfYaMlzdUV0CXec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LNdteCd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LNdteCd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50ADC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767562433;
	bh=g4NiMk2NImPa9a+AKifH6jf3QoNeRiBVLvhtweAkIfY=;
	h=To:Subject:From:Date:From;
	b=LNdteCd9lEeGn5Ef13lg1QhJsxrKII0tmQHyI+kvsRoCSeiKYmRxWA6imxPy2r5I0
	 MBi3ZBKuhAdGjq3FqHMBRUTJko2G8t2B46QIOVo8dUQKPLW/zTwMma91SSqGS7S+31
	 SQgyU326iU2oIIHnm9igJz6WPli9askThiU0+/eIWTV8sM/lKqnK4Xnoe3R7nVb+9w
	 UiNWIYioLuK80tpt4zv9JeHQwJuxb+kmfTWGKer3ZBJDMP4rv5IZJZeoXWyrRDAkmT
	 bcZyeBbxRBLp6rBRP6WyXZDatu6bAlhELVgcpudaItDSttG+vOyX0kny/pi7yc6r2Q
	 2mJSJhwpMTmxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91396C2A06C
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176756243357.6822.2612469625476057408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f958a77a43d4673f52f7644bc85eb54d947c55fbae395aea0c36fd834f5be3f0
Date: Sun, 04 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767562433
