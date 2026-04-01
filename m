Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 328DE392C34
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775035534; cv=none; b=rrYVn2wFMc4QfCnkL1yckqene4mowfkY+mwY10FoZlqC7oRx76XhD9/Snt5KfNRPOR+M5UIi6/7/mKq1rgVl9LbtFmhGcDGjaKqTFoKoBi1fD2XmvHCr4WA3hZZzuSgZh5xHL9wFpuwhJZhqQpdv0XtIfbE781svw2X9eODh9y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775035534; c=relaxed/simple;
	bh=QKcRxTlCgEh1QgiZP+jn4sRP963E7T/VjbCSvO84/lU=;
	h=To:Subject:From:Message-Id:Date; b=W8Q1PNFx0hmkxiOAVPyBxLLqmLr02+/DbTboymR6UvT4QwdAgwp6tPNvpXR9yG9ZNRUKudZ4W5YpFdAIYPnGtgwJZNMRe5SJSz6rH+RtlOsQCXhUiooLq6VCFTU8iCZZZabpli1WM+Hho1cY8pOUN40Tz+t/s6wmzgnoT8GXGPQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p6OTCh2v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p6OTCh2v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB747C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775035533;
	bh=QKcRxTlCgEh1QgiZP+jn4sRP963E7T/VjbCSvO84/lU=;
	h=To:Subject:From:Date:From;
	b=p6OTCh2vxNlJpgGHM1AgErM0NjRwZgbJS1QqSohzyQgnBniwc8xmorK5lWTSIXMmz
	 VTopHR+i5PpslEE+y2oFW49z0BN/Gzy9URSBSjS7YlGWwCiKaF2YoLVrBOzjEoRFAV
	 skxaZGfhk+L2N1ng51WgqsnNN7ty9Mkdotm+yMbDZqVnpf24yk22GGSKq3K7k5RL0/
	 Xuxmt8p0PVAH7yXGdCKXiuOGfqYbIIFV+XC7NoiZSX8d+OmQzqb2etrha0ng8eR12R
	 11klSVkMK804FpiMaxX312hPX6troNdeJ4JdsyOhUZwgjKqv0vK15O8ED4XFFmFLT5
	 xwxtsu/BMLn2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC71FD35160
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 09:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177503553369.32170.11574361789119413827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3cfc96ce7547a9fddea2e460a6e83b42d7d9fc72e00d5a0393438b7d7ceacf0
Date: Wed, 01 Apr 2026 09:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775035533
