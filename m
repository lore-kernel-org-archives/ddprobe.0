Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 539C53246EB
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786126834; cv=none; b=VRuP+cvn+8MZhp2bhxJhykXfXlckVrpWt/Z5H/pMU7IXhYwCBstvC42RPQRGF4LC+eHKrYAHLWfICbmW/2j3NF7nbaY04s77dosFyQF0KpzlPbAN562Zq9BClNUX91O4aALRclhr6PTe6OtxhXdT2+I7+xBDO8ZvMUAiFR5UT5I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786126834; c=relaxed/simple;
	bh=BaJfWQey6pfERVOZbszJ4TosD7U90NTSkoryfnDpGPc=;
	h=To:Subject:From:Message-Id:Date; b=X7d9F/x1W8iF+nAsaYO5EAiRVjKgIRuwxTueDFH+VKyUU+pUXRF/YsCNBH5a4stRLkCcBUE1v9PGu1w4cxTA1Wz8TcPmG1WQCHNMxTbofH+ZSR7m22Y8Mjx/OH/3miQW2JWqid/8h8XNC0hn0avgSkGmehCzPHBaalml8+yUbv8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iRNN5hl3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iRNN5hl3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDEF1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786126833;
	bh=BaJfWQey6pfERVOZbszJ4TosD7U90NTSkoryfnDpGPc=;
	h=To:Subject:From:Date:From;
	b=iRNN5hl3nvJmAqk6w18AbVjpndgb9Th1K2J8Qr+aLmLbmZHqumpzo4k3FgikXW+z7
	 b5RUmZ2WWXO4D4v89iefvLPiIkFxvBNFLLpbuCuj+t3RGvPqpIt5LwuY9MM64/6CjS
	 QMyeuQ/60HXacI3aOPJmdnhQtcyWfudRd2RcOQ6FOv4Ao+pNOThnQEr8d4cccQaj5m
	 A6LxR23+/557eg5cZRME3Qv3Z5kU6icPyaiQijE9OSneMrN1BHTK8jqxB6ZuMssIOd
	 3KEQk7MtV0yztkMgui6N8n/19YcdYygdeAvg9i3d3gzh9y2cd53Q/VXpuCqcFQhbzJ
	 jsV0lZRnwZjFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B662CC5AC7A
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 18:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178612683372.20924.14290918127392854236.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fa538b00594d5548f6c38a4903ba1b2c3961eb30354a2f5cdd4c5a62c935454
Date: Fri, 07 Aug 2026 18:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786126833
