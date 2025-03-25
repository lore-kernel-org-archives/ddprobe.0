Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D688125DF
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742908794; cv=none; b=tYXF26yMXUCE4/pptumtnVEIEnLqM+EGjOMlgha7SFH/SaZ42gkkfAwqH4rjP6vOZtYmhZ7OE11xjSpjkSHgLVyWQ8Myku3L7UqoDUVDKiWfgzOlO70+vlwhI2JsHLz6AHozXycOZKPEJ2ugE9P6KHWqyE7MEHmjw3Gs4ysaxdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742908794; c=relaxed/simple;
	bh=We1oyCS4ct8MRKwHBWarNFGApNJlWQpxweBjjd8mM/Y=;
	h=To:Subject:From:Message-Id:Date; b=ckYoHf+bsWwJH0d2Vc3BgRBydDX9TSo2nIlH6diKklZjsPhwqLRQsUlLuOEQoPkW0NKkv+HtQruKfTYSnco9bdbsNGJeZspuyirH5thfpjOb58Y6evqkLPjzTEIZij+qETsZ/1fQW2HaZLAwNyOGc64/ukoOrlc7hJe1ZkggsRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/pjyd7i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/pjyd7i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC297C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742908793;
	bh=We1oyCS4ct8MRKwHBWarNFGApNJlWQpxweBjjd8mM/Y=;
	h=To:Subject:From:Date:From;
	b=L/pjyd7iiwIAg4vyZQNdvWNXydOPOG04l6HWLXLniuW1O27gmfIZ3g6GeH/evzOFD
	 Sfjqeo/07wtWnhqW/KylfNFqz5NK1S6mb8ugjn9SVJw//ov1KW8zRK6BUgSMm8t33K
	 NTu1z/86hDPdE+iWOxdibXdCL9hJGfD3JdV9tXqtga9d7zIybVduJpNwvaXZ+U3K9G
	 8uDCyg1y/Jl1zf5XIxGm5JBma6XWrgrIWQs0YFN9FLjQRwsxUGMBdTiZjcpD1hgA4b
	 nuCBY7SpG/He2FTxBcKJaCy3/MxrzbxGJOUXWaT8vgc+Y/2CH65xnqsW5l9c50MesD
	 /h4ajGoKsolnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6F29C35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174290879366.1724.15652760881012675390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4b82b6e2f77a444e44198475d36d379ddd4b23a53a22c65b082432bd823c82d
Date: Tue, 25 Mar 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742908793
