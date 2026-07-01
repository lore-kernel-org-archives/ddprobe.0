Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A7A360EFF
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782922114; cv=none; b=SAWSEGfIMqURr4nCMGPZZuLdO4udCLPN6bdd/4Gp9Fp/B/tqh3DYd0jDimaen5JYAvQ7+9MdFMRmVHg91hofS/dhTo10NTZRTCfiOEFwgKCTSdoyqUHHGRf/bd1w9WNGDK2DgMvK6Li/ggVs0EuHibZecEO34812sgC3SP/ZL3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782922114; c=relaxed/simple;
	bh=06E16o4UVO2zoAXxPpP6OKWaN5pmcKce2jfK2ahqliQ=;
	h=To:Subject:From:Message-Id:Date; b=ThDqvomuhCdSp1PJpeEAEWwubNi+xaAa/1C4+/ApG6h6QFMkCH7uI/xsppNAw7zGGhycNlFwy6HYtBD2o1v9doQ9aSkCd8Mrw1XsA9bv2Mlh3JwxVH4gFpSA0HarEVGpH6pTXFNi/DRghz9eVFpilk8lWD92AmDxCMPAHp601e8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XbTxuKqa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XbTxuKqa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF52C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782922113;
	bh=06E16o4UVO2zoAXxPpP6OKWaN5pmcKce2jfK2ahqliQ=;
	h=To:Subject:From:Date:From;
	b=XbTxuKqatDxqwmLknUTusqbHQ3YnOxVMzp3iYO/UZD9V3CXazlpp5To708PQKsZCG
	 7FPQoCx8gxGNeKfEXSiOa5Yp7//RNhaQhYw8AB+6GINTaEFsMliNR17vy9tsRKjNJQ
	 Tey88TzyFnvL5kPJ/y1nM6/rwo9nMegOJrCpVSMScd44Z7l5xXyFGfgu+YE7cM9EsE
	 euQLbL+zi47XCdD6vJbai/lQM9Gb3fTy2BC95jifW452n4+rrkyBZcFM+fwB64Ffnl
	 wulhhxIUeT2tiSzZ7P/78Tw7VcT6Nu4khSu4MJvazwJUOEYD9e3ZbMqQc71MwVdJ0r
	 BsRCivKBYMQww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF81CC43327
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178292211369.1172.209375455929847760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef2ecaad58876138eaf6966e710b5370a283550151019278f257ccd69cacd05
Date: Wed, 01 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782922113
