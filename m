Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37917156F45
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758451194; cv=none; b=q3YTCCKIqb9sJRnlx4/sSXACl/n9ftfoRsVjeZzMZRWPl+iTb4rjT+U2ESHNrRqTQmPWsSFcn9xtLoP+7pRHwLCx7AniH6stehTWYX5zknhQIjBDKGfD5SJEQv8BWFdSeG9wakgtmerxJs3GAmHKAZVxic89ykMEwZ1H0zJczWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758451194; c=relaxed/simple;
	bh=VhOC3+uTWA2OD413DljNSBjnzSJX12VnTXWnEfdLQ6M=;
	h=To:Subject:From:Message-Id:Date; b=pah1ozJex08h8L/39EN1AGVs0/cOgz1ldVLKhXJ+7pPt/MR6IfkrfnnprCrzKg67EMMoK9RjAUqH4nVbBIDs8E9ktPrlqcnphUFRv1cEq9y5LEczPuIeZG64l8koCiDo7pOqqVHfkKnFvv9agtM+CEKv/uIJh4Ma5VVXIu14guE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jecg+WY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jecg+WY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5F71C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758451193;
	bh=VhOC3+uTWA2OD413DljNSBjnzSJX12VnTXWnEfdLQ6M=;
	h=To:Subject:From:Date:From;
	b=Jecg+WY6SLxe3jsv85fy9VNYjHSp2n8cZcdqTj7whJiCZgcASaA+3K+zklVmO50o0
	 a1GAxMWxnoPwJqLM2IIbf1TXIY2CTbnHy2A04ra88AZBn8LcWT/Mm/WtZ0D6UKTOgw
	 ajra7QmKJto2U+s7Lk+mSSlEvgUoawpCwLJSnRnQvPZi9nNVuXCQOCVtLzQ3MypWlZ
	 Ji9KibNaNmjPhs9pxbYrfCqczFG8jlOrGcF9N483MlZkRMv1OIOmkKOVNzCGEnW7lW
	 EZ6X3YOnlxQ3HzsBf1hkcsVw3wQtSXRduuTf/GnjhVXwyXFZE1NEWauAHqnGDC8RLA
	 zYk617lWdkODg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13BDCAC5A8
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175845119360.20090.13150838191460530452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a5b127a994cafd941add5fccfdc72e5f661db56b3e716f7764ca1321bf4c41c
Date: Sun, 21 Sep 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758451193
