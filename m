Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C92F31F7586
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748384993; cv=none; b=rEO2TEnudBfshoIA8QXo+9hnu/7ebxp5+vb9a+BKnTuPnbTmlQt6dPXQQEE6cqgZXVH4xNMYsYF5vMstXB23gRucUlhcjdbmUdH7gMBq7Sgod7i1CNP7Lz/Z8XuKXlrqF9+VCDKjfhR0pWj0y5p2zFAFkikc09kL1W03G6b0Abw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748384993; c=relaxed/simple;
	bh=qPzxb21m4nUvLo3h6sDLRZnV9p8HXUUm4f8nb7Uiz34=;
	h=To:Subject:From:Message-Id:Date; b=u4qTxmt3mP6srI8Uob4I4MvC1xcVS/e1MLk6B8TMyuoC9KJBSPxeOL4KZuyNin3P5G5TPVk750bUm24rd0TDGHWFOM538WwPKljWBQfAfoRsKVEsEn0105SDxCN/NGCuurWHeL4LF2ITD9dNEgJAX/4meMyEontRcHz2bAmeqxs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SAnb43Ua; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SAnb43Ua"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28B5C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748384993;
	bh=qPzxb21m4nUvLo3h6sDLRZnV9p8HXUUm4f8nb7Uiz34=;
	h=To:Subject:From:Date:From;
	b=SAnb43Ua2+atD+mWZsPXqonf94gtiljBK00XOQREeB2n/A2eIe3+DcQi5GZj4UMFi
	 BjXG1BIelza/OzHTXo+BxQbd/BGdG9S7kKNdwqW2zAMyY88YOIwiwE8YAlgOktYSzn
	 VhtqaCGHvSOrDwlm47w5ENfoKs+uRvWFzuVF8jFE9ERCrUoCoaecs4A8Ihsc5Ya5jF
	 QeSywtUQmjCKDUprOkYW1uICtOaHok26To5+NN2QDW7bwIZq+3Pm3pIRdw7kxSHxgo
	 RwSUtfL/FDTsROtIwa1WGaROIuEN8/AHyxQzAkQe6UcQlwHswQBXHSYvdd0jmcPWAx
	 rwgEOihlVyIDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F53BC54ED1
	for <ddprobe@lists.linux.dev>; Tue, 27 May 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174838499358.13609.12368580451199510113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa8a4082cd12d65a79c25104d3c7b1799552666a9c0ef6d1b12670950473aa74
Date: Tue, 27 May 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748384993
