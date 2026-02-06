Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 019EA3793CB
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770374634; cv=none; b=aoOyoMUjeJP3mKFlWKuAq2g6ZYuBRaZXGOczfIOgrAP+uGqJE7Yo4ifW6W/hOnMS9+pNNCO95skyhlF/Z0aUzEuarVTt5zn+TXBIiy5dtivIsGsqpwDCPXDye2C2i0wGRvlt8dIxf4TRvI0Hs/3cf4o0yOEV7lYV+oQN4buM/MY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770374634; c=relaxed/simple;
	bh=tDyT2avunGP9+QuTBxQkhZeXqfPyAacuilcuZz4Qz40=;
	h=To:Subject:From:Message-Id:Date; b=QU2mzZha5qnFyKyiDpNjJKntKdAjk7rH//8VqaFouVeiZj5/GZHWXqleBAWiq48d7zrUwkVXQINvyo82d/h9kD6wkC7YGapWJt0TsD+ZERBIaVZihpKbnLJJbJYh660+KAfNbI1nvRvg75zrP8IZVYobZVXTgJ8k4ZOxLhSHeTU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AGD6gc1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AGD6gc1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEA9C19422
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770374633;
	bh=tDyT2avunGP9+QuTBxQkhZeXqfPyAacuilcuZz4Qz40=;
	h=To:Subject:From:Date:From;
	b=AGD6gc1jNKZlMUyC0iMk2EnSNMpARfe9QhNN1P411xpmlSpt2AxlxlZzfbaEWoDW1
	 R0+sLWJSdMbu5xbHqVfQA1dzvo1S4LzqnMVEYPUwJWepL784H4bxmMN3WFmK1wMccW
	 LQUgSvXadrLIoRSaiShAvKVZjbMuVjuOyAzrnSzkyBkzsuDuzok3tEWQnlns9N16Mx
	 M/QT0wrrUtBZ6lNTcOxQoN1UZMSlskI7NamYI28R6KmCLShE1PJNKeC5cA2tAq6XvQ
	 tx1UNuRdKbgjvL05jYW/IxNjVh/3BeM0t8WUQORdk+r2fQsvL0Laj/6v7wWeQ5lOzn
	 6Og7m64lCPKKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4FEFEE208D
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177037463364.1654.82108578732268255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ee7474f5885d8606fa35a0a9564fb7685c20857842b6e3fdb76c00962951696
Date: Fri, 06 Feb 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770374633
