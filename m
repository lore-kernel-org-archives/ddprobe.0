Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4109413777E
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776634654; cv=none; b=hEOFNVWGMUAg4kBytL/1oHxn3rZuiju3xFIrlXTdg63gpN2Nrp2zPYtkAsSSMPyrtgdq93y4jsZYoZ4frzMeX1lfOibiJo2gATUugC0M/4uuYmg+PzeCP2wdJz/CtFSxH00Hp1RWLOLFHJ1kBmSkSjXaDzluFGGuoztQhzlasw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776634654; c=relaxed/simple;
	bh=fF1dku/42VYzRBokrv+TnRcdUIXR5qHYG1CylZQenNw=;
	h=To:Subject:From:Message-Id:Date; b=kOz+YX6+cNJsB0U6k1a9nnvqqqjfFPwLeSkdG9RBX75LfxUqAXzHia3RHWjYe/RGsLI60oQoD98Sc92Lvgk22NTSl5o9RZfFQ2f1Zn2316ipKGc2dRq4T3SIwwc5YwCTT7UKxflNMXMy9YGlaRhkLzUdf89dM3fO1W4B14F7wvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiTgwbo8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiTgwbo8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAE23C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776634653;
	bh=fF1dku/42VYzRBokrv+TnRcdUIXR5qHYG1CylZQenNw=;
	h=To:Subject:From:Date:From;
	b=FiTgwbo8I2YWrtP2mTGIbCTSvbSmD1VYAr0hBVey44Os8k/NygTLSyV+CcQ57csCP
	 mDiygBmnkdu0UnAxscrRSibbOC79AhU4M6MifEeLxLwYie1vN8t9BtrTYMR9z0qsap
	 y4Nc2vIfo3gRJrlaSXEbrswpRH56OxrAJ58HluQbYI88NS21vaGNqMvTEFoZYQYxVD
	 Ktz6sqFaTJwWDg0kF3VYRtTzRrASfxP134So6Tansmg8fjeXo+G8mq3Xb6knqMQVvI
	 sWsWSicHBvdrWq1fv5C+zV4wIGBDm8ZjUmg0Sbr5pBxS89dNFU4OayH8bd1hxRMyu2
	 8IphjFB5xOqmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9620EA71AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177663465368.1179.18296023502283098499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f4faa55c3cab208950ec3696e24952b26372f982a990499125547e6a9a3459e
Date: Sun, 19 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776634653
