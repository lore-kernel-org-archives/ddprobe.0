Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE0114831F
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724018154; cv=none; b=lJEkiiaJJhhPHtBqFMHj5jDMYBRoY72G9VGjqiNVpphJA/SRfoYvGX9z0UK1DJRp3sLXMUISzAfD6iDO7Vl5S/27fMhpNB661fgxV41UxiKtSpfantKXLSLp3BLta38l1p2p1GHoUg0SNrRs5LtPcsVno9BXW+bP2zgR6z6tymM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724018154; c=relaxed/simple;
	bh=F6RrnQrFZvKixQqtiLHEXNo4Bfr0rCLoMsjW71slpZc=;
	h=To:Subject:From:Message-Id:Date; b=pls4HkbfsDFTDHSMW7mBKzsSeOn71pp7qQ29mPQIuIocUcSez2/hvDImKzJJK1CRgb2312ALydK3hlxUGGEXsbe9KRgwJhH9ru0+b2RUkurU8YUyg0aJN6VsLaIOQiwensRgLwo7RZwYy8gfBDbwEVqKEDUZEPLvjq1dki0symI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FcYIKSZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FcYIKSZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4DC8C4AF0C
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724018153;
	bh=F6RrnQrFZvKixQqtiLHEXNo4Bfr0rCLoMsjW71slpZc=;
	h=To:Subject:From:Date:From;
	b=FcYIKSZk0/K48xfKfUGfXhXW/0WnQNDJltA1eaj6wTIpCvMkIeGKzCfWs6drUDu7Z
	 0yjaiPf6uEstmRFALJw8OVzhDc6VqyOHLOgNawhW+AJbCg31YT2A9jyEKtgb8ujf4F
	 n/PEnjuh8C9I57ORfiTJDwnniazQgR+XWwEnfvJCPQbipS0ChDbCic3ENBuaPe93DM
	 xTXEyfA70KRCP7DpsNAk4AKhIQHJNMl4bU4oWDjZjqvC5bjzNcTy+BMy1LlLlclheB
	 3ZmoCvak7ldNXIxytDYoQpyeqAeZz1iz11B927IJ87Y6LG4eDHFUyeoi3lzbYVUhFs
	 UlxUV3VH8NC4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5A37C531DF
	for <ddprobe@lists.linux.dev>; Sun, 18 Aug 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172401815366.6888.11737089883132616840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4314c2f21deaa7ca72418843bec2ea22437eae4feda7e494fb1b76318630b78
Date: Sun, 18 Aug 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724018153
