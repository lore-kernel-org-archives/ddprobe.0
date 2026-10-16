Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 592101FE47B
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792119034; cv=none; b=nMceoeb6WI36elx6iXHSlP+uGzPe0ZFIqv0m+C9sOQKMsM4EOopNFLB+RjmfvA2T1NJ8LJ5TDY+qlsdlgMpL5BpLg151Gf95ACrI9QvqoGyFH2hsDFzGwJiDl3vLbqHuIqBrhi59pZIHqWK34CVVVT9IvvBBO9zx0ZDAL4fkToQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792119034; c=relaxed/simple;
	bh=PaCcR0X78TuaMcFADHgdv6TYFd84DTc4r5CaR2qi06k=;
	h=To:Subject:From:Message-Id:Date; b=deIJ2A6++ViJFtFT+SR93XFvTRJSiaI5jE68yOCU+yhGOeTb08rIu7nNUIST/PDSSNkFg5kfhZXsScw5sGrqcqAELTsRDW7ONIeI7KQSxEOXknDv3KtmqQ9UDMWo5CE+DPLPchQqOr4SBKvHpwYoNiuwrvUYXsCtay4/tT8f5y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lUcV6hRD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lUcV6hRD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAFDDC2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792119033;
	bh=PaCcR0X78TuaMcFADHgdv6TYFd84DTc4r5CaR2qi06k=;
	h=To:Subject:From:Date:From;
	b=lUcV6hRD/zvKASE3c7O7O+mc6RkTX+t6XfZs/h02KXQCdqqCtzHXQHOcDZLPDzTd8
	 HMpddE+W4fmbfedIz6Wuu205rxBxVBK09APg87jZDEPztacM7o/E82NvcqYQFdXZm8
	 q29w6BUbvqiv/4EtlfhKRikC+74TE9qK/i/CslLgpjeTZVRW5nvFIjcW2O2ti+hQzm
	 j17/vG/mg3e2Qodftqq+0Sam+EXSA8WMphcGFrWT5K2xOx4lhlH5z7UapzW2iqeCV+
	 MZBpcHonks3GCjlUddO89zzjuAtMhXeVzlKRYatkZneUyagIP+GfbBdeUkz9tk5e9C
	 6ANsUquVfATcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A984ACCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211903368.28965.4511317023445194573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30804de85ddbe451e4d93b3c5a2f9490531f73d7795023b48cc96dccf404512f
Date: Fri, 16 Oct 2026 02:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792119033
