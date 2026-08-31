Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4285D3E025C
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788175234; cv=none; b=MJ2PEUFKHnvYLcJNpAKisqx0j7orrXbLaQa7u38fDf5YGS9PDcdRTvgTAIu5VjgDOIpYgyTHOB7dooFb73cGi+Yn0jTXTkeXhFmncCRR1Jy7nxORCi4MVGX2mhXyfSLDur8OLmaeSERAKPN+CKxXtFlbIUyxrtTe+PBP659H6TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788175234; c=relaxed/simple;
	bh=ycmW4VlXgd+CnFpQrTgEMETV/6mHm7mrBnFoufqhp80=;
	h=To:Subject:From:Message-Id:Date; b=PK5jVHewy4/rMtyUbF5aYLqOjFPgR51rP1I14gq++wd4sGvgUQRdow9XexFPwzT+tttUGiUw1Hpv3wGTNr06gK7Y7zXKjhOYq70bjjSTfnVfneTdLZpWXZWtIzHNpF2CpukjkxYVE/bND3vziYfwt0J+YHQ/t0ySEq7vJJpp1sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YzLssX4Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YzLssX4Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1532C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788175233;
	bh=ycmW4VlXgd+CnFpQrTgEMETV/6mHm7mrBnFoufqhp80=;
	h=To:Subject:From:Date:From;
	b=YzLssX4Yv2nFaQb3QGK3fkShuguruESr/4Le8Xy/IBEKz4X5EP5opFCjIzh4dpj8K
	 mHBG1iMZQsk96Jp7xnqnXWis57ciO+wxi2FqbNvGfFbPPUWWQsLe12ZMOxTciMqM5n
	 o5NJoIgEMTN9ERjX5752huP9wxoiEXmFMwPeu8PYpmF4t5IVhasumcsFrv3vDZ1Q1X
	 R8g+shMuVecoLV3+BJVjB0ayhcctHeTzUekn7QSioEpoiAYp7JZNfsrCZ3y0LGGcpJ
	 0bbEEA5nqHI4ygOQHZv2PucIeke0Btuc6N689lQ54Qt1OPeiLcl4j3kb28pxia/54c
	 xvf+d0Gor/ezA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE429C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817523369.6655.4056058217592661684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d23b966c050b418114580a17733f030b2aa2a68b3fee140be1e1e0802e13ade
Date: Mon, 31 Aug 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788175233
