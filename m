Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67DB1196
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738281954; cv=none; b=oKmNAzDRTKaQ3KYaVFKxuRDIXVfOLiHiiF7UcEOfQ0uLSzVL4uflJbzJoe84D6vK/W1Ub7mLKetAkFNcBa1KERn4pTiNzTpipi/l0/zdnsLsbQJIIyEk0w2UYRa32QY+k5m3d/Sfqq794EHzijRgm11OBtZMGRGK4QK4krdHhc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738281954; c=relaxed/simple;
	bh=uvOSAMW3S2VIfE5NVF16b5i+3dbD5wee1yx1fPAIzX4=;
	h=To:Subject:From:Message-Id:Date; b=SNqQPZNCP62Dh2iUay6LhzpCxURTCdnW4/HOWVm624Qdt7xY4i/HFOSMOrnRFjJyBgtnhm+8UhY44c3K2I8RX9Ygi2eHAXH0mPbs/zdLhNQ5dmy9n7NYUULyIFyK8hzBwQfYQs2m8Gp6ydgwDwFyAC5ZR+Gw6dGIDl8EGPt4LJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=boQfdgye; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="boQfdgye"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD4B7C4CED2
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738281953;
	bh=uvOSAMW3S2VIfE5NVF16b5i+3dbD5wee1yx1fPAIzX4=;
	h=To:Subject:From:Date:From;
	b=boQfdgye128ACiBenb04ZFah0yYTnGLoF3p196HHioMy3KewfbuA9dTOLprop2nlW
	 CU1WAqx0uBWuiiySrw23BwHdJ3bgh9yNGWhuuzFtplKTCQ6gWN/45Dggq2jNNhRa7T
	 Oz5XCNUE+v0Ee+cQMx5hwaciPLM9jjGmmNN6jRRC7ZXfLhs1acav1s+1WJDTssXMpf
	 KJEGzIAtTRtgquQcoGMVwHILDwicxeAkRvGW5sj5U3pG9w97EYa6YwxQzDpzgpnEnl
	 x3NUjcucjvfY8ErL92/ROZWwtQsCFXwTYLtGde4+yeSQ8OMMIIm53r94Ke8vv63CdB
	 kUp0Fu1fQMXhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE67C0218A
	for <ddprobe@lists.linux.dev>; Fri, 31 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173828195368.32259.4471808281240897040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d52f7f57067312a1789a72c2f585fb7bd118be445ef23511500cb0e3a10f291b
Date: Fri, 31 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738281953
