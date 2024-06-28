Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C017481B8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719605063; cv=none; b=WLOxqAoZMDILcmaPLgjBKIviY3nXZcP9Puf2twrvREU0R+kdmKnvqirMYi24eTkQhxmsA15Bl88CzkwLrRRT15xcLotTBxPS5Ww1Dl0ZMVsEf6Gv3uKS+bbaWOvye2reDryhouYeMuDrNO3zFZlVznILZABsYAOYQovo9gR4Ge4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719605063; c=relaxed/simple;
	bh=YZNvxnM2Zz5WBPhnwywJK/l0tSN/bxnrhgRx34AwqSc=;
	h=To:Subject:From:Message-Id:Date; b=ev0JvXN2JV7QXo97TC8tl/X+YSW3xcQEr7r9sHGWkiT2BkCl2Mj8o0I/cXcnfelR+2/Fkk844DiW84ZGMZTmzIoctbPat0t/4W0BbKTqoejZMFEBRwf5z+VzvwNf9GsgmcgSBaCngM8QzBAJHMG81UxdbD5rKO84fwAcegGBuFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PWHFNmix; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PWHFNmix"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEC46C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719605063;
	bh=YZNvxnM2Zz5WBPhnwywJK/l0tSN/bxnrhgRx34AwqSc=;
	h=To:Subject:From:Date:From;
	b=PWHFNmixCT2psR1s+xftEQ0uPe/mAcI50oFmZwq8yUyf25qOv1ZZO6ZIkU26hxLnc
	 Y+7R98w21l7vZJ0ts9cTuXytr7uwPLO5zS3i4mK3so3hI/MNoYx2xAgcOVE8i4F7Z5
	 rqCJKUAl8FlOvzoUE4f17AQsjPkc5j3F1NslKBbfxy8/D7T1zS76li0PC5rfd2fyxx
	 J9m8GMNQt3f5vB1WhcDdkruMWr0/jMeM4JgiBrRKqE04hvpesHskOYwHkejLK7M2Ry
	 wW+7iByF8+Yhg6aIFKEUGtKtcVIiar3kA/lMCN6vrOtpCaohuMTb8EYB0wZR6igAhJ
	 2QF6S8B+qI5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4F4BC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 20:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171960506283.18095.1274751941947348077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4695613315d730acea93da391a5ba2a32424ecf6b70264b1c51c43bab2ef93
Date: Fri, 28 Jun 2024 20:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719605062
