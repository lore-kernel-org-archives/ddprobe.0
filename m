Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A614CA773
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788535234; cv=none; b=cd8P/YlRWQAeF8bpraqwQRNExG1a6lgHmUAfr0c0p9KcgRftnT1NuG0a12IfOEUbPFL+J95kB9eos9SMfnMxq7bgO/pWG+CQ/5q3QS+E/qp6voBcUgZ46+Dsu+N2Z8NQ1fSt6xyRr2LbjnoTzVH9ai7UisFZfJ8FJ7z2EJbjS3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788535234; c=relaxed/simple;
	bh=+jwCHWQ5Z17Y4Rpw8stIFSfptW2esslOKEPX1SwIO18=;
	h=To:Subject:From:Message-Id:Date; b=HTePxo4Zl6GP9M+4R6lRnpfhiEVpdb183SrE9B/36LkUM7ZnnzMO9bExAFew5LJiFvBBc5GeAugVVZ7Xj930kfHkNetvP1eH5sxzIC+NAKH7BT+Blk110TQ0GmnRjGQoL9nnShp/gPwAy/EStuZavQQ7ZFi2BOnWb/KKRDfdBr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R2NMc3nC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R2NMc3nC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3525C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788535233;
	bh=+jwCHWQ5Z17Y4Rpw8stIFSfptW2esslOKEPX1SwIO18=;
	h=To:Subject:From:Date:From;
	b=R2NMc3nCG4XohD1XCrPoe/U3QLPzDSgb6w+AXtnzGFZZf3tPhy8u3b0QdLo5n1XmI
	 JVb0WqkTh3As6rfz7baUEFuqvvcOjVWnF+x3KSJL9dPeDWoVHSGjlc/mO0F8AesT3w
	 M2mKn22wHjim1Lqp5uXlGcT09H/jNBuUGKJqAgH/P/aBjGPifjuBlfnvksvBuiGSEn
	 zvo6l8CdExuBVXCJcwQwsRe6MYUS2Kg0FqrH4OhxCycDcSgHF+wu4SBKws+l1/Tei4
	 PQWkuTaq71WWfuynCMUuZPxylv/qHBfPn31P9J24qtzVmQXGdyYxDe65NLVfUscgyL
	 KEh5Qmt+7igKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADA55C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178853523369.7954.9882029267229680241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5787cbee6deaa35a2395667b74301ff92d503200e079ee1140870188f25e0f1
Date: Fri, 04 Sep 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788535233
