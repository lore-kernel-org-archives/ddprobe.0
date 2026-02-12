Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE3321773F
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770906894; cv=none; b=GJEFfdo9o84ETefnQpZ3t6Z+xOO2JNBuRJ1QoL0XBfE/AMllJ4Hho0a6sOXAa30g5KgTq8BQhLAKE+0EF+xWHKL5SoQSES9gRJkdWKSCLfyDq+aqd7dCM3M+wf+eVMbaB6Zc6kqE3uh3OZ2vIoXDSINOQEif2GSWiGL680SGF2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770906894; c=relaxed/simple;
	bh=W5UuOG94niTtfNpEEM6vZP0rCdg6yWjLp0BIuEyoJDQ=;
	h=To:Subject:From:Message-Id:Date; b=bW8CeNKV1dRw7RWWCne2CT/TpAl+DYKSwG4ZhzuflLiNEIY+tzdjo6XgYA7C1QmXQMt+rNASdg9OZ+aMNRop2c97IHOa4bYPGMiWr9CCs0mPdgcoIaCggVWKqkEDwp8OJuE4kk8UMKNuXmBkAE1xxI5RpIVSEvGEFXVU8j3jqhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=onQ+4LTC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="onQ+4LTC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF72DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770906893;
	bh=W5UuOG94niTtfNpEEM6vZP0rCdg6yWjLp0BIuEyoJDQ=;
	h=To:Subject:From:Date:From;
	b=onQ+4LTCDd9h7zPbLL8qXO9JkAVKW9jy24QnUczZZWQ99TCFeUqG0eZR+rO3e8o5c
	 /fvmJY9y4QeNHNOzG0OQANi6/Z3XUVX/W0DwKZlfWAHQ7/LQJRC5ReMkbkjGat08Po
	 2smiR4SlChXc+ySHZ3p0+Yn8Woi/ch6X1OpJsn/5RJoSqn/47dSctk7O6LcpY/pLR7
	 XYRZuLpooF9lYEgUagTjLNpGO8K4mq9PsoQbfUUfoBtt+gUgm1vqruYVfZZvvN/6UO
	 iSFXeT/uBk5HepWDsuHnDVyzzwImbM761wsY7u5BIgX3N/lxPktQ5ffeOfy01i19ic
	 mx9rxhyBlRy6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A02B8EE368E
	for <ddprobe@lists.linux.dev>; Thu, 12 Feb 2026 14:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177090689363.25160.894226169780558812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7aee3d645f89f297cda803da5f0a88c3558e87e11f59f81437a595c29d80144
Date: Thu, 12 Feb 2026 14:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770906893
