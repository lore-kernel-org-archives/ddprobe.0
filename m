Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3849D20D519
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746658194; cv=none; b=R1dP2jT3yLjrYkJZYvvgyORyEUpzGc1gvULnJNvYLlCe8gum/zsc2ULHBUHToI2liRVJQm5MfemhN1Ze8TYc7VaDGhskENDPAXIfOQnrTaImIWJkLPJKUep93QMh2VPhvxz3S8+nh+q1J//5k34DIkk4oa9cr/74IZU1U71XLVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746658194; c=relaxed/simple;
	bh=SlvC8/qStkgs0C84NfBJGXrFgH0B4ErNF+tYjQxBInM=;
	h=To:Subject:From:Message-Id:Date; b=OcaRrDf8iPqt6pSFQt44OXritektHpyfUzr0mJlUgdNPUNHH5dZtzS3IE9efxN3MdSYUoeuAX2SBrJWJsJAi6YsC4LDU6b4hGinyNjVUxr4YVVjZ4uG2GfglDdZeo46iFhGIamXOJfIzWQrI8qXS0NBOPYzTvK79EfmjKrUdffs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Da9SpU+t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Da9SpU+t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C7DC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746658193;
	bh=SlvC8/qStkgs0C84NfBJGXrFgH0B4ErNF+tYjQxBInM=;
	h=To:Subject:From:Date:From;
	b=Da9SpU+t9Mxq+qS1IPt2/CB6vouWHFaRn3e3LQoPAEbMjOQq4XofTOK1x0UGrd+XJ
	 2885gVVCoTiNOxgqwE9X4rBGj+6RKtX4ywiErnQzPnznXYc4KiE+zSKSKQj0fdnZ4d
	 xsrzSO9n77dehhw9tPPBI0hWFERNh7EUEariZZNu2pPxbn+lrpXDLlLR+lrZMicy9J
	 CT2mr21Cu95x4mCEU8jQH7JfGW8+nKdGG+ShGO/K20PinZsbf8kLJdZhk9OUIKw+UO
	 GqZOw+15M2+yO9XCR25CVtDpgaOwsy6wgNJ7pbWIz0idxBTrWNAVmYN8YcxgrJ/K/v
	 llOCakSYdKCSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916CCC3ABBF
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174665819357.23244.3494547715945129695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f01785b8fe9c66f004aa6963554f06bbec454b956be509b2a742768cf6aa9675
Date: Wed, 07 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746658193
