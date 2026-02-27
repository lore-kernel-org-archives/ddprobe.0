Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A7E3A1CE6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772189094; cv=none; b=RvCy6wXdxHEm9Tkzkf5c6uVt6koMzjNNvl0Es9krZ428o1QI4uO1tRtDIvmySstasNBQ/0WJhMnousQTbr9UTidXYfG9QMkakXcE5KDE+bOYHd8+AJPqkmYYPVO6QmHdC1Au3ASBtpdA5Ye7DKscEW8mVZUwT6eQxjuvIsMXQVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772189094; c=relaxed/simple;
	bh=RTyWLpSn5qL2dbyqE93SMkytPaR0KBo03sbShIMevvE=;
	h=To:Subject:From:Message-Id:Date; b=UdQ+dM/fPLZc2KCg0nQ8ku6ml8voqGzoXVl2zdLRmE62G/ofoUSTm2A1/hQIKzOBXxOEydHR7DqP1mpGI4U2muqFVTO9jX+QUummyQ8G7s90kOqS1qxgV1+n3mWV1aF+ZsiGePs7ekY1Ypz+M/tbTqbLKUTvskjvpEaRsmx0AYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fNvJxKMB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fNvJxKMB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E219C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772189093;
	bh=RTyWLpSn5qL2dbyqE93SMkytPaR0KBo03sbShIMevvE=;
	h=To:Subject:From:Date:From;
	b=fNvJxKMBX5I3c0gApZqTtrdMGsDuiQsL3vN3WPALCDlPGTznNAboEb1WuQzWdDZoO
	 cCPnbL1AdaEEIXcO1FoXAFMuUlxHAkTgd6OKL2eaEdV1aNnsMcSlhBvh2Ydw/yWLpx
	 N2OYksu+2QJ5lzvWn5epRXlcLRuSslIdVa5LHBbF7FNmaHVGZ30FVLxi66CmJUmsnC
	 37BEGJGZdqR4fvXRl/YpTyY/Sncu6ASOIwnxUy5ifXN6f/4aGv1dy/LVzkqf/6f4r4
	 m/9MS98Z8oUizjgODzV694hGds7UXvMvQyCFxvo75If9HxcUH27Baa9oDCNuFBp1Ss
	 GUylxciQtPKLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDF5FD7F92
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177218909358.32135.8295000576190417793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4492db53ca08a589b6f5f6b448d4b360c4cf0c4d8b155211fb71150c07e6c38d
Date: Fri, 27 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772189093
