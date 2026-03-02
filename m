Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 166DF3E5582
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772459094; cv=none; b=UjcDTuv4trSFh0VLxXAdrDWjc9EtDcUumjRSK/mLxTrQPnAyLshdi8Bh5+J0iROx4r1nhh5+iAzCzhbUkGk6dLUDSsg/ab7mSz/bOa4+3e9ajo/wPl8lIWFnfBKSgv3SEtdF6uxz4Y2liUuseWIuBUBls5u7ggIsDI6WF5++QuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772459094; c=relaxed/simple;
	bh=uB+wEkJKH+gOdOHuswUuruW+kt0klmcGIk7w2hzdQNE=;
	h=To:Subject:From:Message-Id:Date; b=cFPczRqUkxp2MiEkno+IrYOuLYqJMUKsmL+GbJay9YCgBrxWg9xCNO5X9UTG13tNo4u26wSuakGGOs/GttFHV1K2wtIIplZ7DNnPp3U/C6mCUB9+nuLpLSk+2ob2rpIdhjvheOxKITMgtJwOgClUOMXU+Ed4yCEImGYIolGxZOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V0HzR6ze; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V0HzR6ze"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E58C2BC86
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772459093;
	bh=uB+wEkJKH+gOdOHuswUuruW+kt0klmcGIk7w2hzdQNE=;
	h=To:Subject:From:Date:From;
	b=V0HzR6zeJ1II2yXQAnvDUaYBBwHbCgwK9t41Rj8MJLA3SxCwuqikXwBLXxGgxmmEY
	 FrdJ51Iz9FUE3OinPppikL7e2Bz1OhCT5OiGvN/koi80WoJ5ke7RlRehgXD3X6xDC3
	 1pTMV6uhhYqx5aBqwXoE3WezpRguc1CchyX7JZh6s24QBgJuW1v6XUr3uPs6kVKGVG
	 WdPer7+D71cPzbM58g81g3LwmaF9XN0Tv1pwHWszkid7x+FU70utr5ubAk3TK4vDsJ
	 cFsZDyanDKcR8KW4f//SWQDuDnsG+b2bhr2YIJqzPucpYARAq9gQNqC9/N63tDiVLE
	 gs2mU83/2jP7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C3C5E9B37F
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177245909362.16038.9456455220699175214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6ceecf5385dbe74580a0c6008f304e1da078c93df4682044c66563b20a1e6f
Date: Mon, 02 Mar 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772459093
