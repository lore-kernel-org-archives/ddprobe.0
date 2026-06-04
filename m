Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E1453BFE4C
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780598674; cv=none; b=lNqwkRoDPqONYwAtr1jemWfh1ktEZktfMAKfyd1A/8gWJ5scV+EwyzWgMEOWIBRBFwAGpuQLR2nTI+f0Y1+RYWM/+3lGKqhyzB2EDAdhM2MucYslGS/e59ARcgUJkoQ+WKojuJlMlq+8faNJilefSKEpWDXX9mpBVcIMf+cNK3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780598674; c=relaxed/simple;
	bh=A2blGGSauJmpPVbir1qH7DqdFtuJ+cow7PPJCyOB5qE=;
	h=To:Subject:From:Message-Id:Date; b=Rxg6dkQuEr0ln0OoW1pHVQGMZwDle2D8csvsQKBobzUrc+rCeLU4bArUJjLhpBz9ttJwBh90HNhldR8NLedG5FERdaqIlnf1NJUAX4aLGn1QV/1M+RhOxFsuUDi4PaRPmZVve3n1/IG1qFO5AK13JGHidgYOkCnBgRPZOdUfqTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e3lgsN86; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e3lgsN86"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9F15C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780598673;
	bh=A2blGGSauJmpPVbir1qH7DqdFtuJ+cow7PPJCyOB5qE=;
	h=To:Subject:From:Date:From;
	b=e3lgsN86sEOnZYOPPrHJ/7i2qaV01A2y2k+FeX2TF99u+hJSrJyaI7RJuPEPti2wS
	 LAGJy6yyflwlhmPsLCUA3wNbsyHAtG5mOs9U7SxfAg8TDwYPrkqIvB/nYjb/t5ML0k
	 83bgT4wVXW7yTpVmW5MFFDolmw5MVzZCzUyrFlxU6KQmcIKZgYXkmc/RhuC0GfFzc6
	 D/K+41McdSakv66Fgt/6be9r0xx6wQMD0D1P739cA3Cy1NWQ9QdGQmpw+l0vzJwa6o
	 AUyMk8pHHX7/dx/JiGO7rXouMfLL+kTAdws7sTQRHBIirEtTniEsYZZEv523+NG9ms
	 Hj9xjJx7qe5hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0237CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059867371.17217.15572693065796169064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74c58270d3b424befbc4b7ba8fd8d56af985eecf4b0a07a536da0cf5a428f010
Date: Thu, 04 Jun 2026 18:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780598673
