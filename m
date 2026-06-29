Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E69A1A6838
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782730114; cv=none; b=ufqKrkZZnh6Go3Ymv921wqwL5u5p7hcuzj0Y0Q0dlim/+gdpyLnPyOsnutnj8kSyxpFR/aQV4p0P+ZU47XuUGmivpUD3uTuCwR6LJjS8rdF0FzdXcqTHDIn4GVoel3CUafeCJlrfP7zufT/l5NekDTmLRdTUl1OT6d6VGW75VRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782730114; c=relaxed/simple;
	bh=fbsZSyqBtrmjVHNFU2lrOD/+E2tvMd2vHVtuUJld9VM=;
	h=To:Subject:From:Message-Id:Date; b=MXvwZbzKspldhzMpESbmne28u0nY/J2BXYJEcvMk8C+JDWrnOeXTe6UXbCwZLbMYzZ9ffALIhWjRG0Lg0lo6FWWdiTNdhNlZSZDc7BSNdX6OXpuZ7W3SOvfrITyszTh2MenFn8GLr0EW+b3DjHPWad+WVCk7ZUvlWSxvxbllc/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G02UrG7d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G02UrG7d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2807C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782730113;
	bh=fbsZSyqBtrmjVHNFU2lrOD/+E2tvMd2vHVtuUJld9VM=;
	h=To:Subject:From:Date:From;
	b=G02UrG7dn0wELVWrCyfY7uN+KY4S6252d9bdHlFdNV/S4HLcrK+/y9UNk+Z12YzOJ
	 R7ZeRkWh3EwoCLjDDuQmVaLNh3WhTxoVD+tLWHWSiaHpEdyhUH4yEKwf9z0bS0d5WY
	 wtqDlSTVFtotF0xj5+/03a1adUKoPzWNv6ub/9m+IiiPSmjUPbuAcy5vYfLInAN6it
	 53EDn3diRvvgZMJj42mblrbzsjhejNtDPhk3rTmBKpWo7tTBxHmP44bzwDqx6w6N03
	 fFcqzv5Od02u5y7tIvfPMpX42TkzgKncZjGx24WfTtKU0TFzGT5W82fc3/M2f/PN4l
	 H8j9nbE3RgD+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C4AC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 10:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178273011368.20564.11791482308792839509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 315ac0a45851a9438c56c42645f21a1ed396f7119fd6393a903103dd4f4258ce
Date: Mon, 29 Jun 2026 10:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782730113
