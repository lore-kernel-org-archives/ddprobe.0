Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C8531A238C
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747745394; cv=none; b=V696gDJ1x11GzB9C8dZGtZLbno+ZBkR8RHPhed4AVVJmFLsXAlPXbOql38NPA+8lJjAt1QfeEelhIgCChrfWDeGjp1lp2qEIpVRj/8fI5OcdX/3c9IyJ/91mlHMT7nIeSuVbN9BCWaCJR/EY/eZgSVAaC27Msg3epzRdp+D1ZyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747745394; c=relaxed/simple;
	bh=t35g7L8v/junAOdGN6HVhGBklfCwQfeqTh5EHKBDvmU=;
	h=To:Subject:From:Message-Id:Date; b=eP/Cxcd+KqbA9OLDadiZlOS4TMqCXEC/MhTRIpiVKCzC5Z2f6MjLETTOKb34+vs4ilMr53tzUrPrM4WP4WYkWzc/UCfOj/QJSfgKHOuewWhnyXoMhBvo+ECkbaGfxWNWkauJHVdqzQGLiS9QWhdZ3AvniHFI+R0ugcXtoDKwQ5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVWvzhUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVWvzhUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A993CC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747745393;
	bh=t35g7L8v/junAOdGN6HVhGBklfCwQfeqTh5EHKBDvmU=;
	h=To:Subject:From:Date:From;
	b=IVWvzhUARvofObJn3JNdQBujnEPSCJTydhGmlfqfv2EYXDUzVaf+ig4dVXuy10hKj
	 7DF4lBrv+ICjT81d3aLhABhzw28pJrk/mA3XPSA7iPlmw9L0e05C5e/kJolbvivJhn
	 MibF0hJHIuHhjCQHJ8I3akLzLwWlYGs0AmoZ5ZkjdWMKMMb8LKUkUTZ2aTPnr7uA3x
	 8POA3rdU/On0SrBdClYwOi5tp1J2N6vgOkvR3uGGWM7QdPIF4r1BmpRIrxYsm5Zd8n
	 ge0XE2BWM0SNS5CZCHF3CY8n14xFx0UUVc1DX6ITQ01FkZQgZOdO/LFTuLUZrA6twB
	 cp1rpBFrLBPyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D9EC3DA6D
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174774539357.24195.10002213191434848400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abed8ba3e6407d608e3630ba9af321d7a38ecf6285f9464e2ea344e9de47f5e0
Date: Tue, 20 May 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747745393
