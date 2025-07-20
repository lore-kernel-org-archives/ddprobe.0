Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6D21A29A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753048794; cv=none; b=pQrZwOvwrCDNDL15Xd/pVXwEWgBNuPIIsH/lLhzRQkUY0LiGqLSX/BRFDjKBsCqCkxkAmDEyYVOVjDRUXyYz2Qa+9unblDOCnd4h2Hmin3bDb3ESZMNlgCdtg5NmWjWJihGVTcI5AOCVJnweEEWoEThATymUXgUEysQkRWPR2Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753048794; c=relaxed/simple;
	bh=cfg201+gkPU9zCLcFEh1NajiBlAUThKS7QWGO+x3PNk=;
	h=To:Subject:From:Message-Id:Date; b=SdgIMbMpfWZnqQisSlyV/xcsMpUHVplEaioV5Zp6u9fRVrWe8YHqwf9WwZzZCj+PgHvHrutkY7h1dJkAYmeQi2mTHSPZ2wUKJYVz1YOA+HceuY0u8hFFpFcl0Kan4QtoKa9ZCs4S4kk85wM2LAu88jrG0s/HZVWWQkWc/PcYMJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjopB4LX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjopB4LX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23DCC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753048793;
	bh=cfg201+gkPU9zCLcFEh1NajiBlAUThKS7QWGO+x3PNk=;
	h=To:Subject:From:Date:From;
	b=qjopB4LXFokbAuS2yMUFJPpcLUwfp0q0ebLu80gYgo3uZeuppFytlRLyw+/zLuiDa
	 3vCH6yfr/Hg5y3j8/3+P+hAh8rI9RFnd06YNnBhI0a4LDdQyaGtgcU/kRk1rtfL05a
	 SKPjutpFit9KarEFhdhbH4cSKAOI00zo23kgxW0bNsvDfvMffduC2C7HEvihcQ9y7w
	 W6muTNNRXDgxSmkH5rL7UImk9f6JZo7l0k3vPq1FstJgmEJ9vsCf+LhoAGnq/XGlHw
	 nkmyMHFb/EuYcp1QxBbCczsIx0b265IJ00QKff4c2v/gzyYwLui2QoRcGSzIz6cszx
	 o+vvXmReo7m2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7C5C83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175304879358.31714.4270498758238550848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2f2c17fefe0cd66ab36ac00bc03a0faf7d78516b5d0184188877906711b85eb
Date: Sun, 20 Jul 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753048793
