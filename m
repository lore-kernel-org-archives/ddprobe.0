Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407871A680F
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781822194; cv=none; b=Psg3tJemsgGbufI1NuQ0k3mwxdOzr8w2/Qac92qzegWIkdW/ANathmG6dI8CIGi8pUYJw4yvC8cpa/LNy/z0dbe1CkjVtgq0ePhh3uj4VFVWNrPRAXKxNk+8AoIo/lbPp3eUz5AzSN7roYWe+UIh2q9l8+PynGsKtzv5qVPV8R0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781822194; c=relaxed/simple;
	bh=PN2r8vAB0bxA4nuhizM4JA5TJTPfP/BH969pesWthvU=;
	h=To:Subject:From:Message-Id:Date; b=UGggHLtAbIsJcToz/sabb4puasN81IfsZKr5dxd/EFJha05IYC0Ty5K8IeDD6ea6HzSapeSkV+ZpC0J4xI5MD6ggxXfeB4p4ws5RGdr3gKbPn7MOvkOoAEnCLFJ4mNqjQNs/eTxO834IApUB3iNLhM8AxvGgs0XTGjthmd/M4gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DuPAtIWc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DuPAtIWc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE7FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781822193;
	bh=PN2r8vAB0bxA4nuhizM4JA5TJTPfP/BH969pesWthvU=;
	h=To:Subject:From:Date:From;
	b=DuPAtIWcu3KpvpUNwDtRLh2+kquEaZXOu+YWtrQn7yL6NfOTB38Sd+X7mqLNI21YE
	 8E4UqH12s1klTi7dOm84GtJKmzNOmIEEEG7EUPEZw3slHV8AWPRRl1I/nV8lyIB8+D
	 99Pom8ZCj9pj+c3wm2iJAECaHpmUt/KdSNTf39l0RR9PHlrlBsDB8OvrGIJxysz+yW
	 Ja2cpJ/RUUnknFxs1UMIqjqGqUM0/9FmI/Sd4h6u88+w6crui7A2+BgN7E1R02SWW4
	 /pt9pSBZ+LyKLMH45w/2Ty2kfpXQBptFy8mYRrrs/GyBacIsfsFfZ7KztcbJuC21F7
	 mzUV6EOA21VPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE6ECD98F0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 22:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178182219368.22384.5073185683984884225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3aa2a7624d369391dbfb769f05b77077ef31b88b6b4685142a98fb772379ec9
Date: Thu, 18 Jun 2026 22:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781822193
