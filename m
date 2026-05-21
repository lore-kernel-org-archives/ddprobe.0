Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BFD522F01
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779349834; cv=none; b=figE9G05skPkL2W7vJ+4btOkM0p98X1jGYdvdygulicS7ftC++k4u0/9s3Ih9B/GZwtc9+BFhxPyFfXmhluY0Y6EwVQCjOfByTrlB8IFa8/xD3sP/RtSyyREf2Ww+AydFLfcefhZlxo+xm8RoJY2SAt27Ye5fdmT5DR82JA0DMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779349834; c=relaxed/simple;
	bh=Gl/S1JX5MVT0M0D+iBLMHZG2MM+IcxnpSUCmenmAF7c=;
	h=To:Subject:From:Message-Id:Date; b=eKLDeYaVKeET6YR1V5yaTH4FQPi19/S2gyvlK2pLRRcDGzHYAamcld5GEfKdI6I98n2+OeG+/kaB9A7nNkjX/5BCK9QBhxvFHpriKyCwLV/nFTnr4xw4pKmnbitEfJJB87nOaEMY4L0zrghOAdELv1YdGlaFXt6Y3LD6bUEhtK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D+LyK2U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D+LyK2U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6BF7C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779349833;
	bh=Gl/S1JX5MVT0M0D+iBLMHZG2MM+IcxnpSUCmenmAF7c=;
	h=To:Subject:From:Date:From;
	b=D+LyK2U/1y6be2mmAHvwYzIYm/FYAPJA/g/h6BUIgO4qzjuL5vFWHl7yL/XA+xDIk
	 P8jxpBl5DQ9tkxg7cWSrvG4R6Otg46quZpO3uMim5I2m5Caz1QOFcd7Q/53QjM2Dq/
	 bTW5c67x+vNS0aULhTo6m/IDQ1ri+IFVue4Nfz39OODuAy1jZt4aWHqXRgxIzZ9utL
	 ysmBdYupDvFhR7CaBAAtEWTPY+JaUFKU5N7Ko8GaGWBpRVh9f21tanpIqAaeoH1Pni
	 azSHbCPiCNnB9TH++bfN6eJp0NqKb6izaahFWzULalZfg6em8WXGq4A9PjI8xJpDTu
	 s1hA60HCB8MIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C6CD4F3C
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177934983369.10973.4326751265773021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cff241ee8ee96286bb721a399b185e77e6b2221a0da5d3e81e61d2e190c6cf0a
Date: Thu, 21 May 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779349833
