Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52A654A3D
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719208343; cv=none; b=lLOlnWY1OqBA3o2trhrnLXBl3aWa36Vb3dw/mjuKt97vCA6hB/9N3wJUJmk8RZvwPXp0VPN5IDqV3Z5MpnzKND+DVxgtWri+JWkDxWDaCriZa2JKB/UiY2v9OkETCTYbGqnlmyBtXVrfMMdcdmrNf4G/lBjCGzZxMN+xvWcV9S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719208343; c=relaxed/simple;
	bh=1c9CFaoi6p7elyfCTN5hxo/Jv3AcCbR/Q21Ux01Df8Y=;
	h=To:Subject:From:Message-Id:Date; b=VS/P4nFJ8avPwokwrzSwE5p9q/Y3txCOX8URR5839a9Oem7TWBHe39acz/i3xp+kJ/HA+evfiPFFHymmeZYkvo2d0Datou/wrlPV943QXq6QIw0/yEAoj7lfbNlOH2Lc7u3/lBiPcuuo4i+V76+xg9txjEJjWaI+avtmsUMrI8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzavNtEP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzavNtEP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D51C7C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719208342;
	bh=1c9CFaoi6p7elyfCTN5hxo/Jv3AcCbR/Q21Ux01Df8Y=;
	h=To:Subject:From:Date:From;
	b=jzavNtEPhWNXIxNfqpC96giM+LBykGCW8l9pMjQ9sJN1jVeWHYxtvRzuCWrbCYIUg
	 0T2/ohY+Swenyqp8y5PJt2blAOsotP9Z+8JIdXB8oiMCcLSXBCavcGTcItxY5V9oYE
	 lrR5eLhdCNMgvxDNwBt9ytjEkQyf1jSDDmQq4SvXmedaelXdz1p7jQTgsL+mHMRGCl
	 By66xS7emkPd4eXvwl23jPE92Sh8F+EGXI+IVVZT9gt+Ga689NyOucutc+y/mwt9+S
	 YfJI2DOpBv4cmBeOUH+v0DqiViPKK3jxTbVItaoNCx1AGA9DH1Xq96MDJisJaIrn8l
	 nm+IqfWHeM2Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEE9CC2BD05
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 05:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171920834277.20863.14377049429106785069.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b90d1f2d19c59ae3cba297c67c675cf75f33c5970f0c4d113be766e9909bff2
Date: Mon, 24 Jun 2024 05:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719208342
