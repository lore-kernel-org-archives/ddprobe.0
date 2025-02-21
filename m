Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5589D1FF612
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740124734; cv=none; b=PdS18XpljmMJBaVkz2FmDrrTmxSETurHJ8+zzAhmMAvGvlO8G4Atfj32Q7iT9Up7h5vlV0K242oEz5f1HNE9LRcx0KKHKxewWE6wTdOqVvEWXd48bs7M4xtiPWTtoXtyZ8RER3eKJ54jkeDmLaDthMPjgptO2mdI5UIx4BUjia0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740124734; c=relaxed/simple;
	bh=RUWcvSZvGC0xdNq/njlbMmpRUyvJIRpwl6TlAg6WdLs=;
	h=To:Subject:From:Message-Id:Date; b=LVxTy3HcgBISmXRfakw8Whtk6ryq1DqK9MmQY0+PQD5K/WA2QkUInEAFBqBuc0PKUgnfGm+oXx0gEAuFO/NvYlmlzYlqTQ4YpA/+KXEku5Hmw51VW1kvnWvvtAD+E3VpYuiKTPxWuPBa+Fi0ra59ti3JBPogsx2x5VRU6a5O7Rc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qpfzsmEA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qpfzsmEA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4931C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740124733;
	bh=RUWcvSZvGC0xdNq/njlbMmpRUyvJIRpwl6TlAg6WdLs=;
	h=To:Subject:From:Date:From;
	b=qpfzsmEAZOkxdwZWper17Za6NzKOiwZRvjPDSmNFYuNoF/MA2jj1uaeK3ogRoKd3n
	 moBApHCyVwY1y0NFx59q57TSMLnp0D3GDzxPyBGacFyuVpkkOWNJuKAMU3J5/t05nn
	 5C0jFJYe3yPcRaH4VddQNVhURcOum6tFcOrhlsqz8eKuXHgXOGjVPt/XBMmgZQX1EV
	 pHcmPdQyshUBT8hBiA4okrunZyE6mq4Id46Vq3P72ju7m3lqtGiXzMi7XDV213qITZ
	 rJdcguHe7yLn8TLjurHQYltOMtHf+7iXfLW913Rsjy51v+PoyCe/eG7XuLaGCccQMM
	 +rCBlE/MWUyDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00B0C021AA
	for <ddprobe@lists.linux.dev>; Fri, 21 Feb 2025 07:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174012473371.3443.5189399694990840201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec40289b58a2d716bbb97fd3835af584357139f6b8b85678264857b673421f1
Date: Fri, 21 Feb 2025 07:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740124733
