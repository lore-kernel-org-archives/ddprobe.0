Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC6F1D5ADC
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746263394; cv=none; b=YJOm+ks3D5hOvtOEU/xkKPid3H6ZXhcCy/NYrwniivNM8uh+sGQzxrRQA4gPtgCI5YISlF7asMV3p9BsxPa0My2XdxGVE4l4cWS+c9yoDfzvy6aEJbDlIq2WiuX1jhbeLM+4EoZTSFG4+bTbo5NxHgJbueQqwTnTwQW1Tpl6KjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746263394; c=relaxed/simple;
	bh=l96YDyy6UY1xv6Kbj/55VnVtem7Rza6jb92W66LLqoE=;
	h=To:Subject:From:Message-Id:Date; b=llxPMq8QJvetaEBep/krJeQtE3lgqrN3zlusTfMh1aGDzMWRvKPFo9QzBdeup3fUZ6k7+6ESaGvIfXp2KkIwu/4oL6KPWYxeEVJfyLx/rpIPuRKgacVJHvnDG9vqW0bBOtvU6W1Jb7fnh29hbVG9csnx4Ev7rHsQbLSpDEwxpf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEjNDLsd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEjNDLsd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4759C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746263393;
	bh=l96YDyy6UY1xv6Kbj/55VnVtem7Rza6jb92W66LLqoE=;
	h=To:Subject:From:Date:From;
	b=VEjNDLsdQCSI3vjbmKWoiepONen1urmfMjwPfOac3JtLf0JE8kUP1K7C4O1MFObul
	 F5H8ktQGab0arg03ANpqA2PvACmqX2P/57ZUFqQs2GVTK/dBI7CzNMoCd57CE3X0tM
	 R1lrnCrJfeOqMqPKK7EDpVL4LZaXO5U6i5we3U7/z2v5bY7bMpkeHf6/l/ye6rlx9k
	 Ex66o+o1GeOhX5kOvbINT46Pa88zqmRuBgawMiaFfsgPyASHJVPh3+PDKCibr/nGCM
	 W7IQXp2+nP2eOU0i/vt/mwquwVXZs27ZGDgTV+TbFxhiYWwGGVN/9w4Znxy8JVoCUL
	 LyvLIRxcTYpqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9315BC369D9
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174626339357.4596.2840063495644332022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfd85d48b018988f500b43f5cb17d6d34e04b26f87811ed4a94725c67f324253
Date: Sat, 03 May 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746263393
