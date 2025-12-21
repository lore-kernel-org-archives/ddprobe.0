Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34767800
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766355834; cv=none; b=Rik4BldO46MWljodUq0cdUz6BNAzvWpRmbWVNA1JfA+SXHF0W0nujDn9NrIYso7LiABiK3hEPHd5UD1oYMycrIZpn/7aO+ae4e2eN0AawOgrLa0j0pVpTE8aBUuy53a9i16FSt37Zn/xea67sJ7tZRnQpqrrPXomlItazrbbq5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766355834; c=relaxed/simple;
	bh=NNaDf38I3D/JrFaCeFozEIpSgtQWlAX7PxHhrsairg0=;
	h=To:Subject:From:Message-Id:Date; b=WonIeOcW8FecttfDhzjuI3pyoOD32ktuWM1gcxKtJYepUDEKTJ1CNorOaKHomGgBZUnLmyqrvF34Np5oGI7AiTAl7dprJU/iDl9/vsiK/6wN7gdIdGL9d3nYtnT6F+Y2nu0rR46sNgh7sM1fmohIIgcsV4Sx/m+OgcIqVWHuE+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H8feeq6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H8feeq6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E7EC116C6
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766355833;
	bh=NNaDf38I3D/JrFaCeFozEIpSgtQWlAX7PxHhrsairg0=;
	h=To:Subject:From:Date:From;
	b=H8feeq6PGZXNwELEOmHw7QWDht6LiJ1HmcRuIJxsi+eZkf3gKSjE0+fKq9fe/OCQj
	 ZQFs07hxanvWDvKGszSzHHC8VVFw8/u7GMJSye67TGxSGokkhM5uJiFKpZ4URm5o/a
	 edev+i9KNjyzswih7FSdk3dfU2qqiU3uFYf3s69kNzPDIHSgjHN++pPljuJwwqMh15
	 rZ02LZ7lwoCAz65KEeXDpI4IqZRoMrbmum3pCk7OFr5jyOq/C2iML0P6WUA7lIr6Bu
	 5w/25daxIXsNU6eFPE4sjEcxlZslmAZpjWoSgAlsbree2xK09hSgVf23pj+kzKjhw6
	 2Xg5STnad25Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AEAE66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 22:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635583359.9780.10649316497927733425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0de838a384735edbd12d2ba5c6ea56a53d04d38c059afce03c9c75edc1ec7a
Date: Sun, 21 Dec 2025 22:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766355833
