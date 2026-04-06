Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CD4538B14B
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775493334; cv=none; b=TuQx+nFETvsWxUlVqNol8x59NxKUtlN3fWz6m85lQpOpy72OhM8Hg7t7QBIedTWgUx+qmLHzU/2JrsPpLCfmUEJ7zxaTFIbVkONc4fDnbGHVFGDRKl8nqhkAS+SkzW/8kJvYG/9etglI9wp8bRyXrT80SwTySSfJqL2VhWskLhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775493334; c=relaxed/simple;
	bh=FMTaVKjMepG233pEH/Kyp6p8V43JeaFqrj5lwKK9TKA=;
	h=To:Subject:From:Message-Id:Date; b=C+NDnTc2UbuFCXvJKoci1cVnyviCa4CBzC2MneG2RwD4/YcTDIoPeXUvpWT5luRnRjrLs6Y1pGntoqbBwvYo/okQQUVGAV8tQEecvkiSQlf3mDCHLf+WZZ1zDclrPHmNdHsvpdmorxniT5pYxoKgcuN/TAR+Koqb8z/EtajKYuc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uKTzyVHc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uKTzyVHc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE09C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775493333;
	bh=FMTaVKjMepG233pEH/Kyp6p8V43JeaFqrj5lwKK9TKA=;
	h=To:Subject:From:Date:From;
	b=uKTzyVHcpEpgKkkCgkRrGw2XEMZgg8bbc1v8n19EPt1mAweQNsur4MZv86HU3nz7v
	 h8lMYDjZvriiO8H0jfnTTwyvQTQoit1UuE3e6aRohvtai+p+9lkDAZxbxbeDkrD2/x
	 WehUPGx4GYW2ElrnhTkPT53dVEs6ML0VldNfeMemNd25CWWPvNCem83c+o+POaY2bs
	 g8d5GzL6xwj5d/wc/dXFdlGu3AKmzs0SWmX7foRG9p9ZpIFybLOl37+pEZAldhd312
	 szJK/iH++2MxYxtJDdP3AvryG7/e3VhoVmLZlyW1TjO1L+fdE7F0HD82gQd/wvdi5w
	 e7FNnk4tdLGRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB866F46C56
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 16:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177549333369.28274.18236326280971824733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f71be81d004fb3702732996cc40787fa4bdbbf7dad13326a421eeb84297ee15c
Date: Mon, 06 Apr 2026 16:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775493333
