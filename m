Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B1E1346E4E
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777627654; cv=none; b=fLj9ZWHjyTMBiPKXobf+yLKrw+ru7OAxkrlW2mmvFlc0NxTvTMr+O8fD4a842fDS1HPWHTpPeP4ccMibJEmKTcdfJiGOFlfJ3c8Cdpva9TxCoPzHvIO9MVe+6gmoTYaDhSPg+/ZR0prSISEOEwURU2hySa5COaoc4gjDGBpHWvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777627654; c=relaxed/simple;
	bh=trebs85lX7NQqi6+oRMLND84NSOhjqSLUKB/TGTD6K4=;
	h=To:Subject:From:Message-Id:Date; b=ghLcAOck2OD0JyphQCkISOpci5pd/I0V2ZeOWwyCCB7YnkTP8U3VC5NNz9mBEQuyUICuk8CqZiiH4rke+j1udhuAP8nxiirFQwCKoAZ5D7d7qULw7x5vHB1U5PCssQBG4Rr4FfzVSah1Cz0HmoeLcRkJciD+xb2DZWQch1YbBDo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ya0DdDpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ya0DdDpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAEF8C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777627653;
	bh=trebs85lX7NQqi6+oRMLND84NSOhjqSLUKB/TGTD6K4=;
	h=To:Subject:From:Date:From;
	b=Ya0DdDpWCaw4u3O9oVkio42MnUT2Xg2kZXFFEjoN5jUHXmvjf4yCTpf1J/uN9N+E4
	 pXLzA2TG3wWJK91G+Bd8Xj65gtKf9cIAe7zLIx23H3kAJPbYlxd023uCaijo816T4L
	 s4rQkPpihwizSQixfj0nnNIgfd0SPRlLxOuaSPo6EZP1a7SwBlp6ETty3e6Tn7F5u+
	 ObztjlSQZQ+RVil2+pHGFLWq9TFZTHIh34SpZnAy4s4jU3KFAf+XgvD2hQTDQggKQ6
	 srL0PN/cwYLDQiDma96GLc0fxQKKzw5VYego7vkfGpNFvXXWK6SWX5l7mmy8GPvS/R
	 ThsfFbSvKGIsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA18FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177762765368.8085.8622874508933078768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cef903b1d8ca5208361b1f43369df65f3a3ef77867f62794bdad5954d9191f4d
Date: Fri, 01 May 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777627653
