Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67525944F
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718525303; cv=none; b=tu8cFgBiVUmUCQoybt91Kuu1/fXUgG94KtQXOYtkE7UcLYwdYHQBEoLq2jF1znHkqfSYzPjcRSsob6E7xlQ34xpaUHLU0+bQ3odraMk4t+1+htcOp8wTd2XHoQW9Psr4cN3bro3JSV9NHO3PksEUItXCCYrKQYCu1zznSCOSZaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718525303; c=relaxed/simple;
	bh=IZdrUob27suAZ/Hnjj1DeASM/SSFhhCpt/qslnt6qI0=;
	h=To:Subject:From:Message-Id:Date; b=h+DA2bPEepnFw6GaVpja7MOv/wKZ5Fe7oJIVjrBioI9/en4Z8jwf6DxUfBKXNZ3iMVFnqwtw1YxEwcSR7dJhqoF8WqXVG3VpjUFQ40K9zlW4Lmbfxfy6moJcEje3TCU18PQbU5YwpOamQWy9Clz3VoHM69I6pTGhUpGg0jokxeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rkHtp77m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rkHtp77m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D65FDC2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718525302;
	bh=IZdrUob27suAZ/Hnjj1DeASM/SSFhhCpt/qslnt6qI0=;
	h=To:Subject:From:Date:From;
	b=rkHtp77mo4ORW6DYTnmtsbQYUrpAJo3UBboyxkHqFVFftJPAiJbHUH3SfrJf/MCu5
	 nN8lcZ+6e2CH8dcT4ctiweGhpufmrZu7Vn/Spc3zEu132IXL2GEtfTKOaBFBPuRUeP
	 soCzesDg1/aTTfz6HBafdSCWSvQqLZcEKISScIek3+fM5N5fsA341QirNx1XmV3hcb
	 JoeuJBSrgKK3YMjdYTVwHUZVsLw2T3f/CR89/u4eZkdI8b5Z8Cq/6jH1pqiGed6ROi
	 6o9Ljrr9h+McyjkMgSr4PL6mVeWBBqbF4YqW+wt296nDylbg9ge+HOjyp09NbLslje
	 3iT2U9uhABv7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE5CBC27C6E
	for <ddprobe@lists.linux.dev>; Sun, 16 Jun 2024 08:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171852530275.2088.210113434271871768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f023d8cc81caf8265704a4a290639fb324bd07779d516e133e221cb7f67c149d
Date: Sun, 16 Jun 2024 08:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718525302
