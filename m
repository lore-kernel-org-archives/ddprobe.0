Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A46E3C9EC2
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788982834; cv=none; b=rG3a6yeZS3xpqE75aMzFAUY3xtgdeopWdtnUxo/P5fxi0yp3nzDnAJlY9/J5gpWptUS/GS0jgOzLUzRx/58e8y88cMW6J/ppqZ+OBSsSGNiu7WRMt+LPxHOK3fGBvJJA1pnxH3WNY0HVs0QBT7fnuPjYsyQp40SmGMVBDnDp8vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788982834; c=relaxed/simple;
	bh=5UeBiAOTLUp3MZ8B/8Wg08qSk5ljnBJglKrubVeGJ1U=;
	h=To:Subject:From:Message-Id:Date; b=ou84FWUGzYxWSky+nKwMJPVuj0fevXmNBzF2lR9ycJUH6jdsUsE2pSUkptOrj5/CZcm4cF+8Kq0V8ClJawMztvE/+PAfAZD86BEClz8U5fBZ2NPo058FuRmOJ5WfDiqbtiHDQaV0nmPgYDOJq82rxIlP/4MOGhGyOii8CLprLps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i2pN0Zun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i2pN0Zun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47A0C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788982833;
	bh=5UeBiAOTLUp3MZ8B/8Wg08qSk5ljnBJglKrubVeGJ1U=;
	h=To:Subject:From:Date:From;
	b=i2pN0Zunkvm3iDMcF64WuDjXSjcV/gU8sq6JMBJyZvZOHhJ2DmufnhcwT0imAPBfg
	 iAsIH+MonySmWYVsqsF29ctLP8Owj6DlL7bQ0tDKVQmgtSHkI0txtpLZY9c9JQuUyS
	 f0qhBTESxkyquawfjkfDongJn+butP0LcBsSmsILMuZfkujmRrhM55o02+IGeCX7Jz
	 8JiJtscPSO/Kw6CI1AaR1QDIr9rV++libq/05r0vYD/QRgHKU8HhXY9unuBYLyxpYk
	 TdzBZmHIN5/ojm/15tM08uZKjVe/7KWYBZw2cVMaSheVSPgErywP860U5qxIo7hxNi
	 3foACb9xDBtbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADC95C79FB7
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178898283370.11421.10634453670935765981.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46007cf5d7cbd39fd183ec96e1da049289a4b740c40b3cf531afdf178c72790b
Date: Wed, 09 Sep 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788982833
