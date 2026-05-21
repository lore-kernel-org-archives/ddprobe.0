Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FDE3ACEF0
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779360634; cv=none; b=YIue+ag0DTm+C5N9uIPrqI1DeiRA24SshfJ3J5zJLuYUSlvFtwh4tWNYTyIghPlOU63rnncvXb13NXTczPPcZ9rqSxDIS1t6dUIkbWdcggtGWN6SJRlwSjmGTE9UubFxzkFLMXtAbG97ROsYSEQKLLGJdaKZve3weuxFlvtxi24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779360634; c=relaxed/simple;
	bh=p1WLfyhrqaPW6fpf+xD43AyeywsVaKLinUIo9xf7pKI=;
	h=To:Subject:From:Message-Id:Date; b=mMrYAlX1sPMqwQPE4JEfsneF2Yjb0+ENqKd8Licmj3hqzx8Zs184xhEfPE31j/BIs7x9heYdlDNJXd4Q2mDI+OK59UGsA1qqBux1ySh7EaCJGvwqSkxn6vfkB/ikDqstJPV8Bbuv+yP1AWYyE6KomSaxUydrLPC99i6TPXJDPHA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk2b2Ms5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk2b2Ms5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8CFC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779360633;
	bh=p1WLfyhrqaPW6fpf+xD43AyeywsVaKLinUIo9xf7pKI=;
	h=To:Subject:From:Date:From;
	b=Zk2b2Ms5vIrQg5OB6Pgax59bl9hLG1g0e4sr58kEPlCL50jgkirv52HZMJJ9KsUjB
	 UK1MR5Bh/OkqQ/rJksQonrlCENq0YmaX3aB18I1FGpigXKnKoOfWHBflcKzjX6/2Ib
	 R19OU+IpEaXMDGDVjxgWz4ITMNf4nOUgr2J7872sh/uaL3dMHX7Zur+6S2z3BR81Yw
	 OGCK+t6Me/XSqz5evt/Q+hvTbFLNLh8Yd1UQHw9EhK0i7tzi959ZVetuZ5HkcXOGb3
	 3thawL9BjeSVmtf3bv/frPBxGpifN1SAmnEZhz48joBpaJKPDvTSs5QABBEdQRhHKY
	 kJEWefYY6bsjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BBCCD5BA4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177936063369.31017.3327022857656411024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a800fe135ead49f86230e2104faac89706487c82fa57d384f763d3d7f95b60d
Date: Thu, 21 May 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779360633
