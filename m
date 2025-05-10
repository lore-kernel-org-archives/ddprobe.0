Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 411471DE884
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746860995; cv=none; b=DzqskK7DuW10LubY5mDyTOeOUOlOe5OuD5SS/chNIexyh4eCUXpJ9Er3LMqxJbO8Pb55p5A0BiL8Gy0ahBVv/FrO79JC5BGe61XHL9fRZmKbEljwwv9p58sCTpRsRpdVsPEYM/ReqRNP+9th/WDt1js73Y64Ud0y/opyTnhRpGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746860995; c=relaxed/simple;
	bh=TM1mJmI9nntVzsQ2d9O7EXNdH0AHPd/bFyQ/+x1g/Zk=;
	h=To:Subject:From:Message-Id:Date; b=VonwUhreh4oeA7P+iC1wZhUIbUd1U7L5k2q710Lhepli6QjFcPmBV5FwV3P0M6LpsPkhBZvMgnEtpaNnwAnZ4pzviLE6W0wZ/Yr/zppsUUjilaIdVac5fvbc9+IgvaroHlGhPGxljtVF1+PGX68ZYDLHjAwIXx0oBPRRPBmmkNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S484sIq/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S484sIq/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A416DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746860993;
	bh=TM1mJmI9nntVzsQ2d9O7EXNdH0AHPd/bFyQ/+x1g/Zk=;
	h=To:Subject:From:Date:From;
	b=S484sIq/1I/ZcgaQwsg40rZfi7Cmz1loqy4Sh6EvsAsqlDq0KXHB/O8Xqa1DahAwu
	 cAMMCWzduo74yvOucvJ7b10aRDPA81dinDJWJXDBJVDsWnUp8bQ0I0cNs/X7H13rKG
	 +niUBe1db304Q+5IpkFcmtnpA7nlMPKy7IUe/3dND+OQ5lvFuZGnzHyORveQExnCPn
	 +210eg0tST4kIHiGYXcD+qZBI5sVYlz6I53s1V/DLBmKz2nnYVpGN976JB6fYLjSC3
	 D9/XBeMDDpFB2lwl8OiUW9NLhCCpxvHeBogl2WDelrfpxLDG2XEYF9UBx5LORjxt21
	 OV14M8CumRfaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91599C3ABBE
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174686099357.5098.15503321168308595054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abf55186e0bef6ffa198a39d85f78caa37cf0eedf0981d860dc2e953d723b60f
Date: Sat, 10 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746860993
