Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 343172F50
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753015794; cv=none; b=LEmrmRvhXzIKLKuYSLfO6X30g3uvPe81huMKBa/UtcxErzAyGeh/dBCtIyfk60JXB5+DECQfSoeFShCKu5D65xZ8WrRHU/CC0n6iG5GluI0u669T4+N6JILDlVl5HRiF7CExw/xt9tbuVCVYDeSKA2pDe1/mI1p9Af69PJlHROk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753015794; c=relaxed/simple;
	bh=ShgPZr2Bx3u4yIr03y7yWvzoWCqCWM/jUsohvyxdZEw=;
	h=To:Subject:From:Message-Id:Date; b=H8dFvyWxjp+iAQCJPoUhtBaaHibA3M+A+ZOKPXMdCvf0w8TtP2a1tjz4c6g7FTPGuqEuSFd2AFdPd4eCtG6ymASonrnwAdjQuETuATJ38T8aQgC/G5Qr0J07ebJx+x+HscM/hjzn/ad8rK1Gg3PnIPb+3Sz7zDxR6tRyJTOP82E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRAyDFh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRAyDFh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A727FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753015793;
	bh=ShgPZr2Bx3u4yIr03y7yWvzoWCqCWM/jUsohvyxdZEw=;
	h=To:Subject:From:Date:From;
	b=aRAyDFh/W6aQc34Pb27VmhLdOoyRkvDePigNvB5OCWYbBz9pP3sU2IcnOkVGUGo/s
	 MvmdLZmU2nDEY+vrN4yZLCsmNXatKtpQK6Vy6/BlU5DsezNKz4csDu+163nw9PW+bw
	 maR9WqN+H6cGS8SOQouJaMcsiaE9ksRMkMcgxTCZLH4im7K4OLqll1QyjrrUUSyHzd
	 MaUvQzAgEFVrVR2fin2+n+d5YuHysFDaQ0wvD4OD+6/bbOb47WQepKVzAORUHq0283
	 LNHJejyAolcmv+p9CrnrMKlDa+4kWi/GQwQZe9pUFM58vSxbtDjCjfY3fZa2g0eSoa
	 ZX13fzGsVe6+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CEAC83F22
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175301579358.5285.15993903972094410251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28adb2debd57bae5c3539e2a306901338140047fd532077ce7a4f94a719d350b
Date: Sun, 20 Jul 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753015793
