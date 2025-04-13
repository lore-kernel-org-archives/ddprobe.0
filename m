Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56DC6DF71
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744508994; cv=none; b=n62tB5JBrNI3YVe8ysxnBdlYPJE8xCXv8FhhHigi8RpjM3C8XY2JTMCUw39G1SJCAe6dfYdfMbnnX58rCiJrLhBEcfzXzm4FZA6AL4m4bRfDAJlaBYvV/DPFdZCHLnlKp+LNnx2jbtBjXL7iY0JIqJxpyrLkqfxmyKZH/yzOA2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744508994; c=relaxed/simple;
	bh=0rQICvEUdNHZbj4A4r574aqOGl70RF/4/+O6G4L7+dY=;
	h=To:Subject:From:Message-Id:Date; b=LjtmmzxgQgK7SF3Es/YQIBjXO8adL5v5Rw+/vrYKTGEtOxIlR2Qir80+7QYlKDnAaHnOoQ8Wu9+CWQZ8v3Z8ivDXydAqCNJ45daGayHgg+PLJBX9Q2exAW1mpOCsB0euhEE2BnaeCsruMyC5enYlD+nQ2UIraAp/YEO9xO4VVYg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YcwIstUj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YcwIstUj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8095C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744508993;
	bh=0rQICvEUdNHZbj4A4r574aqOGl70RF/4/+O6G4L7+dY=;
	h=To:Subject:From:Date:From;
	b=YcwIstUjW72Aexxou6h1uyORakgqMGCK4zS+AShzPBtx4gClwhAuS0s3TVFbbeeM7
	 dhFXYc1PSf8Z24qFTmhVdra3wOyMWzu5PbgSvgb4XRc86msTErN+iB+jqNDoydj8bO
	 qEdFzIDBzoBTfCQ1YUR4nSs9j/Piej418rZqugYItZOQWRHVsSbg5Gkewf85B7tl8Z
	 xDY8/dChnisbKKwP7yqDcVCxXUXAAua+ScDUayWnZHbJyZfX+iHDfBAQN5eR56Uylx
	 Hwd6820PkOq3aKgavkfFRHHrwyKFu66KVh5y4EIhaIG80OZXbls5YNWm9ynCBXFr/w
	 JceVaqZSjgOjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C08C369AB
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174450899358.30131.4845526736401673121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78779ea9736980f1b1c8d87a0141a0356178777e67aa1f43165bd32538a06666
Date: Sun, 13 Apr 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744508993
