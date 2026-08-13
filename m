Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 479182749E6
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786585834; cv=none; b=CH9v2MHCXU2r9wXQHGhGIQVWWIl2o6omBT9SXeMw5Nz569B5Q2aqtNTMCjc/Lp7TudEYYf822M+Qp2AY23sTbLJdsPT2c+UuLjTo94Vh7lxtdQI7a2+6WQyCEaiGSN7F7HFvkmLA59simpslOb7NkDTYzMVaPaKyvC486t4nWbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786585834; c=relaxed/simple;
	bh=hm1VenlaCuagBkbACyxJl2Iko2UlfxjGlsljwCCmZDM=;
	h=To:Subject:From:Message-Id:Date; b=M5s+no4oqwDjzCRnpkLpKINDd8e6tDMwQ3AlLw3jJ9DXQXEfyYWAftuPzjHVAdfjBwdsLkbJTD7f3bm7cLN9/DcgojTqz9AqB9LUSgEw230MPYNFF0X/K17qB7orLhQh4xIQBTmKzGkEb3vSJW/kYWFWyVQJ86PcVrSYwOxx1Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ht1D/geS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ht1D/geS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0F54C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786585833;
	bh=hm1VenlaCuagBkbACyxJl2Iko2UlfxjGlsljwCCmZDM=;
	h=To:Subject:From:Date:From;
	b=Ht1D/geS6Cv7kB/aUp6jIpJwKcnNR18Xx/kJQVqR3uug4Mo5x8aiF3+Q4cLCrMus+
	 5wr98cQpm9vs8xHjIfvGSV8BE6F7M8oSpB9IF7ede1MY9agI1vlzoxo6V7T6Ntw/H5
	 5fIYzNaKpy7yqrUnRqGdEDxYiVvZR8ZipjN1Dpubh8JW/pYqLX9UwYsncDM6FPb6CS
	 vT0+TMR1XZIMH2Zmy31mpbHX0IehPuFmVAIPAlHiO39NvFS1KXrIaaBjYYM0G/x03n
	 ABNorfIU55yF5dZqPmAMS5CgcJpWDQveg63D+K2BssfELTBDu16VrtS0U2twycDjaS
	 TMmYCT57lFWQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE5C4C5AD5A
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178658583368.26633.17734553378434448598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0e91e0acd7bcc6df9d67a6b18c950850650a6b2c30945daa17b207356bd61de
Date: Thu, 13 Aug 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786585833
