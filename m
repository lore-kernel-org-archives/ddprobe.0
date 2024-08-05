Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D27A0EDC
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722819353; cv=none; b=U+yOEotnCQ8mSXXfysNy9myJaE6haUnaGw4EzfTs7bImslGp4Z+M29AClvAVIP4gunggwxGE0Ddt90iwntmp937AOfzfXwFD2tCjRe262Y9+orTpwuG+axE9UUtaZhQQqow5ezgUev2KwPNpZ9Xo/RirhbCt4VwkWpkhiHvAgVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722819353; c=relaxed/simple;
	bh=tlIG8oSrXIRUMSE6yiDGp3u9c5yXduISM2TutGm1dbw=;
	h=To:Subject:From:Message-Id:Date; b=kizMdOaeMfBr6I9w9+z4IvbyRMP4kRmyPRYJ9jHOW+0g3JNCXKkGTCjFeAxm/PpJ5Jcnz8U3MahDjtGD446K03w5VIeWVE3FXZpUqD8qHqsulArCUbbGbS2AUyDuC8/qtR+bPVB8z9g4G2pLRnYrRFcu9J6hy19gIV1vgg88ic4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=texQTV+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="texQTV+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FBCC4AF0F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722819353;
	bh=tlIG8oSrXIRUMSE6yiDGp3u9c5yXduISM2TutGm1dbw=;
	h=To:Subject:From:Date:From;
	b=texQTV+FelyMYwXDM/AFL9J9dNZfX2HgP6pdDje/J9JDV/Zppb1s8vbJPvFmXmm+X
	 GvCE49w9xsFJXfKp/7xrz0q1IQipR3vGeFgqEB9Dw8d/IWHbZK9fip0fH0xuSo5S9t
	 aKTfWdV4NdBdxr+igJ7g8EwGSt5cYZsYg4+3pZmBidd+HYwWDcHIQx0ENTUM7ssgyk
	 tr2CMFqdMsDuGTSTIsqFldjWSxAXWNY9PhYxVSZBJsSVGW4VmeQg8nAd4LkEYtscGB
	 RbUm5L3RIHcEE0l+OsJtqe4uRBIFmJs1DH+wcgv1nDJ7qJfnKEE6GIZEgSH5Rrvehb
	 ADl6sYMj3UhLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 952FBC3DA7F
	for <ddprobe@lists.linux.dev>; Mon,  5 Aug 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172281935360.20116.11412237589655893116.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d8d8efaf93bd4d4faaae6612f95e2ed0256ea0158d60f041b509deb96aeba9c
Date: Mon, 05 Aug 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722819353
