Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0089256472
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705697897; cv=none; b=uP0B+WYtIfE9Hn58oY0Bx6euj6vxcxF7yZeuxQW2K2azb352gTkcogla5emhgF2Mrg07X4VJ05kXKJULkmM6iLNgpBAm1N/maFym/eLg5bOCsPzgOpXVGjEMYXxxXI6CGx3b4BlbuTSxs2bX9p4qbWhNyHE9d+cXalttlPnt3jI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705697897; c=relaxed/simple;
	bh=zBKhUuNacQklXS/rUhDGLgP5+pDZyEE2RPUWbzcPVjc=;
	h=To:Subject:From:Message-Id:Date; b=WYuj8gK73CSqzWtKqNHPf2+FF+szb9MSG66JjUzvM9jSEWguwuxAHHfMDULHEV74vuRvW3k5iOiz3HK7jM60ZAf8sQKtshBAKsMiHq4HCIUdoee/tUyQD4fmPZqSvZwtXGSPfZlvCnELAzta3FfbAD83FeuVnJpe4lvW2d1rgfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qh/QOioV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qh/QOioV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7F6D2C433F1
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705697896;
	bh=zBKhUuNacQklXS/rUhDGLgP5+pDZyEE2RPUWbzcPVjc=;
	h=To:Subject:From:Date:From;
	b=Qh/QOioVZibbvyxa5uIPxKzvIS6B8t+67uO/xjE1Bu9+HR3x8I/BKjGLMg5By1PoJ
	 3r0AOuQAvaUUv/+IK43H2lXYKMjsFYpPW4DDYyWCxJJjaAJ8Nm4LdVJPCiTTHZF+48
	 zKC6/CEcOQpqUunopF6dPmjlS0Px+WbN/SVjemA/kc2r3b0jKsZbjX09YSrfYbs+CQ
	 LVR15vVwAagotCDP6GXTdDzjQt2Xnd5l64G5E58sjquZasFdoEG1CizZ2yz7QosGE0
	 QlYUzc0RkRA+iUTr9tV/AcJyHbLe27azQPltprjzinBaJjbqns35SWUhwfob7e6TPK
	 SVWlOYUReR6Dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67C08C47DB7
	for <ddprobe@lists.linux.dev>; Fri, 19 Jan 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170569789641.22112.1694335678381678481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8176b58dd37b2af87fa9076baa66674178ac8ce326f3902cdf79226f1e9cd783
Date: Fri, 19 Jan 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705697896
