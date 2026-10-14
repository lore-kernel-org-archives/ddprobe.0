Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B4D568FBC
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791999634; cv=none; b=I/Si/pOR/0zUp6UBK8vNp7py3Z+19TLNqUoY2YiI5iyVWhMHw2mfsJ7hva0sBTt/gAbm2gisQ0Qh3Imlfk5a1RsJWyYZPNP+1JsXQaEan2D3lZHhcwjIlBwRw+QZDnBIdOhi+9OtwMJ5XlCIyg/REsdLqDJXd8vhou9yq61DBvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791999634; c=relaxed/simple;
	bh=0U4IFimg1LZcTpCbXATyjW84PLeU9s2JIJBSkAN/r7E=;
	h=To:Subject:From:Message-Id:Date; b=k6fnUoFsQh5gneGHHEc/rsl9UdPASdu+eLxEpICQScTwPNQN+/UGViPJPIPH5gbhxj9fzA+I14SqDVu82sb5vULdxKY/qLX9n9hEYNMbSG8P4TBqhuIx1C29yVE9i925vq9h0v00fscWFPaqLeYCrvpgjV3iR9K1DPJ6byRoWEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWtd5aWo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWtd5aWo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF979C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791999633;
	bh=0U4IFimg1LZcTpCbXATyjW84PLeU9s2JIJBSkAN/r7E=;
	h=To:Subject:From:Date:From;
	b=PWtd5aWo/NMjZHI09fQ3SyYNJPiXf//iqMdhOFwZnRI0F5NJ3yuIByTKV7m71Buq+
	 196GwJkJMvRBDSDzHYNwJ4swRw05aVTR0g2x2vpNRYyrSYUJXRU2IcF+LDmxDg+Hud
	 xLaW1G41UorTbJZ49ayX5MCSecZ1O/GE2ytI9iNQlAqqSjvbTxrt7v0lNi03FUlWLa
	 jItLXTrOQoXXyM1/bg+JKtxdbVkEgfpKo4PkntQBwYfAX62loe/gLEEWCXa1mCjqTk
	 67ah65dKPGWOgbHfnMYKAcRaCDdm2OL7/ZZ2DK7mRYRtlEOteqBuhkow5O5fp6coEb
	 V4QARQdfKnxxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B9EC3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199963375.2105.3951753725822070312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dceafb590fbfd9016a50e71a5b59e1c3d82f507be188a310e8e43c5d51bf296c
Date: Wed, 14 Oct 2026 17:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791999633
