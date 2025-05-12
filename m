Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CDEF253B64
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747069194; cv=none; b=jKsUF27Z+I2JVafsNZCSnLN2cUxc31D6srNSTL2QEBlmYS4qLARJpMzvxmmZLHYugxTVAkchPQ5jXMG4c0wQ8I/peRUPwT02diBmTY77Fzh3j/xF23wN0aDtZqnDNZ0UUWtFpJrriqp/nQqixy9vhJhOCtpN7xonPNVRiHgUEYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747069194; c=relaxed/simple;
	bh=zhGmgqPyLACJmDc4sLgYNnLmiE8316aW80GWQ/261NA=;
	h=To:Subject:From:Message-Id:Date; b=A/V59y5GJeXahg0A9f2Ddr5cG2Ek8btjGmwmzGOrhm1jkCHMFCtx3eVZNkGSYSPDNoYLPhFIIHLdqGY2axklisfu/mIhky+yESJHMDrKrGaQZEA/yiz+ZFwN5CguzEvFm+Cq1w8WN4KQdu8X/l/6h2gOgYfz93f9a8wHDZiYlB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hYV6RAZw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hYV6RAZw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0863C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747069193;
	bh=zhGmgqPyLACJmDc4sLgYNnLmiE8316aW80GWQ/261NA=;
	h=To:Subject:From:Date:From;
	b=hYV6RAZwZF9BLbwCEBldvycQClWtmOypfoYh+otKIL/UDIw+iozyHwPcNXRi6N7OK
	 DyHW55tiOUQtHrEsSWyVPTM9GjxNxat/+QhH1TcleqjcEb3Z3butUUuySoTub4z9oR
	 KNIhsuGemaI6EsjnKo1cYmbBx5PvgX0hbLjgOUBfey9qMq66yEvyMfB2z6Idqlbe6Q
	 gDYQz1Es9XDAaFvVVfMUBxEgIsCqtTf9dXbGycnR7yyyY0L/vK2UDYDvvJGqoUVGvw
	 h9arfirDrBS2IJYi7aZ3QsNo7SgP+BUbYJhtFe93/j0xI+pLURlRvaZlw48cg0Im1k
	 Sq3jrKaV3rOtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90762C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706919358.16769.9157363021161093050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fbdf81c5b9aea35655a4020ebc13811e3cfd7faa9349d1dc7b8fb52c5b23ed9
Date: Mon, 12 May 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747069193
