Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38DB21A256E
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754087394; cv=none; b=Dx4eP6t3uMxBZq/NgBJonoUFH5mqmWOAVdlLhXNpm8yJk0I78Hfv8oKwvqavXBp4k64SQioAumJDcJ/+Z/KZm1O5O725zkCD2oPM2RBgSd8XXhE2E25KN75JYVEe0sMhuVYnhrBAKUBpmJrJVkzWAoyZLO1pBffAD36ku4JHDAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754087394; c=relaxed/simple;
	bh=GkV538yDPrJ475C4533R/i3MswQu+VdiOIa/Sgz3cUA=;
	h=To:Subject:From:Message-Id:Date; b=BRLa0niGTLkJYc2E3eoNoyIPFTFlsoHCuMU1nh9zdXEqiJSIAJKC1akWevah5xu49k0agInjw12A7lMXBO0aOVmusJg6Lbrh6GmiQEM1gYN92xmDE/lQP4SFMPN/p2l0PjrFG2WdDpiT4mB2YkJeWees/JFXOhIlbtap+sieFks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F9pbTeNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F9pbTeNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A561DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754087393;
	bh=GkV538yDPrJ475C4533R/i3MswQu+VdiOIa/Sgz3cUA=;
	h=To:Subject:From:Date:From;
	b=F9pbTeNergOYkEVZy1n2MoHYxDiiIDAirJRVojKajDZH979Sf2fWaoPINyL/zpCUW
	 GhCl5Kdiv4S6MGfgV4i1LvzGZ9G9QDfnD4H3dZPNATg1v688sLW91SgRXxQ/RyXR6K
	 A8Uo67ZwjUgFnVEOHj+2Dgiu79tiFBtTOKw77DnRbMd2jRZ0YaaxIXl9bqPhHxI7bB
	 qTuTnyUktKEMlvWGmiqqZ6iRc0PvIMAS4+WecbYeWb6Hn43Vfi7cK71RpmTbfgXlc7
	 l0P/Cg5fZQhGQ21Ghc+PxKtHf42mQLnS7ly1Q2CTe4kuCNo4Ya5oGSJ6BcHWjY9Kfq
	 wjO8DReqOsI5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95259C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175408739358.385.15757297123594566128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 328e8dbf69114bd244ce671b5435467857f7a21e84e4b6761b25f7397f3665e9
Date: Fri, 01 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754087393
