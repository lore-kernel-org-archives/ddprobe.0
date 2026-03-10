Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47AF93DD50F
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773180294; cv=none; b=qKXOErdEPELFEJnFyb8pfAv2oen/GDIXtKLeJiGkACPYxFfOXUoD2psJMWswcArvLnIYWXG+7DZbTr1YHwRZHw1XzNpN/TtfcZJ6U1WUTQk4lLUy2q6NlzJn0B9K4cCgl5KCRXjZcqH/gBlYQCgkh0gM9Eb6N+LnxZ2bj3+dNNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773180294; c=relaxed/simple;
	bh=kF5tOIQS22vTXztYezCUaaysxObSR42T6SSHe1QA6Dc=;
	h=To:Subject:From:Message-Id:Date; b=MssDlUM7JtNesbwps6immSZqA/SF6SpAtYL4lMXsEXoEX5osGMwRFwaME7QKgGBfZ5DCi3yPFOHNlY5oFHRQuTPTmxwvKvzhT1WAVKTsFsSskbnhdJMvzuOk5tHMz/oqRkwGVF49iHIdNK0awEDaB4isfz/99kZQvDdRNyO7nLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XFSBLqw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XFSBLqw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45C1C19423
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773180293;
	bh=kF5tOIQS22vTXztYezCUaaysxObSR42T6SSHe1QA6Dc=;
	h=To:Subject:From:Date:From;
	b=XFSBLqw4ZiUbbUqclsa4F5Pfz/qJBOi9NhlPxq40eek1JFueApnvjfFq3T/IWxZLl
	 w6+HnSQJxW3oQWBVJu0tLcaVjZCAcAVKnPrXFQHuy3F/cyRnkSUPKA93bOXLyrze5p
	 YzcfYGXqPy9iHtQI1zunukyokuVGSYrIGQ/zlrClV6mRqTxmDkm//2+uQtBopmPqUS
	 +4Dbzf9d+/r3ElTeiGqogetcE8AdiXcARryLoB99tghLpz3w2z0NIl+vjLEqQ/V9+/
	 ngIy9xa+fzIi3dwfxy9Kee2ypJ/kTbkju/37mNcFpvmQ+pZz+bU7HFk/8bAnNqTjqZ
	 2wlZpQWRkkzBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DBD3FD88C3
	for <ddprobe@lists.linux.dev>; Tue, 10 Mar 2026 22:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177318029362.12979.942571831336901936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aff07081ffdd81b148b4addacbe4229f602c8577b8b3c9e2092ae337f830e1df
Date: Tue, 10 Mar 2026 22:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773180293
