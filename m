Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FE41A9B24
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754305194; cv=none; b=FIOtPg/qMiYzgdOAEVo9y30gT7WbcbxVSTV/8xtBSRxByfVKvUBxnLJyiLD9ZywBI3IZ4TvA52e1hY7g6sf5WKWfvbHgxFH9Pa1IF0BkU/FytNSh2eoMjf8YygQeAqiQgg193OSwDuNyixNfqraAA0cMBxBLvK5GfLKQh30tNIk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754305194; c=relaxed/simple;
	bh=AICx5RSiWtAikWJen/NvNYEevkfW09Pj344FKknp8+8=;
	h=To:Subject:From:Message-Id:Date; b=RFo5YdhjQkS9rdvyXjl7joqJFwsH1Kpx8x4RBuQev3x9IWpKe2DFJ+PbQuVWnMPEtuv+yG9aYTfExFhUjZl7ndSTELGFc3okRX2RPE2BNVhk14qU4cN0yYBoJxB03DRwCfrTJGiCvhx+L7xvlN4yWLzJydWIN9K6EF8ps484Fpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gOKOTps/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gOKOTps/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3120C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754305193;
	bh=AICx5RSiWtAikWJen/NvNYEevkfW09Pj344FKknp8+8=;
	h=To:Subject:From:Date:From;
	b=gOKOTps/dtfSrIlcULIz77V4VImFDYc8ulrEfwC32xhEXkiiSbg3yPFS1XRKIHTS0
	 SD18dxCFP2+5l5nIc1ZTNwaDOvURgq48+X6vEv9orZiifjUS0+N1LeZDXExwqGvU0I
	 Jsuo6/pfIBGdvokfkB+qUniqKxhbJXx9SwSeSptkLwhBuWqXRlbc/MOehiFfw/INDv
	 EdhnEGmmzpzjADcaVr7S1UoMtd5DGs0LMGRVK59WYFvs3D7odKTxxDXtRK/ab//TKx
	 jPQ/WLi8PIrhjetG09MUl9O4csESWzjGBjRVo7LAnNWe4OBZjsovau0DNw0YDVyK4L
	 vgphCA5zMp0jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B7EC87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175430519357.6032.11085718848551528907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25cf60b25d300800a4318b05a7e2c2fca5aa1a01efed34890f0be648ee95ce53
Date: Mon, 04 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754305193
