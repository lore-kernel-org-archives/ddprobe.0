Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9AF374720
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770044634; cv=none; b=WBNGdoXJM96VQ5aubQBY3x1HYeQ15kq4Yg4cdWG7ebQtrZ910gP5z8tpjOugZAOB6d9cDX5+UCTDOiuGnwZy5gN0zuLeGfZxxp9bcr2zP7hx7P+zIlzh8QvT9qibrJqP5iz6BDoNlalHh7Cnw3FHm/TrGPuft1aa0PevA+O5nCU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770044634; c=relaxed/simple;
	bh=s+HPRjiq1AiQbTQgJ/sEwF9NUxRWoDcHnjo7ewbT7tU=;
	h=To:Subject:From:Message-Id:Date; b=TOREpI8tx9WTbJ1gD7la1BLyREgDIAwavQQR+YJKLD9qCPyAlhQDgNGbzOHVMITASWp2tf7ZwOwGOpX1zwvs39qehDuChEDkwJUehGOhZd4cjH3F86CPDskc5pIvjbjp2GelSGnycJQ3fb5L76qrxoJlIlctvXElO4e7PgDLJAY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uC8ZGS5X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uC8ZGS5X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4851C116C6
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770044633;
	bh=s+HPRjiq1AiQbTQgJ/sEwF9NUxRWoDcHnjo7ewbT7tU=;
	h=To:Subject:From:Date:From;
	b=uC8ZGS5XtXy5bgE/P2ZXwdt+9cencAchC5U3HbvBXzMywsDgpbkPR+Igjp+9DfqmJ
	 AuaDjxMVmnbvPTxVQ+x3vObHAYoO8SWokg1UCRCFUzIJXQP70hBggunmK11UvoL6Od
	 f6tC4qdFC2Qv1XWg7rDCS/dL0P5yTzChYRtbM9p2FX7AsfLNjkY31+glVp/7/2cMX3
	 YJmKuszPvaGCD9Yzq3TJuzxVGudYaoMCBwQ+yna6jlKsuuR+3mJKhrb0EghDaym3CZ
	 D8NYHQAWY+HyZd7mfypLasSrYuHrM+QAZHLpbhsYgl93ENtxRh5PoS0zTkiOa8mqEN
	 IjKtRPGxlm7ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0188E7DEEE
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 15:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177004463364.10088.3852638791903719197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1654201a5c76d440c666f596fd95fbd65ef03562faf2124cf038b29d62e534
Date: Mon, 02 Feb 2026 15:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770044633
