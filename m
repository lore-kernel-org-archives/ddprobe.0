Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 626CA2EEE85
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789088434; cv=none; b=qQ1aOKd+SQ6CAWh+Dl/GKmTAU7gODHM05xYuDaHbAP2YnOn5g/IquopgQgYawb+T3yZBAbSHG+SUvEHlKRioaXbsNp8nX1uMKQmc9B8LmrGLfh55aC6kLRHN+pw3n3iRbe16eTAPxFvFN/qz4ZBatg7xeR2qpPB+yIf8a4VpaRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789088434; c=relaxed/simple;
	bh=vO4bk0DNbArmrpq4RyrRYLuNVE+ALEShS1oWYtHZ9gA=;
	h=To:Subject:From:Message-Id:Date; b=CfjF1CqViACpeZeU/XwY+DrqNZqjVFPtjNfPh41YA3utKoB6RUyciBOv1qhDB39Sp2xZUo22kxTxnNdec7AbpkQ/ddijBnwMFo5tHArBcxBBPlluWUOlJGOWBCCc5J/48jUF3SH6L+5F9NZujKk81bLE+jpt6gJ3LoF/dwbWXJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cw5RNz9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cw5RNz9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA568C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789088433;
	bh=vO4bk0DNbArmrpq4RyrRYLuNVE+ALEShS1oWYtHZ9gA=;
	h=To:Subject:From:Date:From;
	b=cw5RNz9nvYGu5u1dyN5vmtLkK2f5iKem6SLn8ICnCxrsX6f/OoqRajStI9Gk0dSzv
	 tcUEHruvQU4jfxSeIhXor4CVp4IHAG3JWsO9Y+WdF4O+lxXORt+GxS/2to9VuZugO8
	 gkiXOR3jwJEtEi82ziZTS29+mags1KL+npyN+YfQMPJPdU3KpIT7A0/RU7g47GF1sN
	 vlvpdAu15ye9IVPzdMG0asGN6cOz2py9I/nwVKcf1oLmul9OZk9MpAKNWoaw9TAFgM
	 75Az2+Crvi0pYmNecoEdoLbSqGyIYMYDZ7mOk+3f5j+9aI4jsMs37G10+ks8S+zopB
	 0XqsY9GmMBSpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B155FC88E4A
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178908843371.24649.4801907717968641596.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d59bc748c587b8b497e417332bee5f88d3137ca1928d6690465e5d276c6931c
Date: Fri, 11 Sep 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789088433
