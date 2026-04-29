Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36D7D7404E
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777461454; cv=none; b=d3lVQYEOc4kwFK66SC6WFUfg8wrAg4M8qpCmVs9flWRnkf4yH6388XlgBIOZ2y6uIWVxidKaEsmNPWv1+FzpT4SVSNGBfZN30TEW9wfP2YDXANqRKdefBxEnynoWqmv0VF6koUcMClkbtGI7OSTU7bnDd2jSdgwUpLwPnuxt4Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777461454; c=relaxed/simple;
	bh=zbZ9Iw4GpPfJX25bhQXQ9AobZwFhr2RTasds4YDRQac=;
	h=To:Subject:From:Message-Id:Date; b=k6/zmpBL11WOe18SOwbUoe5bY8Jfmpnfd8xVV5xGINUnH1Fe9/5nwBe+l1lPK65ccUJ2fpbWdvaIV2L1U8a8i6m+rY6NcpMpSG0snt2IjAPvvu8o+/04vctUmzWJP/jcUf5n7ct3JclvE8RBb2C3MAQgXtJfCW7Jey/3BuP28BM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkcUVUch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkcUVUch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF1F4C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777461453;
	bh=zbZ9Iw4GpPfJX25bhQXQ9AobZwFhr2RTasds4YDRQac=;
	h=To:Subject:From:Date:From;
	b=fkcUVUchtl1HRJasmssJpMlkElTXNgU4dAI8tecnI7ws7DHiFWuzMT9nAnMW6YklG
	 wLSpYVeWWRMBe5vYwEi9K7aWYbfG9hcwuTc/rGm5dp0Yld1iUZlaiHscBCwerf5hm5
	 mEsFT/NKqzlPhhZfGakHV92bzl2cbkwHerNrmxpMWYM0qpm3x0kYY+3Lwxem0k77+H
	 Jg3xGOPFknkc5NUFdBZZwuGRbbPOF+mVY9Eh7NoNc6lc5MQ1pU3M8x6I1MMNLI9Ywn
	 ZAooxtaaQ489zO5HWHWYGPLq00oHv0Rr9gh3ed0BEeS3IaNqzkIJqZx3QAh0YPaIjq
	 zBfGHqe99eO2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD90FFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 11:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177746145368.9147.6802347084867488151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd15c7222197f3c46d1159ad005b34c72226cdb48c3c5ae0f44808280b057eb6
Date: Wed, 29 Apr 2026 11:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777461453
