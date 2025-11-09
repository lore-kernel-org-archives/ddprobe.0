Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FC6313A86C
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762677594; cv=none; b=Nuf6S3dJDy1Dcz1JdRQ20/8DN9CFbUqyb2FlmBQdnKzvW1KktVz3N12BKu+pwv9zs54NcPQZi+Kh50mqEkzU31OS8kewQreIEJW05pT3ECshyS71xGSczC14c+K8IY7eX67lufhUMDrQrhl2F8MXlurIYoftfwPF5yt+//kEN9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762677594; c=relaxed/simple;
	bh=HG4Z/gzXzbCTuY6wSLtfg7tx86qCyw8EhXs/MDTe/co=;
	h=To:Subject:From:Message-Id:Date; b=K2PwoOqx1680z/VYHgxWI+I/ggT0rovuD3Qr9nElF1Fi6c+NWPVVL5RZlv1Ot2Z5zaqxo0kJFamlweSiq8onU3g5cZ7rC2cwTs0T8I1OZ+p3r/vkdl6mJVxWlj1Q4zdHZ/IV+Vqvdaxfmb6XRAi0IjVnwkwpyPMeOzIkAxoFGlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=siHDXzjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="siHDXzjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DACAC4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762677593;
	bh=HG4Z/gzXzbCTuY6wSLtfg7tx86qCyw8EhXs/MDTe/co=;
	h=To:Subject:From:Date:From;
	b=siHDXzjXejZ/1V1pYzKvDUN8oosZ4jmGXosVX21+Ek5HRyKlPwYxADxF7goN2sSFJ
	 Y7tURKtxUaEpGZ39vXzQ8zqWscRPSGTnaZ1wS75zWV6uj50wSmt3pN/rdWuKXmKOtb
	 PptiPDfQTWRGN5avviKd48tpqhaGTSmMJWTBm5rxb1UZJhjR0zUE/ooxgFD446dwtd
	 DSpeb8lNOsZkV28YquFuIESx++6Sh8BEmMSD8PapYu+HF/WY9iwuxwI1p5tXqnczab
	 qR54YjXckjmBZ9JEz0eqFZiFchtCIPrH+jMSENsbD1T/BTHSt5UPu5NWW1SIh8BZue
	 cvEGZAQgZwsvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9262CCCFA13
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176267759358.1226.11626180007774705936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e3f7a3aa482f496c5a24b3b03ab7cace5186975c8e6c391d8241c6578bb976a
Date: Sun, 09 Nov 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762677593
