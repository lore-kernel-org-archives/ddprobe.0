Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177CB3054C7
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777287454; cv=none; b=sanobw0e6JKYcF9s2QcIh97PqeVZay70LQTBUVlv8J1qKJWf/U9YR78aQKtcSsMlGdgLbs9XfwF2nwjiVgl4wYEJSwdjTZTkGQixWbz71z+l2cPBLpYTsKDcONkxNCetIKbIT+0pJnMr+Gv4IkWyrhk2cAoHytZk4y1y0wtA/Ng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777287454; c=relaxed/simple;
	bh=b6+oucihbd7HGAnHo9Lk+7dpFoOIKapx5bnbdrydV/U=;
	h=To:Subject:From:Message-Id:Date; b=KVEDOpFouHNM0qy8srMcy+PdRLEj8pq6DDPN9EIK9If1LodSMxBp8Rl+p3SC5DxTPJBd5795SR0QZT7EpFkloMxmmdxOKrI5cyLjQShCCI0ikCQD4TkTEepULMIol9skgkPoO6VhMh8lKOoQYGeZmtcxQcdshZ22dxEAwPEsuS0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l30HjK9v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l30HjK9v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB7AEC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777287453;
	bh=b6+oucihbd7HGAnHo9Lk+7dpFoOIKapx5bnbdrydV/U=;
	h=To:Subject:From:Date:From;
	b=l30HjK9vzzsIMCtoDI9Ejwo5ruoI5a7vlQHb+/GjK4DAjH3jgfot4IvFLVPr9uPf2
	 5L+/vDRIRnWUEQQDtGLy6zN9b+Iw1Z070KbK3JhQvcX4oYQzhUJ8cFVP8TRJDOsa8U
	 r30QqlM9zwH3LjDCtQ//wdL2kFKHAl26U1Jez+StUk9p0QrpbA4JVDZnHsOLMRLsdU
	 bZ98gOYiUuYoPPkGz8s2GQ68Fvkn6zvACligLB7f6YMQucx6BX0fFbu1O/Cge6AF8j
	 0ZIfml0RbR8LFdOoJtRbQX6sxvBt7dveShv+puEfKmv0QkCW2tudqDueW05cAKRid4
	 WojYeOcYxlZeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA474FF8861
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 10:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177728745368.28595.13576545146008255861.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b837c034cf9108fc0f817363e2d99a30078e537576c33a3113e3a0b8e03bef78
Date: Mon, 27 Apr 2026 10:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777287453
