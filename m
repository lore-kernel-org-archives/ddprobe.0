Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27A3C6FB9
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753601994; cv=none; b=JDhhlDeYdD7Reo+xP57bmFpr0PK9GZO8HTSnXGCkf/J4WYs6Yvh+yHyd+KXmWK+lbQ8dPXDYOyVZgjPbBGyN8f0JBAU7fJ/vAWiA0Opt0vpH8Eo/pt0RCnc0fwXO3TucnUmTuALl0pKde39E9eW3RKQY8ldCrPJul364u2Jf8qA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753601994; c=relaxed/simple;
	bh=ZWPRTlrbsCYxhudoPppP/oV0qUSw4xRNCw+SvG4Dn2A=;
	h=To:Subject:From:Message-Id:Date; b=KYNvjMy9cBjNLk6M8j4F0in6nhoiHQly63asACTTa1mNTOuiVPZPKGuVOX53fg0saWClS8G8z4JJIY2b91YCIJJ6H62+iwaTIrjrFnkWc6MV7yueVKq1M6SBm64yxnH3iHfveVPDVskTcXk5Qbjc/tpdJ2ObXV4o70EDs+8+S0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOe0Bnqi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOe0Bnqi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11E2C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753601993;
	bh=ZWPRTlrbsCYxhudoPppP/oV0qUSw4xRNCw+SvG4Dn2A=;
	h=To:Subject:From:Date:From;
	b=GOe0BnqisoAftVW7E7FsOwlcPcq+7cpXTdivzjdBy0YuHOWCuZ5FWGAfI42dGTDMf
	 bvLpgxq1mSkGKTw2tKgYV7UtaFamptb7+mDInYBb3ZJAxG34WCgjHNn0xyJUBmx189
	 jZDK92lHdQChe4Meqh05voa6LR2//JOCazuthhRAcSGqdnpEZQkLmozLh6Ilu4pQRe
	 sQ18sAHArVL8RmPu6abi7QNqvnNUk15g0SAHeKxUGdyGDiBLyWXZfDjc0L2+5KXZry
	 axE4P4hY2P6YQAXLYwe9gtFQ30ZuXwxJrOlRyDdOMCGzS0vUPha5aRaTffKHrn6kJV
	 jsyHlBgqYUS7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3ADC87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360199357.24919.12558735382440816484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d475931ce3e7e56c4962b488c6a887c06d4329a132a2ce07bf4709fbdde1ddc3
Date: Sun, 27 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753601993
