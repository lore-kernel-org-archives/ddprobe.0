Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E8B490BE3
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786046434; cv=none; b=NGjvdfeWx+ATshUyy3GV0UlPUQrEligfnTmux7OUqiOd+l2smcCZIdrfgP81hwE7UT9SubCP1TU6XHfIzpBHujpu2QD+mdN2T/4a9y2P9daROgx0mQfMX33y02H8PScy8n93MuukUyuMYphQ0c47yurYsU3der+nGAJirBs5KkE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786046434; c=relaxed/simple;
	bh=aE/5b7IWzSoLBb/wB/xQgyFi87yROiTmFyt4TYqFU/k=;
	h=To:Subject:From:Message-Id:Date; b=JvPcPXqOKsPFhL/ykewTdJAmzA7v+Q/H03wrm+HfBL1o3LOexi+pJ9KQgTZ34ArqoCG+UbRhl6PbZI20UmRR7PvZgClXYSSSyhDx6zRoB37pOk+fAgL5KEMfqq+fgDdIa8tUFCn7O9/KIJ4hgvC/v1kCjFhk9lEyIFmid830tac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QY6Tgq01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QY6Tgq01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEABC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786046433;
	bh=aE/5b7IWzSoLBb/wB/xQgyFi87yROiTmFyt4TYqFU/k=;
	h=To:Subject:From:Date:From;
	b=QY6Tgq01ZFSiDZaJavcRmWlaGCCvyZh6WvZ9GoCcMX7GfpPuu/QI97ZJZ1WT9/Kno
	 3SBvXSUF1Vp9I5x6umb5E6mBjT2mnNR1X85F+O30iMr8SA5QyJ0+0Sxlp51tZmnLj/
	 O0ogvl2DluoChyQLvRSjWB/dYcURqDv3WF+dxvc/CDGo77x51cSu1ZBEnqo726Mj+Q
	 SValoEIYJxotI07VK6m7YvF23HRm1NjnTCMWjsD4tYog/cQfh7tRgIVb9ObEP/8A0b
	 GDn5mFOEqg7ZZeRe6X1atCtZGe5XGjWM5TOctgqQNxdgMe4ILRyx3PlAx1hTIbKlOS
	 ckNN/XsDgVq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3222C5AC67
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178604643372.17408.10676136671359592242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1efa4c68da2e3ca47f19f620c763f3d7e85e71b92c2c7da38b8dc8e01bbb047
Date: Thu, 06 Aug 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786046433
