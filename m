Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B048202963
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769792034; cv=none; b=GU3Dv5CHtv5FOZgzmLaClNq4JB/KaPO7hnLzYGL7dSHQQop9Na8XvpvcqXrXKdzoRvBl0ysuUC5rJaruREJL3dOcTaz7SBwVzhOJKpNktk9VZwpfNwLQsiX41raf4Jt3cPwsZDj1b3e8Q2OfB+CwuFch8Re4n5mjve1BEHEzCBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769792034; c=relaxed/simple;
	bh=lufiVTLbaHaunEMQdh9ejhxKsIiBPY27fq8nwofRchQ=;
	h=To:Subject:From:Message-Id:Date; b=pNmm/4oqAa3R/4jNxLYf2AqN1Mfrlp7lifKo8Hf70IC8DSr9+D9229oa4GNx9DVCkiF2TBwyN0jns6BKYGnbys2ZtSL18IXVFyyhDSMJcyS/70vRSYkoFy/o90O7za+yaFgRAphdHSSDBiKjBs0txsgTrCa2z2t16lI0UbWkxlA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I19vkz9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I19vkz9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A91C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769792033;
	bh=lufiVTLbaHaunEMQdh9ejhxKsIiBPY27fq8nwofRchQ=;
	h=To:Subject:From:Date:From;
	b=I19vkz9GhEAaJpS+7zgJFzEsBsyQiUR/JKy1e/IYaS1Yv6r7XMHlJytCjGnYJpUaZ
	 KddNHxVJsLzWl8L9mpmO2PXcoTs826dIBtoU9nLnghlaVf6onQH+6sZe8IVUPWVrFj
	 9wKz2WeF4bd49jDdRJlYYxCj6PTx20GtMMJoj4vTyA3yBSHGPDdMipWJClyOkg4LEY
	 Lv0iWbXN08f5Uo3W1NcENG17Jd9EyxFPaBxJPnuUV6ZGcChHtfI8jk8dcLbUwMv8VJ
	 ofN5Rnu28om8xbCJYLI/bDcP37/6spQQcdvKjWlFjgx6P/GsSqXOhcHsw4cIca+Z8W
	 q6hEdPV22PSTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B27E6BF2B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176979203358.7212.3922313835964073365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ae9266da571a69bd032b9f2be2f4ec61a012c464b6740a9a652cbd92c90f1d7
Date: Fri, 30 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769792033
