Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C9562FFFB2
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768769634; cv=none; b=X/LWbTDWUlmeKAMiUauxg9GhU/E6ZLAI//rj0K+u6KdNiBcqsmLmhwhMA/wRIVyFlG1g6/aaYRAmOQN8Pusei/fDSiZU005xTQJ8TUKjiRBos4PTXj2o6NQv1D/w3snZ0rQlj7I0kSglyFbb2o6DtXrSCmksfCpTu58gQQp5lE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768769634; c=relaxed/simple;
	bh=ldyyg1ZDFCgnMo3M25Qv9P2RXGhINj02GYoamIVzr+8=;
	h=To:Subject:From:Message-Id:Date; b=L+ZKveNF3VQGWIcoN8n/9kDQ6h73k41wCCQXa+ixh+23O4Xp4LiYWcPhDXjoD31IGDGt6cpQL06oZoXA3r14kI1vw4y8+mTPFM14e6ZpImH0fANoAUzieus0UiRrcaa/CwkueYoKlCSXeRf1UXjR1eBCy/GfnPkMylEdW9M4UJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KuLt82XG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KuLt82XG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1E4C19423
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768769633;
	bh=ldyyg1ZDFCgnMo3M25Qv9P2RXGhINj02GYoamIVzr+8=;
	h=To:Subject:From:Date:From;
	b=KuLt82XGEqw8akiz2jqvZVfzUyITug4WsY8e6ttiLMMY3svyJ2/M+1Dp+o27ixhzD
	 1JRSPdzxY58DfgNRtBulIC3Hlrx930r9vZf23YhEnLNaswu7X9yzXkD9pE/1FdPgw0
	 naJbAhWQUdGB/BO9A7wBmSN+6/+cChCccW5LPl+E2/+mxOhx5AGSdIp5rEVWVPGZzS
	 S9f7isU0SSSa1/XnC1bFCBk5RJWCAPahCgTqoUiMYJfQ1sxwTvV/XrRP2gUPmdXMtK
	 w4ZoqnzHfS2DqHeonXxwP+m8yQDhiB4360dD5ZZzAY6zMgyDSa5mGIxXqi5woq+6uj
	 HpJIpX0aKqq1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEF0C98315
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 20:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176876963357.15171.8958473732983794222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72b0dc83c36fa37bc03ab4ba8ef9b2ad9a56a4a8a9916b9414550cbd4f918d77
Date: Sun, 18 Jan 2026 20:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768769633
