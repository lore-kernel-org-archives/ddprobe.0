Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2921528E0F
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748400594; cv=none; b=ohzvIF8JOSFq2UKqPxqBclW7QoINN5MQsJXG3/bwhqKddJHXB4V+JVa0Q207tYscH89jxeVDSlJ6+GV9dpcp03NT9EuKj13Qjw+sd7OwHxN1C8zTslnp/J3xHR2OrlchvpZIsY7FSWndhRo+D6xDz7M91TXqnmoI0tTcuRcGGfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748400594; c=relaxed/simple;
	bh=QliTxUQS54HUUJ8sxBh7srh4L1KbOdkfJ54e/tXZKrs=;
	h=To:Subject:From:Message-Id:Date; b=tn5oL8/6EXqob2aVvj4XBZaXa+d7AxkNduSRKMJyRTySZJXO034gETHhp6lUvCXhd2aaOS9TWixJnN1YC9vF2CkpyIWoUDzljMuXsNZf8E7Qfv66vRhjDlPjUtpPWJox4tlchS+udIfQy9nZ3lHeUpHsXbRndyYcDrL6OKGms+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F38NtCki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F38NtCki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0925C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748400593;
	bh=QliTxUQS54HUUJ8sxBh7srh4L1KbOdkfJ54e/tXZKrs=;
	h=To:Subject:From:Date:From;
	b=F38NtCkiZQtFniJqzp/RnOUWzncimUGwGxNrAd9bF8E8nh2mW70/nBXxmMzkgaisD
	 ABwbm+IIBkfJIsn+KHP508sMPmckAIPD+viGv4//IOhSimUy9VKnWFN+c9Y2M6rXl5
	 FQnqYSS2mj6FLvyr7tdaHpu3DmEyWd4z0PLWJcxH0iRFzeKiCsAmcpkP9UnEhBKrpN
	 UbOsrgAd1H0AB2CtoJYL2VaVefzeR0qR4mRUvC9dGjnIWb9crfpaw26Frg0Z3rEYPU
	 cZqNPy/XxFIZ1TNKAlLW+yb+yw/r31v0HSu2iAsIoN+MBdjRx2NPcBK/9Bm5YreKkp
	 OCW/kRbxM4/UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C5EC54ED1
	for <ddprobe@lists.linux.dev>; Wed, 28 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174840059357.1040.16045717609974107073.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3940dc4b5fb45dfe534fafdc58f7e718de9d53ceb86dd2520ee3f04f08fe2ef
Date: Wed, 28 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748400593
