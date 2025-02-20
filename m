Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2338620C00D
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 16:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740070135; cv=none; b=l365Cc/xmJumsPucSFgMv1AUp58pXofjYlFE5rG/c7/jZNmIxM/JYL0Da8T4D37wdZJBgwb+0UbzE2ISWJpmerC0BRl4otWU5N5XdwF8hkLBO+bDsBr3ILW+wULgO7smlh0CFVjk6cK8FNHwI0WVB/yVZ48VK+hRzZrn0FwJd3s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740070135; c=relaxed/simple;
	bh=Z1YwO3i3jp5RbwQkZ9bWuBfYFBEhvs4BqdhoPgz1XhA=;
	h=To:Subject:From:Message-Id:Date; b=MMo77o3yPBSQq3AvqK8I4qFG9tUVTNZgTJ4chTXB0GmMw+WAy15FViIvTRuaShUvNFwz7uIApxt2ltCBUgHZL+gfUozQ7lDczGD1r6VUmK4K2tu9M9lvIEESBrsCytf5BrbsBmhxHqU4X0WoHYLvVeNRLCYFdfnF2QgEjnaOvJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzI+nzwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzI+nzwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A424CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 16:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740070133;
	bh=Z1YwO3i3jp5RbwQkZ9bWuBfYFBEhvs4BqdhoPgz1XhA=;
	h=To:Subject:From:Date:From;
	b=FzI+nzwdI3CFVQW8kcnpC4/g8bCtQ2XV8JI/U+LWA4VzMyq5dfAJ5v4fSlg0167Ak
	 v8HvTKcgzdwqrc00n90rz1qE2/3y/E9Dsj8RqZ8i3ycJ0UBqA2hLlA4Y0tNg6FmszD
	 I7huV6TAY3/pqLCxyBxy8jrliuAYc6u4KUPtnHTtGnBSnSqVocr4mJA7vJ832JwOZn
	 NHLdXHsA0SOpooNSKP2m3S33UP4iDEdsZaPnbav21LnRTRT22hS3WZ2wa/r6PWgXCB
	 mmvTSJYvje9tLWviiqUc+iwOB3EJU4L9gUYylkfCITISj2zzBpEee6cQxE3H3TwzQ2
	 hWRuM8+8u/mVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922B4C021B1
	for <ddprobe@lists.linux.dev>; Thu, 20 Feb 2025 16:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174007013358.14992.11870089393945803566.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0cbf346528f85f69702944dde75ac23675edd617c269df6283800e36493c8b6
Date: Thu, 20 Feb 2025 16:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740070133
