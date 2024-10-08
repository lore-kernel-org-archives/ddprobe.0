Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B0134C62E
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728359154; cv=none; b=X0op1t4b8AGl9R//iKH8tzEbY+RPblQG1TuCCFfSuuUUhJ607CN5/j1DYKum51K6VDWFYkdeEC15w1+OvTc5RgNDpAfrNMKO/5uwOCEStuwHQ5G6rNkM8vriUepT84DlmgBnNyGkVwTwkHDuv7u68vAAvpfJ+RN1YOozCFwycDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728359154; c=relaxed/simple;
	bh=cyIxd445q0RSO7Sl8MU3NYJ/5wbQkXsfRpZD+jhfoZI=;
	h=To:Subject:From:Message-Id:Date; b=SCn33qdykJ1Gr4KIT5YnAnu+lN7KYL2QDo/UqD4aAK6Cy993DEvfwdqXkYouMMU7clFsbPc0w12rnVXy8EOXEyFuLv6WarMP/grJlyXgv5SO+K/aD8iWqjIY9zGE1SHlDw3d/4s1CEPxpmzFnxy373Nt8aO8Co54bUDTIVCKuSM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u1XHsMxU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u1XHsMxU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A20DCC4CECC
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728359153;
	bh=cyIxd445q0RSO7Sl8MU3NYJ/5wbQkXsfRpZD+jhfoZI=;
	h=To:Subject:From:Date:From;
	b=u1XHsMxU6tPRp4ZeX8PaMcYvK/WF6jsftlzsNuwYBBW4r3LWAQS4iyL2LwyU2xM+F
	 kxGgdsa8NdHBmLbAn3aHrCniqFnIL81CGPSrskYvDfuHqum/iwVv4qbuLPeRVJT+Rm
	 twQpMC+cZI26b+QuvcEXQZe4TZVtan73oSnLMmPyjdpaguaX8tadoEwNpOG3mOpUbM
	 o6cUig4ihr8X+PmG5l92M9t2VgYG5rl4YffcHa7OqYAhjtpw2LbRTu61V0UAKHeaYr
	 w2Z6FvRC88I+kRhkrCOkrkuqBiJqMQj1ntxMmUawKByzbcaEukJHZjVVPk77b/3cvp
	 CnvOZKcBoGO3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EB4CED25F
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172835915359.27247.10748078339345482747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49435874b4f7f9fb54c255cd15fae6b60035bea09086733c77a4972d1843bd34
Date: Tue, 08 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728359153
