Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113153C4577
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787469035; cv=none; b=MmpUMbA2LpBcq9VbFrmWQ9WONNKRnklRw5HfeQIVHpygKDjh5AIiCUTZGxgyC6Txx0G3Grf204uC+TJyxA+2kHD8gmU3hucGOEaNAC6998vg1A97iQgKfZW2LTxvjts9zVncSghbTegu0+53Kh/RJmR70iW1Rd/1crUojY4wT0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787469035; c=relaxed/simple;
	bh=2M5swhIOE7pTJPsBlq+k3QUF7kGbqINCl7+KHYqDee4=;
	h=To:Subject:From:Message-Id:Date; b=qdbnl4Xw3oi9gxSBL6xwDpfi9DZG2hPWMCRtbgsAZN6/4HyQoQGmeafqGTzJqBmT82N51Vbh9JiiuNi7NyAKYtZWunMw6J9pBWAKgsvzCJZCw34TKT3VmRzDFrfpEK+9a95PTgRpo+fLMVj+hJSjNsBstXaXnjHUDWWDFzjXWmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HVbuFbkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HVbuFbkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE222C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787469033;
	bh=2M5swhIOE7pTJPsBlq+k3QUF7kGbqINCl7+KHYqDee4=;
	h=To:Subject:From:Date:From;
	b=HVbuFbklRpNfPrzREa9uLTb7sVo18UOrPGb4o01Hlm7dyZ7+Yzcawio3xO2jdlpcL
	 cbMXbb649pyo4TbNOVPpWGGn5Qe6KRLWaASWeWHU+RlwhPVwFPjYmpvdteG2s8FO4f
	 WcbIi5pbDYAKGGRAuckN0AEL85IqdImVaz/TI3FS93aDhzZj8jGqhOxgxk8bDChG13
	 rmg5oFiDiVzMEJ6OdrJIJBIgVDjzixAX9G8dgAiNAK6h8glyVDJ82WwmO23F439F6Z
	 bo6eMN/iz2G8kRcubMgTg96zairhOVUatAvZ7j39p0ZeX1LY+HeBJC72EvhabPVTfP
	 TlkHtHz98RLsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28D1C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746903369.31798.2155623181599610116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c80cbe519a11e6c5327442ce4141c5d9841c6e52580e7c4c761cdb577718f16
Date: Sun, 23 Aug 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787469033
