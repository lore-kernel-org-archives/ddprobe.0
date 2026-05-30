Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A5D8548EE
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780169674; cv=none; b=mtkNHhYJDuzkUz6l4GMrBIBCQvVKA+F0vV9Lh76xyyy88/QaE1SwT4rrmKCPF6yTF6Sci+YmcAVbUIQnGa1oSo+vaO7S9++srEjUnOk3FbDVjTjvI9cvsGCpeajP68zCwFmHUrOXrWDnXQaxc1McNEU3CmvnWYJVP9THnKqWZv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780169674; c=relaxed/simple;
	bh=lOIEgER2wOChxdzO8dRtswr7pj0jURniVvPJ18Q/T7c=;
	h=To:Subject:From:Message-Id:Date; b=JBWJw8YxeK9wIogs3x90oysA/DExsvWvR/dAvok5t4zjF2qWurP1oTrGRuArMqCVSPxxpxb78pARB99/hwUBRizs8QkZ76GCtQplXH99ZdrLjMmkBIWmeBOCDuKGHiQBZHJhxeehVtkZRV/pziLi3q173Ompd4nhca39Ug8nwYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ElVNSkr2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ElVNSkr2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2584C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780169673;
	bh=lOIEgER2wOChxdzO8dRtswr7pj0jURniVvPJ18Q/T7c=;
	h=To:Subject:From:Date:From;
	b=ElVNSkr2qKmS1UyTTLjU/phwR/0+2juiLbngZRiP3RyKpYCStU7dykSOcIevRgTCl
	 3mypLcepOvUu4Mt9wPeOrKLXKqg6+am+4ZdrPL1vC1Wq5b2TEt6jcxQaTXO2kDffS8
	 KJ45SUYkG0cf7Euwrk9CzS3urUtpgFvMYL+hCbEGCjGDQNnvmDDtBOAQup4ujTqnVp
	 6P9UH/F8dOVTI+UEiQtZTuCFczXlH1VzBpR1yYlVcPWhR3iasEgy5BOU8ubUcZEuk/
	 ab4xDiDCi7kF6FqhgteeKofDIRfsaOPz1HBFqn2ucc4T2jE7S4oc8iXc3HcfTxvSx9
	 kWSr+y34rcs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1EB1CD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 19:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178016967371.31241.9399671093754037903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0491ab00e6e97345b4cb70b0c9b12e3509bd3d9f18dda54f7148596cd337a71e
Date: Sat, 30 May 2026 19:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780169673
