Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 119A918FDBE
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777550254; cv=none; b=PLECf8QAyZ/bwJuogVq3EQOJQpn5Lhas8WMWORHLhydxgUr+jJw0VDQXSTT+wgh3Fk6mI0nKIO2qC6XIdBYcpYO1WKDYtcjoBluRM/Vya3BLzDel8tTlEodvxiky4CkeaqXjbm3AkJFpb88wp1VyCSRTev6ZRkj+3j8dm+F0NY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777550254; c=relaxed/simple;
	bh=lsP9xDUw/KzjXi9wwoEvPmEvnGsCwYEPo4+hu7QIOAU=;
	h=To:Subject:From:Message-Id:Date; b=Cvpt57Vqt+RG5wHY0Xrr/05qadVmLSYDm71yPTScds9dVQGmmvsEdvMAmbnAIh2DQJ1LGlYZ2DRgpklkWHEdKuJ/sk7A8V71F6pPjpuojLVQu/X0eehw+Tex7MQx5M6bMkUQeMyvrqmg3WmG6f5gJEqEMngioKi/kcn6sbSV+eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RI8U4PX/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RI8U4PX/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B88B2C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777550253;
	bh=lsP9xDUw/KzjXi9wwoEvPmEvnGsCwYEPo4+hu7QIOAU=;
	h=To:Subject:From:Date:From;
	b=RI8U4PX/ID2piAgNu+YOzox3VEqqpFv7TrpefHujb7Sc4oWiJZxP2pGJcwUN4yQhi
	 oNU4rwBBAOzBCYYAA6WzRygE8wXkRJffcjivVbx49qGaWU+76vnR2JQ1z7IqmLcOAC
	 4gpojJ7ii0nvs0Cbkc1XD5GxYMXHkKtl8UhbOZNXKBURphcA2GavJAE5yqvunzXeah
	 hWYgNtS2hIQEt7v5aJB1aA+0wTad2Ux+22DqV0cE0oN3vyrtl4LtthiEh5DYUgLo9x
	 cs/pQ8n/EgRg9eXiIqMFTNiUl8RmQsAplEJAZIy9xSmoPsm5ZN9/nYOe4sf3sqt3YO
	 6Pd8OuNsvFkTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3FBFF8875
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 11:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177755025368.13040.16336861417706212788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf2db4a7f403b9468a3f142793ae0b7a8803c042108683bf6d36e202b1ac62a9
Date: Thu, 30 Apr 2026 11:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777550253
