Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385171DFDB8
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756198794; cv=none; b=nVRpGux1c5T/dJ5dWyEYMTryjNJDUwyf+Nqs9QQGsd99IHoFhJOhYJLYQn0+yqTwET7I/sJaHTJXPifwbL9vWge3YxCALphqNJVsVCq7JD3d1dNnlqcP3cRxOGi7QIIh5qnjjFwFB7acPd0U6MbbVjnIRS8EPu5mgi2rJh9vO+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756198794; c=relaxed/simple;
	bh=iBPTpoHo+acgm50MZcjQ5UL1LS3GUdOWz2HbpH4JHh0=;
	h=To:Subject:From:Message-Id:Date; b=KrvS3e+KZQbfv6dfYCJRYIv+/VlqAyGiqktagl9F3PZ3NufytLFwPrJNROxKKi7jNWSlr0ztiiCGOWEMAXPTF7v/kCLTPi77Nv5yP1CUKJE10KgZIyrcVFln2oEOE7dl1VZyneJh20A1gCWCRS9lDwUEId01L2/EoKxChU8y/20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RoKQIIMY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RoKQIIMY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A584AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756198793;
	bh=iBPTpoHo+acgm50MZcjQ5UL1LS3GUdOWz2HbpH4JHh0=;
	h=To:Subject:From:Date:From;
	b=RoKQIIMY3Ef9wmUQKW0PnEQCA/S912y9uZXmJOJTcsAU7iKNOynO9IfVREuYjzjNk
	 gJIWMb0u4+XSyM86DMnSdz7J85p7cugl8nIMRZNNV7VgXKbHlrp/kGw+UKDnrK7W6W
	 sSMviXVoudXvaELjyqPeAeh1BdGy1xz7sCX1m+kyPfEhSuZxoPmpdh9Uv1EA7bZnE+
	 c1TWiwaFdOU8M3I9wKtsaTtzl0b4t7R7F77ERkTVrcKXf93mImUZIaF96GHTxUABe4
	 /6OCIpvMiwXNU6ecj2fGwZ2W35x/lO89MIEwDkGYzSG3hOiaZRNddvGofvU5UlCZoy
	 kGGXjYRHwJ4iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95141CA0FE9
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175619879359.14780.16765150877334624637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4412ae2eec755d002efd2b8cdfd6923bfbf089c98695fbc26911ff149e85d342
Date: Tue, 26 Aug 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756198793
