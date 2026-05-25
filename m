Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3592C34E754
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779704554; cv=none; b=fI94uXoOt/NmFYpWrCgzcBKi/NwrF3yrg5+xtxasIOrRRaLVUdWYmPsUKKmKQHDDsyePch6u7RO0+KT+GXcgfl11JRBReX12NA0Xjr4QUGsyRW71iTz2XHy7VQSYbeXTLS8gYXI25bs8j3k3em3DzKrF2bxZA19c/C9BAJArSdc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779704554; c=relaxed/simple;
	bh=n4EYxVJj3lJNsgqIb407bWaCZ57cGHKqwt8BD/Y8jd0=;
	h=To:Subject:From:Message-Id:Date; b=it/2leEsj1rDoUeN+v7l0L8HBLXI1KWaemhzmN0RsUfSSoRaD/rpvl4YH9yr1YcT0k4vy3NiGSWwC49X3sXYXTl2oFqdVo6ILNphj/019q7x3NOLHyKJm858UQORN0H4Xlgvt4zQMUnp6rHiao1hsdTgept3arRvc9YAw+++VDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlaSEFMO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlaSEFMO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C421FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779704553;
	bh=n4EYxVJj3lJNsgqIb407bWaCZ57cGHKqwt8BD/Y8jd0=;
	h=To:Subject:From:Date:From;
	b=NlaSEFMOaVJM8SWikEIRzsm1Bk3I5X02hbmYBcG93KTxBigUWFiWSNsXThezk3bfX
	 LA7jMYqnaaGPa6ZamWNTLh4Npj9v2TA+Teh79ZLhOIqyXSMdEHqISFEvxvn6HLeG/Q
	 2mN2iMP6qoIki8d07tL+rZSv69IC1W01PO27bYekXE2Sryi7Xl2fmGD5vrGw3YSOYA
	 gUXG/C8HjS58+oEFe7E4E4znsIGVA/z+7gF2pXXzOqnMnAzyX2YNwBwXyukaxMcVM/
	 uKNLaNkPAzZi9Zo5/KVNO4i4hhEt425xBEhJQewlANfgrAuXiZoPUzFJT+KcM4aJmU
	 AYUquPtwr328g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90C0CD5BB1
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 10:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970455368.18899.10644217474053667055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9fa37160e936b835ccab94694cada15e0f05f0b74d1b9a3ce48caf689788a7a5
Date: Mon, 25 May 2026 10:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779704553
