Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063F0194ACD
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717759043; cv=none; b=HG/BC6Er3QWJ55NjkL2vE1zgbjjxI9Kw3UEhv/ITILxVSThqxKrS+mZ/Na8PIk72xoZabT1z2OclMVtvEpxpx9dkvpO4OAjlybgf2dO+Ffg4mgTUkLHwN43BEDfKb+Olu3RgMLVrlLnhAZMHWfIHlH4gfqu1jfSGCMHpC39K86Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717759043; c=relaxed/simple;
	bh=tQA2BfruT8BxccbYf8TvEiM33S2newPyTJerBEUwQBY=;
	h=To:Subject:From:Message-Id:Date; b=DT+2+AR7xcBMCjn9/CKV8ZaHGwfxnrYLoTbM6yD+EWsf5FHiL2rYPzm8klX7PRRam/9Du8yPp6rFcVg1wGfLriwLdi4r6bNQYseIJtQaKZ30wVTh5jbNIHNTwewgoIhNa/pbGyEL6Txi1VuBHU2xuy4gnUTkVCWDTM9HK6F5UiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1U3YIwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1U3YIwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5C9C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717759042;
	bh=tQA2BfruT8BxccbYf8TvEiM33S2newPyTJerBEUwQBY=;
	h=To:Subject:From:Date:From;
	b=j1U3YIwnn12V7iJ97DvPIJ8rO1MkAmSyvQC6WZ91JR2+Ki6cQMOMt/x4242moyeTN
	 GJgIzsvEE0ikXzuKKijUQdI/YBQvDNoETbSjdFjRDT/6CnZGm11oyJ2quWydBWNEQK
	 37EZqUmXkbIXnPo44pzOTpk1Lsvrv+J9lyl3crPz0Nj0DbdopEpQaGnYYF3Kigj42H
	 F20PVBcOUtsw/xKE0k+It3pHDkz2hIrvqQwoASkz08BCXfBLrFRQoEXBIp4bnNsAgQ
	 R8ahE4el/rKDcPhpokKwi9KxanAYxRAKGHnmcmGp3TjP8CbC8sQr+epd/edMR74yc4
	 AiV4LnA3aAgBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3DACC27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 11:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171775904279.28966.2493039772664163940.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26e3eaf3b7a0f6479f925ded80583e88adf88a10be0ef4b058b1fdc087be848c
Date: Fri, 07 Jun 2024 11:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717759042
