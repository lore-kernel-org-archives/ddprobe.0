Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A04320F
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743289194; cv=none; b=h5yKq9Lz0mTzfKXFJ6jwdRHRar9/nEgup3G0U66H7Q8rdiD/rMY8sD/ujNCiVpvmEgxRnZImJwTjaPvWD0Gu8wzCegC0gVVaQVWzMwDVobiXn93It3ZbK+R8Q5cadUtZsOdyj6yLBhlEmK5/BOxEkh+PY2KFVEYgl2o6roAcjC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743289194; c=relaxed/simple;
	bh=4qW2jnR/4KFzOlSOiOKEqPgfWHc4OTmWpz5BVPzbS1g=;
	h=To:Subject:From:Message-Id:Date; b=K6aqYg9KNAyJ/RJQMwNJjEA7EISYdEURnO3W2dPe+K0EMbfKiDp/xSqal6UOTj1CKQF/+7xBeqdjv4k0Jdab5YDUga6z6mA9icjM78mIf9kXm/FKYsSlSHGLMijGNlpXS9jz6ghNRkWWib9FwLMW+BXER2N129kINSBk4e3+vd0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g9sgTLCd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g9sgTLCd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5D26C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743289193;
	bh=4qW2jnR/4KFzOlSOiOKEqPgfWHc4OTmWpz5BVPzbS1g=;
	h=To:Subject:From:Date:From;
	b=g9sgTLCd+QI/AfA4cH9nNcMVdxbrIwTDxIG7OM6i/XoHP6+C2vxTEd3SGF3ja2CzW
	 6tun7OvfZrrKL8lUJ1gZCbwXYSUAw/RInLM9DWnQhV7YrPjk3ptlKQiBaOFyjR3kw5
	 UnXdMLlEMcoFQhbRm2Sx4Psm091165sDUGMcD6341H+LbECKcoKOrByfy19LSGZJCK
	 PFnCRRTaN6FwxtWijSigTWFdCGLKFzZOWs0t9HgOeie0j9ScOnCuCfaklD+xw1hgXS
	 r1f1n6Wggh2MtKDt5dBNKDv1PKjdJ16UpucTTcqg3jXwD8bBqeBKlM4bblxClbDN46
	 o4LpXwYYyPImA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED71C36008
	for <ddprobe@lists.linux.dev>; Sat, 29 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174328919360.3835.7964902547559882454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1b77c76aa364f0b360afddbc3ae448738d6a3e4d634df06ec20e881e7cef916
Date: Sat, 29 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743289193
