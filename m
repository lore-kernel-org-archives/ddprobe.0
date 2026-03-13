Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DC837CD30
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773445494; cv=none; b=Kqu1gIPKwwdV9fCdxgnsJBW4Zk7Wf98zJJKDWW8GCZICrN/okKvNCPMavwckTD40w2pmqgFh1yQUz32pomJmTKpPRIty5yFugLpKHZZx8uunq/xrB4Ux7WXK1TtZxzxBOmMFxeXthpNmAacaF6QmcV5b/JLJoRXyjyldhiNOWrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773445494; c=relaxed/simple;
	bh=tqNNo8y3DhDg1I5wDoaeaKOIGq6V1YU8ccUEzUw/e0Y=;
	h=To:Subject:From:Message-Id:Date; b=sU7nadfNub1Jv2wH7FXc+uS4Y8SiuaXd/Gpf7VGb37/HV45XUtWEghu+Ns/eSkoQrjkg1Wm5aSPPANTxRc1tXfM8/oWh0/gpK6tzpq5+dXaTjZU/QXbZxKoS9PcBf8PofKfx6z5ayORauIlGuweXH2cV1bnfHW6INqBObCpCJ0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABemNDkH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABemNDkH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8E4AC19421
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773445493;
	bh=tqNNo8y3DhDg1I5wDoaeaKOIGq6V1YU8ccUEzUw/e0Y=;
	h=To:Subject:From:Date:From;
	b=ABemNDkHbb65S+35IxTc88F8BqC7FijF0/GZSqfV1FXp2k/r+g1AypKBdnkDDED9L
	 wDr7rWAvaBzeZPp6IRAEfJq6MNuBImD0YhGVRSasBPunJtXsNxS3rSN+B0MjXlhlCK
	 rJHtv5ihlaS5XCfrkhaHvZl+Y+oQpcWLjbgkhzR2cyQMZVsALkcGGOS+t2dBTaU/44
	 kA0pKJT7tQIblWh/7LRaw7wdj5KD1DL0AH4tJAN3wzaoPIuQQdPyl+u14eT1Dr/1OP
	 iYnYDEfj/n0fzm2ihuKaqSrBkZEGYC8IBX2d6E9U/qEHPo+PoCNwXPZFCWaYECdXNf
	 I/7p08GOggfGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95972107BCD1
	for <ddprobe@lists.linux.dev>; Fri, 13 Mar 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177344549357.30587.16695989490827693642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c61738e2bdd18b90fdc7b7b0f6f29f284b8339832fda7eafbb414aae9c529ff
Date: Fri, 13 Mar 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773445493
