Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CDAC371049
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784867434; cv=none; b=V1peuCaCSrNx8ycsBC3IDJMVc6z0843MjTRjwriuQD2+WoK28R0OQNK3tCbIoTWIT8YKEBEgrmsjpFXGR5xGORxnf+ZRmw47P+MVFcESn+9kcMGJmBbcWZYkGwSQDg+Yfj+Yi5v0Ca4f9YTAJ6XBaDJz/PlNHBpRMBQfw4XpfVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784867434; c=relaxed/simple;
	bh=I3+CBIqrGX9nKNSR1Hhpsosooj4Erugj3AqrzrxnbdA=;
	h=To:Subject:From:Message-Id:Date; b=T4+31j0Ll84EUtIonGCADXZ1+AfL93HJ8QgyTzt/LcVN4qeVgg9P6m0Pyi3LkGYP3jMAWJfeGpucKtunyjZG8cWSd/buTgb62gfg8S3QSRZqaVoc796ETp0OaVAbRqYhSfTDFPqh/1wv6XBuvhGgdjzM/nPoQxovOHbvZGfBo0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ET9muAif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ET9muAif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB36FC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784867433;
	bh=I3+CBIqrGX9nKNSR1Hhpsosooj4Erugj3AqrzrxnbdA=;
	h=To:Subject:From:Date:From;
	b=ET9muAif9yfAy8+uAIvkbeR0p0PhRseRPl/YVY8PVnTsuF657h2Jb1JthWgh09tkH
	 r/L/YVTs960R/iYh5vJQmYwNrT3N34PGjWxCNHMMnRPRHyIFR5DvyS0a2Ha53lT+WX
	 LgFZBpTpau08ni7903bBIw2Md29jPY4ExV8YzB1oFlWG82Ls8q/sDe9CojslfK0Mof
	 Hz60w3lq/MerleuTH6TLfQidhpg8yZUhGX5DFHQPevrkG/5Nqfl4RbBiHmwNN8IP06
	 CupFYOfh3F7EKN+RcetAYOPccvBYIXe0LLob2tRe4G4N2qjqiXJQSdH5LBo5pxGbQI
	 lcfzi4kK66SLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADCF1C4453D
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178486743368.6788.18199710059424361841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97bc02351262694dc67ed4556aa637ccd28381d08274966662aa20c68a11228e
Date: Fri, 24 Jul 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784867433
