Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 632A42EEE60
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792022434; cv=none; b=NQTP29hQiHNO+VLM5QIIO+Qib8Rm8Sh1QJ8/21S5dLq0BPMTB+vi3sOxP1ckMvCqUkyt9+cP2D8J19CFgJ8mWJd3kh2zfuvdvqmQJxKuqTQD02zBxhlw13gpgxninZm7USN5CK/6n0D+ORCPC8eREzYcYd2zX0rqRu2pEhI9MKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792022434; c=relaxed/simple;
	bh=MpkjpRs0ogwC+DtlsSd1SM1kXko+Z3oC9V2UYH1+gnE=;
	h=To:Subject:From:Message-Id:Date; b=RXWguGcMRxlOKDQDflT3H5xknjpX6JrQbXPnzi5tGtjOljMGD/zcNHKzfq0QXFtAFgB2Jp61GZvEqrxpMbZM6BmIUfYYYYGjLMiYjSir/uj/hbdDzdGFc26T/iIKEJtDajY9I2VeTFMveIP5fLrNOJ7P/CmPvCd5EsfZgTfAxlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mei2MCmW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mei2MCmW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D69D0C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792022433;
	bh=MpkjpRs0ogwC+DtlsSd1SM1kXko+Z3oC9V2UYH1+gnE=;
	h=To:Subject:From:Date:From;
	b=mei2MCmWIilLhkp7nj65oUWioLXWI3OuRg6P1NDSGugk/radRRchWX5hGeIhdfWdX
	 vqadTmyDsW6Qe+cxvOS5v0gnUm6FAw3CezgcrFVvMq9rI64+dxku9gGWnhWOn6I5W1
	 OGzw4A4munSPiwmvYol41z372kLB0P304+/R5zsixpVo6WKPLqvmNqEpxJwzt1V9jb
	 KO47ypYmtA0/LknOnJdUDsb90twn4zk7TpNApSBwbUtTV31b/fwwGGhrkZBlSHNU/n
	 1o7w1AY/L0lqKgnwmop8Eee2X0a7fHeJH7V0Yhp/FTKBaYYygT+y12B79XuzdyosAt
	 k4FoK2uKtuthw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0B66CC6B2D
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179202243371.10426.2236651688281896220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b53d0e3f713a8ffb0457c88c08c36104566f9836529cfe44e2d8a4ba50436214
Date: Thu, 15 Oct 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792022433
