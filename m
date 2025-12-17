Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 289A03385BE
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765961034; cv=none; b=QELG3rB1sXT6wAWuTpDso3RsTxrfcGrXDCCDhNMtllMPOWDCoNCdx2HUh34haQ6dpXGvLBDg/whYUo4hzAOpI07Lv4Q15bkfePLsq4VDcqds5FJb0R4RTTAKxUiQUMWJXEduLbMCBR8aU429RIYlBgBwTJaSJdu/iqD70bMZGQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765961034; c=relaxed/simple;
	bh=f3AJOftarun4GG7P0BjUGe269jFdxWatkAPLOGLxBoI=;
	h=To:Subject:From:Message-Id:Date; b=OwdiUUCoLTWg9qC2WWOaPUnNZwrX1lOWYbl7XealXfZaewHruOlvGX2Slc+pgLKMrI9Wx7NwxJrp+Pv39LyF2J/D7rlOyq+K0bml4QokgnGNTRg/PVfxyLW4g2WULWR0/VBv9tz/7iyvSk0sA6d2pPo+f76/nJP/z+BbzDgkOfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SpDJ6w2j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SpDJ6w2j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6702C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765961033;
	bh=f3AJOftarun4GG7P0BjUGe269jFdxWatkAPLOGLxBoI=;
	h=To:Subject:From:Date:From;
	b=SpDJ6w2juaWbXEQ4nu359APKWXgTnWRvRYxoKszq5ra8yngiIdRypPilCu8bxANNG
	 9x62ITDb6nFeY72Gq1IvBnaE/wmOmEqr+YY1dPNhVarY6KkseP0/zE9HgIaTt98giv
	 pbBW1y3HXMNjDqd0iGpcCQ/Hm1aELnJG1Nll+5W64IUNmhFkkneQlJ5EdtYqI8bz1d
	 xvVXlFDqAvmfqJM14Yq2WOyl0h/PuMwh9y9jjAVrWKeT96rx7Gj2JjT5usXAsAlelb
	 yRCn6X8Bj/QWtXQURja0xySAJxMXvfUd8eD2KP7JOWI+GDdw/1zCoFQpAPSEDu2OOa
	 VI2HXUku2Wa1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962F9D64093
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176596103359.27356.1556560981741223680.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58caf2a0b25c280ed8ff243e062288b1878c5b4c2e40db101a30e36e79db73af
Date: Wed, 17 Dec 2025 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765961033
