Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA7A2EAE5
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753670995; cv=none; b=oQemdsPwNNQggBGQtQKX9vlJRJVBbu12tuLvyb4YluHfGe9XSp4Cj4SNPhMnFxjcgJyIdRuOKTcoNTugkxo7B3SbgpuuQFAmDJwN663G/rpNSuieNnx4egsSuVUqxGyPxBfdmTm7qMQ171Hb6ExXZpYlPNZGrJ4pdJQSOSJMUvs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753670995; c=relaxed/simple;
	bh=6qizqLwPwArT3KtZKa6vOx8yD7CFuwdQ7mfAi54ptdw=;
	h=To:Subject:From:Message-Id:Date; b=GrzwME7VpiQYZsotwBSYyv6ND7qTflVT/Uy4mVPjxQVPYDnQAhKDW9VERMLv1XVzuv/I9OIfgc3i40NHgaxzltdA+pgru4RSUFTK1L6YzmtinSO516BzWCKugHaHFCJQ91JgCUBGi2SyvM+w42Na/XFeqm6Gs5Go9CW0L26Cmjk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PJ0znqy5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PJ0znqy5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2410C4CEF6
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753670993;
	bh=6qizqLwPwArT3KtZKa6vOx8yD7CFuwdQ7mfAi54ptdw=;
	h=To:Subject:From:Date:From;
	b=PJ0znqy5+3fbQCPyHQ4Zoy2AfcOPg8X5Wzx9CsShN458nGJuSmaOEPx7Xu84Iqon7
	 908nMZlXsjMj+dDYgMDAxjU1elTdhj2srf7Ca72ICbQI7zV4nKYroVzULCzWpAKK6y
	 daW1DmhZkHX8uIicVfudVzKD1QhITYV2SG07cj2WUurC3W6a+qyzE99ciZN8wC0uBq
	 HhCwC3KDKmcy/uWJMrKuIFJUBqlKCfod4hKwdQCpUihC/pNCIln6rpAoC9fQa4uYWR
	 WGz2nl5hzuBQtMzADy8vcatm2Inwdn4IoL9Iy+/pR6PxQhc/mgK/Ngmj+LE7V37iYN
	 f/AbYtDv07X5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FBF3C87FCC
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367099358.20017.15174642888883101709.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f3d443f268e7629840d34e9b67bce7358479f027bb7e1ffed9535bedd47404e
Date: Mon, 28 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753670993
