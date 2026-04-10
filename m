Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E14E23446A7
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775855254; cv=none; b=A3NI2UumWfBOOe0UDBGKa5dhO7/WrZMLUGChWbVNTKyuvuBvPkrR1HwHSn0j6r2uRUTUMHAndcHXngj+jeqn6Ft73Hjxc1TyxMyE+fRZZXLw8e3zWUZLOTEyTqek6/QGFRER9mchEc85XHCRq3lw+J82/26kIurfID1U1tUkDKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775855254; c=relaxed/simple;
	bh=R1qVAS/Lb1Pyc03/AXfOOgZcpkO5w07fevXyTcsX78Q=;
	h=To:Subject:From:Message-Id:Date; b=kgFDqnto7FA5mJxCBABgi6HIOx+M7Xij/30x3M61+1RqcBbTFrG+3cm0wr7WV3B/qRIkS40On4v337befup0BUHulxFOO7x+1seAVCxEbfjF+c/fTr8W9Au2E3TdMWTK/fKBGyf4eErWHgnxxSdEu9QmpO693gdOh05ZT7Goqvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IEU9+sFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IEU9+sFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCB8FC19424
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775855253;
	bh=R1qVAS/Lb1Pyc03/AXfOOgZcpkO5w07fevXyTcsX78Q=;
	h=To:Subject:From:Date:From;
	b=IEU9+sFebG21MrB/eE3B8IT759tdxNI8o3E/In1KUbzYYPeF3Z93kG9xPagUuDfF/
	 kW0TbrmiP9qVkc35C638o+xWSiwu76t5CG1LGNwMKS2LfcCQPMwJL/gd2pvA1hVEpS
	 c4U3rGVdcZvMiY4EceRQZ1jj8B5SDBzqclDAGCfMMDt6FHsemCdaHr7JX4KDW29trK
	 VmEvOjPiwpYScZwE5MdHeiOK+ZGxdD0NW5y2pW5ba1OZV4PcUsmIn1CDNmo2XX/BOy
	 gF2RD5o0dkEvc/aq+uy6q2+6u96H1e45ojTS6BpVqA0HNo5rk+N9Iw6b2r48k2f3Mv
	 hBnugJCFbrVLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A3F45A0D
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 21:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177585525369.27010.4240855748748852548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b26941a770a48d54b798c0ae39d857ac461caa6a29316178a5f5df41b70b2c79
Date: Fri, 10 Apr 2026 21:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775855253
