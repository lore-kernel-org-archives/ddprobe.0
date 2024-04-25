Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 670161553B9
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714080143; cv=none; b=GVB/mEsDPlAxY7k/++X+qjblGM1HMyJQET5eFMpmJZ/rfkhe+uRmTsKzP21Z+VIDswNOKVHOaHspHGZAHfP4gEmKyxUHf36J9yCeMOeEelZbXaeVlOpH6gTASUYVUtPVKO0hbBplhqDVf7r1Gh6JC0s8H71g75n5Drh/iq2fai8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714080143; c=relaxed/simple;
	bh=aQY2wdSBnbQUqH00qk4gDYkJWOVo3y+n8Ysuc7BaUmY=;
	h=To:Subject:From:Message-Id:Date; b=krvx7nGmhMIajM/y9V2Fhodxtrn2f/ts+kSZyVahRZ4yki3uhFOL7UJlEjdVw2nNLvOV3W/UP1lM5AlmmjFCBRTXzDVlwHyDahAZbVkPp/1l2mjOKZQsvnlqqf576zLZC1hLVG8L/S7k9bfgREmbUU/9XZcQWRXMO1bC/KJHHW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0eKeZj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0eKeZj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9C95C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714080142;
	bh=aQY2wdSBnbQUqH00qk4gDYkJWOVo3y+n8Ysuc7BaUmY=;
	h=To:Subject:From:Date:From;
	b=W0eKeZj+dFkKkeunMd8hCiyQ+B8PnZAUeqvvf5MiUMsIKuqQ3t8WonDfjf99yeCGW
	 e+3t1rvCa4zcV/57Op/bIQEP+xo5XW4Cc7OB/E1Y4LGd+ZIzb2mwrZzK1hCwD3en1C
	 b11Ni41TWjiPF1AUgF4uUacqjAlScf0Hh1uYT3FebnFxl85FlgrkiVCHLm821aKKKu
	 magFqbL83XsIdW/Kn5PpcPSnJl1jmUZWMAXmtQWnwjU2TKJApRkEqt9mGlNUBb/NpW
	 d8C4Nf9/muzvnzA9LOg38QNQ7skESkxyz7WnLAfO5vYrEoDpgcq0vYNM66M9OfFuui
	 5t2NHSvJ+2CSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2CE2C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171408014278.19672.390219116767883253.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0953a72ea5616a1ead882705b23bf656d4cfa45bf468ae46e6654d8641340f
Date: Thu, 25 Apr 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714080142
