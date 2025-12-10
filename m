Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6331DB375
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765327374; cv=none; b=cgqGJ27FfGw9M+xgoq+LNrLFxg681LPsp83SrgE1gqslNiHgTgPEqW79hPKDZi89mcVhkTeEGpXjkPYEYJLVwsmmZ2HdMYMXv4SelKPO9A4xq3m9eigiUwnbKiA/o75o4iChq+04/mtvSriielatapKOBEBLiJWK9BDUy+h8794=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765327374; c=relaxed/simple;
	bh=pGGfVvY4Cxi2dm+/P5l8KRn41DiN5jVmQ5iVBLDlxns=;
	h=To:Subject:From:Message-Id:Date; b=D/6/f+n53wb+laARA63hLyFfOddT3cW1USYeJnOFNp9BM8/mNmCiZTyJ5J1/ABY6nJZD93H/7O+YFztAQfVq6FsnPX5uGVPceWn6UUNN6BPNTY2wHQ4WWdW+E7o362CG3UMufvu2Sj3w1tiUhS47pf4ZK7FwCXEJPRTRnjbB4I8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sbyCwESu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sbyCwESu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26CCC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765327373;
	bh=pGGfVvY4Cxi2dm+/P5l8KRn41DiN5jVmQ5iVBLDlxns=;
	h=To:Subject:From:Date:From;
	b=sbyCwESuxkvDkkJ2bmmPFT86hQWDijNCNsx+iFOzku3zvDZjtDdi85WlxfolWs/0z
	 EI1gBE/eOsdUZxRru8lVoyPtD4HZwl/rLDl5DFPCRFOsg0kQh5eCLevOlermd6BK8c
	 cFlxEOLSKLoV7ObUCy2XavoneUMzHNa8/sidOdOFEi/jodaXnTIFbRDly2v2v353Jf
	 1fAl1pHH86d1CYvzoUuIDxo+GERfc33ERAhRXY68LsW2oqZVh8WzIqWuln5FPe8Kcj
	 mBRuwv0C9OfVcIQt8lfJK6Toyegj+WV3YMTMKGRf7Ely1/uLkpXADnPvdWH3wVTtfd
	 pmzsKQ49lutlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9252FD3B9B5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 00:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532737359.17395.423020784024637087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa508aa7699a7030cf5ce687e556c92603d0badd5d1e10be76f4c481862b446b
Date: Wed, 10 Dec 2025 00:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765327373
