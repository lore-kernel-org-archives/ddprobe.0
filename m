Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12127BA2D
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750642194; cv=none; b=iFch+Mr+bHbejp507B+Z45jqd0w8inWXCXMypYov1c0Cysbv7pP+q/BzrfgZzWc0vo5V2+hRiEfOhiySWBYoN7o2XpurCRkn9z7NdPwbTbwMqtkDkA8yX1rzd2iCC3MrZBu89h8Hu7byMzdA+xRo82RnzC2oLslC9kmKt05AHvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750642194; c=relaxed/simple;
	bh=sPoc/y/zTdRvU/xsimIxZehX81FN2Cldzx71a+wMbls=;
	h=To:Subject:From:Message-Id:Date; b=nQfaU6FpLVoDAlCD146/+vLoBV1kIS6iv1iVzxwf+MZBOpbmzEe46Uu3hCWDQJ6kKSPzXCb5XfyAqvdpvVTVRxP1dEEl2jg4H8yEh4q2wldPlEEVxBqMs416PfL1Kjlgw0fs8E1yrPeHOkKc+nahq5kNAKrUfpuUsY9pqVARzvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kNZ06SJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kNZ06SJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6111C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750642193;
	bh=sPoc/y/zTdRvU/xsimIxZehX81FN2Cldzx71a+wMbls=;
	h=To:Subject:From:Date:From;
	b=kNZ06SJcW2m50rU/oeqYMER7LgsbtQPvrl/jL7oopkn5tK6Z7GqZim+yr+AZ5QuFS
	 GnGuN2A7ex3SK3qV6iH/YmQtHT2hfCkKHMkGZuwp9yNZx5HWLtbkgXawqYkDZMJk09
	 YU0+6HjqN8+MkPzWQLrjBM9e/+d4gUpk/mDz+ZTDM9er39vrwMgJvWCXCgwM4PLxrX
	 M+rpLGn2oge407TEm6s4xmNUF2swXrRVStuVBeXEuJjMvuby0ycZXrj36035y4bRwl
	 yRpVBEVC1uW6xak9L1w4seFA2NnD3r3QMADLExbPiMLu2mYUabc1TYhfs382GCmbgL
	 BRcVk5VChlItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91DCCC77B7C
	for <ddprobe@lists.linux.dev>; Mon, 23 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175064219357.31138.5889313816529177224.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 501e21b682f11d82a9fa857a854fad9bcbb0eb73c90ad14069f9f0fc2919d6fd
Date: Mon, 23 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750642193
