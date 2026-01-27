Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E0B0284663
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769479434; cv=none; b=lOXnoDaPbXZR3BKoxEiS+tn54vMS7qnBG5F7LKbyUEXtkqlD0/7GZdzi++Zm5xOIMmGNQ2IH5MhciXG/9pVAWZ4VOrPfpMQLSqi2aTQrz9qYSdks2TWmTTSmZdivh8WEZcflIfsZn0kRV2RFV6HjhagR2MVw55hgT3e1qg9F6+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769479434; c=relaxed/simple;
	bh=hZtiUAcJ9g4k2aqvtri4LdFlHQwQWn7f6ZZwwMGaXRk=;
	h=To:Subject:From:Message-Id:Date; b=Vt/QEp/HnjJh+ZQgvJxvrqu6vXPVgI0qtIvkRD7IqsIcHcfeAcAi9HQCxsog2P+XajAG6Up2Cwqg2V4w0wCjpfTGSBvR3Aw0L6/Hzjl0oz4WJqHZaA2xGmNZN5r9Og+SVaAQd3GzB7twJnMxM/y63uDzvMettdrUVnwM5cNJnU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWtBcWpT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWtBcWpT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCBAC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769479433;
	bh=hZtiUAcJ9g4k2aqvtri4LdFlHQwQWn7f6ZZwwMGaXRk=;
	h=To:Subject:From:Date:From;
	b=eWtBcWpTy3nOyzeEGaCUm7bulO/8UEDXZB1/NpUKx4KkVU0Yftuh+XBSgNuFNTJV6
	 MKEK9lfzXwVzX5cVlF9rkJIpdGZyfIrNwxR3F34QzJFGWTz+WLrf3+dlg3DBCVTrTN
	 Xs1M/COlLC/6clZ04PMavkKZk8YdFEfp39S6pZ+R6v9HP2+iZ8uZ0Qsvv5deUyEQ3p
	 la7+nLgtdz489pUQqYs9joCz6xs4VVWKwnjws+uQxWibs66SbqNKYEzeIuzVACUety
	 uTuhFtOoUfLgK5hHyNYveTxtrxFEVSBwNjYrc/jE/dmrqRxahQDTBbXGvK3tVs46TS
	 1Xk+oLdyAI5cg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A66D19512
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 02:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176947943361.32097.564444413875286876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4598618ca2e0573a14bfe44700832d540a25a55c9b6e04cca84ec503410fe55a
Date: Tue, 27 Jan 2026 02:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769479433
