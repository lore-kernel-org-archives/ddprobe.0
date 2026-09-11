Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E473CB547
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789168834; cv=none; b=OpzxfxHVn9sWGeH+6YUw5EhQsDHblLiBSIjM9H7HBNZB6qot+0b+Ogj+Fl/xIjh30X1IqieDvJeBOUCJhL4hFj6BfvaU65YYfUnByaBGFZamL+CwonlUrO6OCDsNPe86mG5IJRljQqwkufpPRhvUIibig0fKesHWcBl+MiYu4Vs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789168834; c=relaxed/simple;
	bh=bBsdtplC8IIHxqTMZ1JfUnGWIbj/sfCbjCwjRFUtF2s=;
	h=To:Subject:From:Message-Id:Date; b=QF9rZ33w/fhgghxdnIymx6+SrPNQTGPFgxyVeRf8jsJfv68z673uzFvexNBuHR4Lkw+oEV1ouDSehiBahOo29/3RgFQbp2GTwP8Y8uH7c+/qHEeyuNGOkshK0p18CkSqNJPnsbeSeMyu7Wl0RdtWki/bXntXrqPkXZxkU1BzGoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qJUJhMIr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qJUJhMIr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08ABC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789168833;
	bh=bBsdtplC8IIHxqTMZ1JfUnGWIbj/sfCbjCwjRFUtF2s=;
	h=To:Subject:From:Date:From;
	b=qJUJhMIrcycLpwLRRFHSu1RO03I6bn7r6oUo+eHmW6R1BexQsVhI8tdAAv1e1XjSE
	 qdK9RAIBvIeRJND55vAL1SKgv8fMXv80kRHgOk00XTbKOkvWny83kfmIgwHDkPzS8z
	 VmW4fFLlFKzzWYaQo03z+DbcmmgmjdgahoxZUQnuIAdWLB4xcM7ukabbVlBR1xv3ZI
	 N5h94vGBCrU7GB8uC7Z6O0NHfyUGsRxyjt5dXmrgRYht3FrI3EzYmgsvGSUh91F9SQ
	 gKTA5EiX7570H4H2motR8rE22I6a7cp9iBGTVbHyjeS+ym1ZSkQA3kyRZnVpXxNi7e
	 Dt/ObJZRioSJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB50C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178916883369.21115.10455492487112289424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69b141b30c5234902ba0ba1fba02f8f87b245479ca297f0b783db9fef14f29ec
Date: Fri, 11 Sep 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789168833
