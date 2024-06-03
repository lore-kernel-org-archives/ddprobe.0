Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5282412FB0B
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717428323; cv=none; b=PmHRSzKqJO1KdwEBtXCFiJ9OcHD4hYqIY0mvwvbTrY2yRfh3lyaRA8JwXeXS5RKvwoRTtWNZE2Iyb5+okuSkH9nwm1AXpEYNa6eVe+ypb6jdvbSLOrMDKIW3w3+RcSydyCsU5dTVOWIgeueRGpsh0CjyTphF5Xcw//Ctx5jIavY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717428323; c=relaxed/simple;
	bh=L4neaAZpK649HmM3fo8rnVxCxpIrafvdi6vIBiBaFKw=;
	h=To:Subject:From:Message-Id:Date; b=EBe7c0Vv9WDMXwIBwUHw9PYg6vDmlpAoqR5UAS38ZZh92vHjx1cZ+aGVBhIrbhWL71HtZCso4i5ryir+vfw8My0yl/SDPAIds8G3iapdJ2fOIrXclqwPLOa8iSRiXsp3iwMiAbig4pX36zXjc/DtCJQaxsiHzHNRbOR3d8fK2iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WWbxzJG9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WWbxzJG9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4FB5C2BD10
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717428322;
	bh=L4neaAZpK649HmM3fo8rnVxCxpIrafvdi6vIBiBaFKw=;
	h=To:Subject:From:Date:From;
	b=WWbxzJG97J0A+PGf1+njgZs5jMQrYcjIz4ChLKGCds+bPfAqIKGhZtpexIKmjl4ok
	 HLRmnJFyblKd5p6Fz19ZxgkwNjJZjssc4bma94iwVNLMLRrgP/ofoI8Nr9tjv9Ch09
	 +tP6xWrkFvbxBXJg+pWSUnlCmNM211KIvOmmDlLO8mN+AqLrWrR1r3IT5iY66jjobs
	 KgE73C8WSHNKmoKX/RbQ/opxEdQhdhNuVoyLTCPcrBd/SvU1Bwl/M9bm3daztqw144
	 Hv/QCG/Kq8OUKNZr35HmcRv7LiNV1Grv/fHJrt4OOnhf0Hz+MkMGjFRguNlmjYdjd1
	 qPjgPu4ALm3sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCD52C25B75
	for <ddprobe@lists.linux.dev>; Mon,  3 Jun 2024 15:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171742832282.4709.16495950299763702613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a71203b6c82388ccd8f86561b75d89c54dca2617da021a614c382c2413ddb2e2
Date: Mon, 03 Jun 2024 15:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717428322
