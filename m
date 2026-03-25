Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E40E35FF66
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774425294; cv=none; b=aEeKxkMSJOBovDiJ4Hht/EtpvjiE3q5afZhLZpnP1ofefDPcVsPCVBAEGel1XVtWZ+C8Ny57isbUGVX7A1eV5G8+oBIrQ6w7DKj/4WhzisuyicZGez6Er/sz4Goryv4KDM1+Kdumy88zFhjyrhA7OlFYfaXq4rMaHA6h8cx3pQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774425294; c=relaxed/simple;
	bh=Xo36gfKtXr80DhnbbmcCSPz+/TuSyUN/1F1B61P/dts=;
	h=To:Subject:From:Message-Id:Date; b=UVh9TEkEMy3Nh+MD9Xh1srmgAsPIuvwmbV1ka7T+8pcFIheOdq2p6A5tJhovgd9qN2bBU3bcOZ2FPw8KjCPqrE8jZVMl9U6Za9OuBjWJPW/MNnFhX5FpYKCyWshCwSLeE5r7oH4bLmGlL+rixdG0QZwAB7r0P0IuT03zm9PnBQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hP8J8uty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hP8J8uty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DEAC2BC9E
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774425293;
	bh=Xo36gfKtXr80DhnbbmcCSPz+/TuSyUN/1F1B61P/dts=;
	h=To:Subject:From:Date:From;
	b=hP8J8utyec2NynTH5X0jM4o6HX7OkOHNXvyuPR5lNwydQ+TaYi5zyhCJUUdqaWNbt
	 YTRHFT2wUCVyrHi5NrH6vqLDoJLobC/ZRV8PuElx7n+GCZR1ltusVL+dDhqWM9ygRM
	 OzJ6iTNPtNliada/oxkh6VqyvryyzvEQoySQr8buTtSpXokZL3kC4WmNCet/3Y97Bd
	 m9BZmYjLImmBmdlPzDxuO3dnqXWdYWoeRcz/B2i1KY3HN5s5LhXp0cbPE8vbpQ7pga
	 1pbb1h5jBpcMND5/INiT6BTfTpUiCLyvIencmAqKZ9LjCgAlpoOd9vtBu2VUWYt6U5
	 RSDwr5mtGBtWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92347FEA82F
	for <ddprobe@lists.linux.dev>; Wed, 25 Mar 2026 07:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177442529359.1909.8075880103314204127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ad9912d75f34ac77713b5841e71950c6778eb6be0907046ab1988e37e77908
Date: Wed, 25 Mar 2026 07:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774425293
