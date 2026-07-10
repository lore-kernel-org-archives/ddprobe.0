Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DEBC126C03
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783643914; cv=none; b=uJU0GiJfe0oXGgMYs90bNzdZJgYAu2phaHdN2Ye4nU3CmloPPCUAA9pPgcIfprd7QhJo750WSA45gCwTdJfD6udJZSmdJe/SE1yfISJudMcu/GwJKfsSpsJ+MEN1s5iD6odC8xsojBIXxrXK/hdJIOeFoKQGJFiz+RKeYbhizmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783643914; c=relaxed/simple;
	bh=o3xCE0BK4g+ZJfoZaCijgzG0ycAwmA9SQLmOhIN6/Oc=;
	h=To:Subject:From:Message-Id:Date; b=RAh+bAFSpGkSsbu5NNPZ0prVx6/ciOZw12Qj8HeBL9lfo+thGNlO6bUYYCj9aajEuFi90tM8jFlmvR64TbXsUgy46c0eGM8XqWV/j7jHGEZdiOs+twggpIQklw0ePJSKoIDchtMoRZcmkaUUYWHpId2eo0ECy+Ch/BxWZr2RhRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AA46Bu+y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AA46Bu+y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFEE8C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783643913;
	bh=o3xCE0BK4g+ZJfoZaCijgzG0ycAwmA9SQLmOhIN6/Oc=;
	h=To:Subject:From:Date:From;
	b=AA46Bu+ykslWtC/Ow9gCTDnnKEEoJBHFrYLoYBE0tXBE93va5p5bJla++iX9ob3s/
	 +fnhyOJBvZy6W57QmFzFyfzNJY0V2hri783smuOUwRga7A3nlyQkCg7jw2N/ykvkQ7
	 XzYrHvI9/0Dgllp3e3vJSTA2dKHgQBtQbMhaOZkeINZvoiGLUJpIKIKnvXYeOF8rhn
	 9zbCfkqWcvJZg8dCSHp6DCgWNHcSY0+ig9cC1FPdkwkk2WVjUDdqlodwtqx6GgojzA
	 LcFeJ5Qji3a6PlhqLZcV0HLeocFM+2lEBGjW1kXlvnE+wWs/I3esHJTQ5pZCvBqLdI
	 2h5/+PsObhMZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE418C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178364391368.2439.16044199202407226858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f82d26a3d42d49cf6821364f3831b30bd2a5ea756d23190b511a8ab15f904199
Date: Fri, 10 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783643913
