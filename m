Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A58E28F1
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757810394; cv=none; b=aeBJtkSrB7M7jfDejMIuCkXUCr9Qj+8u3sn9aXg+U8/5UaXnnQJRJ+wHGZnv2hKeukGtHLjSbLjgdHftIerF6wUIaH4gyTUr1xzyeEXfd21GQ2/UmBxorLWEmyiq5Iu/fQQiu3UWd/xDY+BMvNzJkxQs0sRXtQKW+b7uKOS+DRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757810394; c=relaxed/simple;
	bh=1Ns3fWOsvbCej2BUiAFwvsW5nSb50QFBwM1ZA3SNw4U=;
	h=To:Subject:From:Message-Id:Date; b=i19KFGgHand6Vpn6MEbZTPhOCgSnMFUF2pr5YA7I7luKE159HX4S7mrloM5FgE5NpVJFp6EWC0URkmvA4q1PkEAxEmWE70PkR3lIXd3rK65GOcvHvdD/CcXL65tvdQmPrVfEfiJcyuf9ZjGPoumVe9rTCgjCZF/7w1MmgUr4W/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkTm/hKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkTm/hKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FE3C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757810393;
	bh=1Ns3fWOsvbCej2BUiAFwvsW5nSb50QFBwM1ZA3SNw4U=;
	h=To:Subject:From:Date:From;
	b=NkTm/hKoVsF7JBi+fMJfKscsxZCMISVJI30sSaG36eGMhRD0AP3P+iWkzLkBRoUte
	 k7UfIyhvppT0fckp2OHp3LPrpWu/lyH33FdRJ+rfQPY+iQI8azlQpuqrVI7XszPbI1
	 reRvOpnYzQZPW8gUuChKMP5mXcgbe8h/BYiaONJVo/p3x2uHk8otzyN3CcVghpnXiv
	 5TRcIV3FI0wMLlL1NQMq5MUcAMV58NtWRkcAtK5XMzq06cEM/rjwlQJKiStiEjv8dD
	 GgHqZSm7kkvro64iGpBID78Govpk7sdZB/BKpb+gGqT2dK7ucQqi+lUDvB1EQAigYB
	 xVSQRiWmNfG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95941CAC58E
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781039357.4799.11184300456238206827.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9fd20083ef2dd1de7bc9e1cf82c1997960bf948ac167df1a8cf725d557d58a4
Date: Sun, 14 Sep 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757810393
