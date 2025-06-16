Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C00E275844
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750067994; cv=none; b=TIEeL+SDXS7lgMYLk7g72EFIV/t4aQmWG8ar5IGdzsTbBRzdc9Hqim9rcMB3zBieMFFl+4WwCjokzVie+TlR4hcFQHpcTsgCwbV14qoCoZDGOcBwRg5bRZz07Fx39zqEYyce4QTtWGYRBtYnkb0FPaN88FcMdNfW7vXor/a085Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750067994; c=relaxed/simple;
	bh=n6b/yDKLpDkj4uuMIHGWyFrtXEawnspKbo+pBM9qiHI=;
	h=To:Subject:From:Message-Id:Date; b=eHH8TK8JdJ6fIySt8Kew+qw8miEOueJN7S0+FpCQPBxihOet6hCmQkHb8TMG1hcxesuHrxwfrVe8j1zBk78WLj3OYVtRL756fuqwBoR+C+DWhpPNszewDdZpzi0bZ9ybItXkzo21tiiD3hY4WjIB4yZNfz4cMRTVdZXP5/p39nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lrUGfIji; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lrUGfIji"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E6DEC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750067993;
	bh=n6b/yDKLpDkj4uuMIHGWyFrtXEawnspKbo+pBM9qiHI=;
	h=To:Subject:From:Date:From;
	b=lrUGfIjiJa8atLUsn4QmTHDJi1YqQrEq4tBBLlr/rpk/UYGYOdTtn3hiMhGCtmkBl
	 N4cLtkajap/xO44zg9umsCXDMwW8tK8EaS2HGVuVi4uf5M/1ofy+6bUNPAA/hdvMxi
	 Kwhafvs2173UtW1V5nwj1JEOrT+XOzCbmNKeZJJswvml3ck9SDwpDXrD/rVPxn5dhj
	 UL+KoHnjWLFLyighqYd6ojg/AY8x1OcmynhbvNiEvj1e+4PP1pf1FlpcNKq8LUL3jY
	 LyeCmf/QE4hd3xrci5fwowVJ5wbNz9czgy1bplPz+yCGC/eVSqIkYHhON/bNsr/n/I
	 fECcqezGjrCrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA97C71135
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175006799357.32045.5094156756225333772.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7612567d2416f9b5bc9630bf12da3828730f4fb49897dce29b9ba14c2803fb91
Date: Mon, 16 Jun 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750067993
