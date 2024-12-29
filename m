Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA6976C61
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735473354; cv=none; b=d+ftwmB77WGYjP1xCR5OaauALqa47h049VAb1drnIiS+5Es0geliGgf1t4Zz7ZnY/AYLRr3kT0cfcqoqCwx5kRHgppLN+xFz6QLY9BtYeFKn/GK0o+/rCz6Z1Yp6ZJTjoVwr8fweCNIzrBzOyhtzty5rYrXuO5xlGSlMH/fMlGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735473354; c=relaxed/simple;
	bh=see5cCCcLIZOAM6DdMZKkgzHHefzuguJCm5GtDrUAzk=;
	h=To:Subject:From:Message-Id:Date; b=ACh5alBqjaJyEdkvDTKpFqDdvOtkD2ZECiNoMnbCH/dW+OyIenRYlaSSsSN8OZjRtud86EtYSXcprgYFzcgvOpomEBoVPfz4RpqI985nmMdvegCJCperwAAhc3U7Y78Hzs4WNfs+xy6D+IwhANbJ3tiYHU+Wtrnyvn8W9dzSfyw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1SXsnM4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1SXsnM4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A610FC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735473353;
	bh=see5cCCcLIZOAM6DdMZKkgzHHefzuguJCm5GtDrUAzk=;
	h=To:Subject:From:Date:From;
	b=D1SXsnM4c/AN4LRMuPTU+93S3VZoMceCR+vD4QjVEPvAfvZjeCT6ud4hoyiPZ1not
	 NrmGzwB48iFQ8Vj+wLobGl+CXbGgTgS/304IyLBi45tQjdGLgL4qG/8weHI2e0XhlP
	 jJxCt4Ob4duNkiHkyi1ET75WrGbmktEplcOTgJszJogwTrsc1ifULk2BJamtCr1tja
	 K/Ko6mBDWYgLn4hnglPBYeH3u5tB0XH1HjhuHbarfD2iauDfPliDuDo+eFUnIdSqXr
	 nLjPXAz98jaqgt/LA+fS+B+HXbcGLVaTVAP6/SP/V1XCV4/qbZyKxSyzHf5v+dITRF
	 U3WCVDZBXwUQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A0FE7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 11:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173547335359.20919.9079441685315482433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66ebb684e55ec0ed21aafe64dd74d384087c9c60a3e9f81ef873004db79e164b
Date: Sun, 29 Dec 2024 11:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735473353
