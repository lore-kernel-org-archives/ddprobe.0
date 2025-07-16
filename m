Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B89D72EF646
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752679793; cv=none; b=eexWDGsqSbleEa9NbWRfRwdx90gyC+IgK/+bvC7UZC0Lr39RbLv/D7REgCtOucRSAthSvk9ks//q/uwRBvGD++iXhBKrkQirSi3vVZWYczm4HZ6TFi1+MCTyKcIjTPhzwbiSFip8YSkIMh5/SU+1Qk2PjcsjXiTNRxKk0Yq9eU0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752679793; c=relaxed/simple;
	bh=BoOwniJhywlOoJg3f78zV11BVJvfy9OkDQuPacwCeW0=;
	h=To:Subject:From:Message-Id:Date; b=FkA7PNzoFjw40x8j3Bx0nCoggDej+HcTfb9c8SgVbzMa5JvvaGQc1s4H4GlbS1y2t49jn4YnLi6sKVsXiIca444EBIaHIpCRun06Bw3E8mT6Ncou3k36Jj9NQfr9SEOD7fdCD5Hh2tFC7r1WMMvgcLlrCkm3aEKOBpHliO12sSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGQprSgw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGQprSgw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C36FC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752679793;
	bh=BoOwniJhywlOoJg3f78zV11BVJvfy9OkDQuPacwCeW0=;
	h=To:Subject:From:Date:From;
	b=FGQprSgwviG45drxYhAB+mjPlQfkoMejbZmLmjGrWm3tfMYD3m4MSp+l/3QjlHcxB
	 mHuwiQwezztzgUctvHWCbAME43FLQMjtkq2KeWVLt8CmPdaRGNXCeW6KoxeLOnVlmV
	 /OVGnXw9CpLOzz13N045/9vyBubFpBkMb44r7FfGaHQXLG627tenvG0oPrGRWeAVt9
	 icEpnmib3MGyFw/CD7h1SlmlC2sZBLQEYVrd0rCksa7WBY6/nD9qtgrDIsUNf6AZxk
	 da5hx4jxsawtPOBpFVvMwc5Dn1kClYG5+ZqkT4n/flu5fVWf3OsGtNuiTNbSGLDxhV
	 X2YrUyQGMl8Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBF9C83F1B
	for <ddprobe@lists.linux.dev>; Wed, 16 Jul 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175267979357.24301.10945471509528076025.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc5086ec9e1c65f3997ec65d4bfe2f127ce32f0a8a14697181a8f7a42beb83ad
Date: Wed, 16 Jul 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752679793
