Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B3481CD35
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:36:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720305383; cv=none; b=rao4espwi3vVc8DHYTL2fiNsIpis54Pfss8u2VOuyT1gKbVmH0zRjqymL9Rvbzusf/es7E1mV+CQZH4EPr7D9VZnrrklc6ms/6iSI7YJXrpUnYs0GM8xva9X0PQqvMiB5bEjYLaHliL8LQ6bRHmPkfM+9d76SZbWAz9dIAzSG74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720305383; c=relaxed/simple;
	bh=KYaMqjAhvF0nSwtXBPrijW7T8Ku6ChoqKPeoFLI8zkA=;
	h=To:Subject:From:Message-Id:Date; b=pKeHxWcVjrSKCHaQWzjNpAKHHcLColBt4MhIMYJDhw15aPdJ2y4i6hHOTvbepMi93glMOUDcvj9SQWhULzC5srlOfH5oSw++ezzWTkTRlZ+HtX+DL/1XkAoQOUOdUNWXVhQRC8E86C00W3CPNiictKV4RZ395nRXcl1GKRqsZsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy/mrVlz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy/mrVlz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9147C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:36:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720305382;
	bh=KYaMqjAhvF0nSwtXBPrijW7T8Ku6ChoqKPeoFLI8zkA=;
	h=To:Subject:From:Date:From;
	b=sy/mrVlzZSK5sgbC7si94SFJijhWB+UY2Lxp0F0xZDcoBxB9e52EV7P8g8Ys+1Q6h
	 u6nHptCb0pHLuV48U0BzySiEUuWXCub/+CEpXBfpINNGtHbWF9H5dCmOJ5aIpyPGHQ
	 6hEpDF/1Zq329Fn2A09qiU2IqGicyZdh1hZPo1U2Miad5YzmeYuSB0cacH4xcm6vii
	 /5q4aWGswqlHHwW48XAhByux3aQbL3t0V575OTp9Lf3ULXDWXEK2TQY1wh9NqSsovz
	 b6VPnquSqx7Owrk0zwVewAmkJqEdwqrS77bWtugxbHzSIL3pLxVr8SLXIHFXU/G0ac
	 ErwNCLtaHJAPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5FB9C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 22:36:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172030538277.16363.17058415603022909952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cedc13187565fe91f2c2ec2ead6ebd70b25fe72e9e899077fc462e36f05db039
Date: Sat, 06 Jul 2024 22:36:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720305382
