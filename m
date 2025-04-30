Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1912DC78E
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746002995; cv=none; b=I6hYlpfsldOd2aEYOlVDXJPSsR2L1XvTdnDN1FX4HVdsNf8cg4sMaJ5uDUTCs+QDGzVnQTUjtfnoTMFDQhILidM98q1y8Usc9bx+rSBZJnDbY8xW4QYTyE/5iTKD0NejkvGqgvboKnUN4cEAdCWLtpqaAKNtxHTxuo8FbYlr7Ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746002995; c=relaxed/simple;
	bh=rO0X/tdwoEJ1tt3SIm+6d9n68XYihSsQvMyT5/bbosk=;
	h=To:Subject:From:Message-Id:Date; b=FpNYvk5xEy0aiXhXwo+J6mRvK+fdalIpVitpMafsbMTUQ2XF+aEyIXiKvHTPKLIBZmHgTxkbmgEcBEZr1nmcJ4o9ZEfV1StANEHghp0VFOnW/idEUtNzgx3ybCX6FUfcGlh5sBn9pigxgGv707cieM/ENuvwwwg+NL7DQL8/kV0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D8gr8hkE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D8gr8hkE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FDCFC4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746002993;
	bh=rO0X/tdwoEJ1tt3SIm+6d9n68XYihSsQvMyT5/bbosk=;
	h=To:Subject:From:Date:From;
	b=D8gr8hkEY4oAs96j5A579rl+01e4m3bxjpAk80C+G2RUAxM7Drh6lwlxrFONVXCAk
	 WEO9Lc0J+C1md70TETpZygghDfiaCFA4wQm1RuaFFwhXWoNGgmPfTnhfZpxjoA25dm
	 eAw+HKy4AKS4bjk/BpFgZ5wC1JvEmrfvatZPkEuXblomXAZh3f9Q9ZBqDMUgB8fMuP
	 A8flEwSbRTsBlFzoqC8Q+IhOUi7OdqGhZhCQhHuiXJ+o/MLTlMAN6HcmeBWb/XBLzv
	 N4GfRLsZNIGs29OVFdpEgiNZE7ciMRAx7RKYHNcYoN47BC9ZakhHrrxK9RC3fWmAbN
	 SVnNaqoKNZxdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E4E2C369DC
	for <ddprobe@lists.linux.dev>; Wed, 30 Apr 2025 08:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174600299357.22401.2163935692823431046.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc7826c2d8aedc663bd9ad24a0c7c0784312b4eddfaf861da0e403a0e418dd7
Date: Wed, 30 Apr 2025 08:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746002993
