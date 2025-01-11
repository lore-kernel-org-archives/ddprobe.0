Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C62F24B25D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736594154; cv=none; b=uaktB08xN1OmcHK4WOcIHQFHXJmk9iLFz0+iyLyRPQ3tUToV7IKQ2HMFSLtj8W3wRLog+O3E0cf3Fk3GBJya1E0zleaKYHcehgM27Af2Q5n4gYALBmnWrP6DdFL612BX6qYoSzotAd0OchQIewxTbLHWHc70eRv6OQkFjpZrxB0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736594154; c=relaxed/simple;
	bh=4CbOla8HIc4iRmbWtr0SNsNj2fZl3964MdzVxUavztI=;
	h=To:Subject:From:Message-Id:Date; b=C8viek7Cvikuxz8Hgb1YX+ozLfPaZqRSrh7JY0wYQy2wgMub3zEvIBhG09gQrv+hwxK3xwOpW1EjWKPmgr62ivetPf5L7UxWwc/Gms+S7WDwP6wew8S4Rwx9kUzfGFK2m2eLnw1J4VPRph78+1v5vYL3SCKGCbuUwqxe63vL2I4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JpnZQwoq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JpnZQwoq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A6DC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736594153;
	bh=4CbOla8HIc4iRmbWtr0SNsNj2fZl3964MdzVxUavztI=;
	h=To:Subject:From:Date:From;
	b=JpnZQwoqI+/UmqMpzBxbdLWkQkWDv6xUZCqGk3zvYTPS0XaopWqpiOIK7eEKtuCBJ
	 28z+cHuoMuHbKg03/oLMv+eI2BggBQN54Z7JLLVwcvWZJpTMvK5o6pjtr6EIXVPvy1
	 L0T41CfUp8A2PSNztlbP93Dfz2piDCLDa+VQHbbE7N6P34mVDRJKSRz3NtkPA83eod
	 8yQP9WGBxsIyTmu8vgwmvRUmPOvI+vYB1aYPmbQDAjMBpkYGwts3UMq/MYtFKvhIgS
	 dVFkFxuZnpHyzPieSXDL9JeNvKzrCLyPi71RibbIfg0gyjy7PWe5OR/nLx5SMfb5VP
	 I0ibtTl30ivog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05CAE7719A
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173659415367.19023.1463141831181368990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9205c609e070906b4f38f50bced55a220de4a44989ad098544d85d756ecc11a7
Date: Sat, 11 Jan 2025 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736594153
