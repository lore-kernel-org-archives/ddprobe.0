Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74E2B3D093A
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785954634; cv=none; b=UjUbAvTNzkgjcoom3ZkxNGh6/ux+m4xpnl57m4CSKri7zMy5fHp8XZECOgo7o/rdcoACzEbXanz+yM/t7G3CC9/ZF78NpFE5r6YoDxHod07yD0JMvANsijiGAvSvr5jcxkOqxB1ZVTNjKkzBodsVhEku/nY0ohkFoyuXcmZh6bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785954634; c=relaxed/simple;
	bh=nTGoXC3w/laLiBzDi2DL8i8iWf+qbIn8B02/hXXeCoU=;
	h=To:Subject:From:Message-Id:Date; b=OTHttNA6OdGChav0GOxawxUjV2QiO7IVoKr4OX8qBdE++kr/URJbQ9j0TKo9QokMFpjNDvt2mePKxnJYZ6F1XczEydJlZ8oTKA5SvMJs/VdwdJMKBgV9RO1McfMSWQL0l66UcWF0k+uQHaVwNqBNZH88MaLOn4exYc4HwP/RWf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ITxSCBxh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITxSCBxh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC62AC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785954633;
	bh=nTGoXC3w/laLiBzDi2DL8i8iWf+qbIn8B02/hXXeCoU=;
	h=To:Subject:From:Date:From;
	b=ITxSCBxhqWtEVOBd6QU6Y9dXtbVxTiUIBZWt868rbQ33nj9aZIVvSDGK7+blG9pEI
	 WhibjMLRtsfCbnIx7WivxtFDovZUF69wIZX/WV4LtesUFJamonmfAs0Ax01H4XBW0q
	 KBGUwdNctn+teoiWqWMfXdcutaHmTfxLcPpTLLYaIBv8FvQwkI6jF4A/FOh3sG9Oh4
	 JRmyVx2g6ARtl6uA6RvFE4t3VId74naEF8s4ju98hsNqZiKIG05ojply6y06WmUpAP
	 dv9sbBSZTZol2zq3E5/xYmmdSDExGR3ggvOoBIt44BqRYuWFVLn8xwEDsMEtKHmoZu
	 nwW3D5FaZEmVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA08AC55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178595463368.9337.592789553460766803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a6c41785d72541a9ff4f854803a6e13a6838534879c9f67a82b1774f493112
Date: Wed, 05 Aug 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785954633
