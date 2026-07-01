Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361BE37C0F3
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782928114; cv=none; b=ojdfqrGekkE09LbK7FdlEFS3LAvMokhBbT5cARV6mHGcwuCJccHFYeVHaMlH1EE+Bq7giP0FKqdNkmynV9tI/3HOiO/SNd8FFo+q4GGnTdatCb431MeuYdQi4Pmo/1r/SrT3Jb2DZVA5QCxZzwU4y9YFMrvnWc5ThEa1Gg1ySK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782928114; c=relaxed/simple;
	bh=x3pFmVgtzI7C8XjcmFQMHjbotek4jzAaN/29+bsPOMg=;
	h=To:Subject:From:Message-Id:Date; b=dkcTcZ0CNsN9bUZGNEpgFyF5mk46A+xy8/F6rc8LRLdfFl58LIiSBqXxDVvsOYL0oDGQN/FEkFGqFuotlviL4ou3u3woAHsn1TG3C09cs6gOnaDRqnQIjgGG6EYLpA7OvOzePppQSuUA+msyqiClk3Lv0gR8L0RShXzcwRaBVbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahfGAifH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahfGAifH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C44A3C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782928113;
	bh=x3pFmVgtzI7C8XjcmFQMHjbotek4jzAaN/29+bsPOMg=;
	h=To:Subject:From:Date:From;
	b=ahfGAifHZhqcngZ1sPBE72brl89c23m8BdR/sMXhtd/fS2sXRfPvL2u6pU85xiyim
	 BNMNG3wgICC41Hiv/PndaMLnQyO/KLWTUofwlm6S+31F7S5LKpaOsQVF2PE6QaPUFi
	 ErLCgDttam7zyNFcFtJ+2MWcavgsIbFq7UCQkfs3ZCeVbUkUy1gkFl9xSoTtj9BB3U
	 JmB9wwGD6B72J14FSHbKfNiunvljtNjhBt8AWWpJDFN5Z2Kvmkcr6LzyAlfFZtILR1
	 jfy+7GrOSylZoIAmuOT8TjsgPbbW928YtswFUKTUpYHsjfUUlDUoy8Hgjrllavb2aG
	 p2ebcvYMxxOWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C0BC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 17:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292811368.4160.15940748446461044724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdbfa5b4096739b8f2c37c02540bb80031c083a784c33a6e0116d0487c93cea
Date: Wed, 01 Jul 2026 17:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782928113
