Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283AB35BDAA
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783294714; cv=none; b=Ftz2CZpTIFx+55Uwqj85uylaJ2CiAICTQaXYi8dZ4TuoKG731Q20I+JvP5uQYaLfRxECVBqy6kAmKIg6RQqx2am2pLM36EPGbaUYL1SahicLjRq0KN8Oq0/rlEKjOn0+RRMTHzpb30dxaxxWjvYR1H0a9BcV+gRVkjxdGOQgYZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783294714; c=relaxed/simple;
	bh=kx4VB+K/VrMfPJe26/rhpmgG8Q/3MLKLpHa8niezqKU=;
	h=To:Subject:From:Message-Id:Date; b=Ow8dgqkzOlne8cr9/HPzPGVhE0k9GIOJuNHUyHCuNCen0zq2iOtf6VeEqpM4AYLLuagcEcC/ejm6Eiy5kNj6mEqPPg3DrO5/ck5sRAYUEA43U0is+g2Wc7UmBBfcNFYO/iwwKvzccHS95kWveCcBXE2GaD4kgCbgZeVf6ut5y+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sy8agaU2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sy8agaU2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA059C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783294713;
	bh=kx4VB+K/VrMfPJe26/rhpmgG8Q/3MLKLpHa8niezqKU=;
	h=To:Subject:From:Date:From;
	b=Sy8agaU20gbduMolUzP0SJ6Ht/+APLlt+NLzkRdQYodkeRzygG+Gb9PMJyI1V2DPQ
	 HM/QwgJsei724yrYK0PRo0C6mhRfrJZXum0v+3pwNtep8whnT4T9NBxpVKCQhWJo6n
	 UqZR8+4MiIbcSZCeUeBm+Uer0u0LItfMsDDpZIdQE+gZ7bNr8rW0N2valyglyAt6Vs
	 GonGIdOohZ+kPt05czeWRaEM7neSP95bDJDxm5+QhACL/WQyjEO4rLRPEle0Cng9G9
	 NPi8c+2urMWgNg2TprHmpp2tqKmbuOUn8iHofhGqI5wemtxnnASHWTnX7VcLOpovzO
	 LZEZ1uIfyMS7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A99D5C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329471368.26062.12499512378209535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0351e5fad709d4be983c13fa598f4c861fade6a295b256b83a326ce93455fdd6
Date: Sun, 05 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783294713
