Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330092AEFE
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733800554; cv=none; b=l6/KVjm2Tqv8jISWim90522EMK9af4TceKlcOG15y7PCMCNviki6MKP4ptucp6JsaMd/2EEiSnNlcYsZSwCzlPlFXczn9iAQ9ia4jQcf/563rXDxPf7uth5xtz778KqIFe4uEgLP1gbx9ykjCARrRXIELH4G0WgKwvO6FphV65k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733800554; c=relaxed/simple;
	bh=xvNwT+M9TauxlWhPXLdxXyh9TRmgJ1jtDEsJ0UUdwMg=;
	h=To:Subject:From:Message-Id:Date; b=TJA+aMmVfZV6Qaddjd3jl4SybK9i5q6twWq441kkSNPEQtIPUZwnxrUKG7LJvP6HYGLUDPDzgN0qBWE0kwxTCMjaRk4LxLvqjDzcW0h1wNOOruAZ4vKVuJ6/WueFeE88KDjF7pjvhIb+fykF75ejQnDE4Jpi4VfEkQFefJ5H4PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwbjRFa3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwbjRFa3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9994C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733800553;
	bh=xvNwT+M9TauxlWhPXLdxXyh9TRmgJ1jtDEsJ0UUdwMg=;
	h=To:Subject:From:Date:From;
	b=FwbjRFa3vX2sn70llT9YmnzKPiLfw2I4U8vZZmiL2cOnqh0SEZ45jBIzeLijCHtUk
	 AGbcdFUouVBTgBl6IL8YNozXVbjkDZNHA5pCuZQn+HoiirzhWpG6Y+tgnR2VwkKE+0
	 FmtrfFjC3kGPylBXMjv4BEySw3cIrPViA8vACnhYj2dUdmc2EPnUIjbzfm15bD+vSH
	 qUwJG2G96G1swpKRbXOXbje5y8/sAPjiDIGAqXDYCC67n6DBbPTSIsc38QNTdeLUY0
	 FFAxhBd+8XthnQgLxPE7Rn9TbqUZlGOmUshSXoGlSj+zWNYfxNLKU3AVZ5BFBuuXi4
	 0Rmst0k5SBmHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7406E77180
	for <ddprobe@lists.linux.dev>; Tue, 10 Dec 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173380055363.4781.7722443147673498527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af86be8ae4289ed875376d0592e9ef97c7dd96aae6658416aaa4d7af1dabbb83
Date: Tue, 10 Dec 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733800553
