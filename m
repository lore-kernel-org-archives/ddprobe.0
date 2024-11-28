Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177191482F3
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732792554; cv=none; b=kRsWcCzHlinWipC33wjXR5F+ffNGp8uPDB/7NOuyDjJWoLoHEC+k3XQ1BTozKf1MkZhBA5oUF2E3uWSez3l8KvalSYUPhSp44gVizJVrsNuAWml/U8/ZRK9q2omCYkQP0xLVCieEH4jNJn1hd5nGkn8xddSIhD3iRLHGCoGqJUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732792554; c=relaxed/simple;
	bh=av3xj65ECulSI8GlnX7vBI2wrJSaM71JCXla5VXm3Vc=;
	h=To:Subject:From:Message-Id:Date; b=oqAORf0pUkaB4RXDzggtysXdob0BYRhCwIX/ulbLLi3XA+AOfio/DQuhbzIlwW7H1vK2JduKXJkq9uIxWoIPWlbBpWcxKQnKkFD31z1piIT85t+gFDB1NmUazl4UJIHw/vO23c+2r6IBlQwMNhNlITXPi+OepexFjyOto8TLpO8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LbVPiKsg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LbVPiKsg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83B3C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732792553;
	bh=av3xj65ECulSI8GlnX7vBI2wrJSaM71JCXla5VXm3Vc=;
	h=To:Subject:From:Date:From;
	b=LbVPiKsgwwtXCUuzf9in7tzQMl1HKpmO/kLLqtybsQYtSDQbMmNIAwubQ2qEQo0H1
	 yLKq3BehGixARdhLWUwBrLvmJv8HLszFy1ewhDrd/jslIcLQfgpy2pSY8yM9pdlstL
	 jJluijnfmnEqJnxrFSCKFScsKLsVvyQveYfLwHq/eDlPF2vmniU1F8+lr54DpSvkJv
	 R7PvHwZZyNZUWxJPMgvHki1qYBCnMyKVzbbsfSy48NSrDoiHMywQJzXg4/SQPFtCdr
	 R5WFcQdoL6SNIuQtXnAq2pp03cmYflGGZfdNV6BKaD+cpsTUSOAUtlQvxwWHxiBAQV
	 Nj/+E8WWR/FKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9511FD690FA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173279255359.13998.3348687147574671908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2060827cb3dc69c15a52ea310d01e3c0ba7d88377391c3390b91e51988abed
Date: Thu, 28 Nov 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732792553
