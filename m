Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595D42A93
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744035594; cv=none; b=l8NMZeT8ES6DGVov5IQsJV3TSR9hDJyezkDvxb3CjirKxZOSpi4snRxzSCh3Rmj/Yb0qL8/f83Z/Hs6/0l+sW+WV43LlkMyAh5kl/0pGLWIFieXplc7CSZd3t3txdLISEyqXlIHt/16clZdmaMy4W2sD4iDLMwNGJbdplscOA6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744035594; c=relaxed/simple;
	bh=wjmSHV+sKy7Y4h5XVPyymtgooJovCU9Qx9dJMCEqepQ=;
	h=To:Subject:From:Message-Id:Date; b=Q1yRlWXlAk4J1kCSVLYSfypZ/veE2Z7uh54AtYtJOV1nTnK0WoJvyNoHh4656pZljwR/yiXqlWQo9IK8NOwlsmd/lkXs/o7KCRMXerCO7hxkmkUMV++BsF/PQilExB2TQDOEYeK7Xu/KYZrc0/C1g4FEe5pe68lSEK9wQWIzpo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m/2kA8GB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m/2kA8GB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB949C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744035593;
	bh=wjmSHV+sKy7Y4h5XVPyymtgooJovCU9Qx9dJMCEqepQ=;
	h=To:Subject:From:Date:From;
	b=m/2kA8GBg4pFjuYh33S1rxE0yaHQ/anH45ecuft0lcuSPO8mZ6AhbYRdEAfSyYNUT
	 +NA6d9MHfnsA9g7Tw8Kf5uKTLi842JpZg6OUpH1fbfQDYqGOfjqZ2jr8rXyaoXEOqm
	 iE+CdidPZ6QKmADH/JWfpAByPH+pz36ZCRxP6mdqHkHjlsA6tIOp2hbySwglWv9qJn
	 PGnONOWja93krCZNK0JE3ps8HzuMZjQfohgnZPyGi3DahFFwTT0xHslC5WCgi1cmz8
	 VM766UoCisqxy/fO+LX9+xvDuJgpDPnXmekNR/75OINJ1zImzCP8zE6xbYt3NWVH9Y
	 AVxCxS7kNosxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9685FC36010
	for <ddprobe@lists.linux.dev>; Mon,  7 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174403559360.5968.17213785277391084432.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7da0085ee5d5c5808147fc0cca3fe0128ab1c23f388d40e71c1d96bfe848a68
Date: Mon, 07 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744035593
