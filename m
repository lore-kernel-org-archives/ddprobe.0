Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 424137260F
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780964074; cv=none; b=sYI8pHa70vsLeOwt73bzcmcNCOpCQEUXIHlf0hojO3X+GPlgGqRy45dIX8UaPLxgb4ZvzZUrtwn8B4HZjjqfjRug6W8o0Tm61Ws+ajAeHxEOvSXUHYdLxvosELFTxAuEqzZ7Z2bCZqWkHb0Pi8pG2e46+OlWtrd5vMo2EP7RAUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780964074; c=relaxed/simple;
	bh=lSkq4FzbVSDf8ck+PlJj64zcbhxD8HTx3oQCesf9wcA=;
	h=To:Subject:From:Message-Id:Date; b=XCWwufnXJ4Ydehyi0nCByueH+qWV/hQQWJuYQsQutpimbLL6fSdEQe5TFVoFef37DA3PhCT4FfURvWPouqW++ofGaJJLzmMLeLfOcL2zSz/ruzAyV4WP4KEtW6O9BhCbONoDVhTIbRMNKv3eGHx5SZ19Og0w8S0RgergPNS+pxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k10EPOeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k10EPOeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF94C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780964073;
	bh=lSkq4FzbVSDf8ck+PlJj64zcbhxD8HTx3oQCesf9wcA=;
	h=To:Subject:From:Date:From;
	b=k10EPOeAqT2zik3Auwy8CLiIqX5zLfGJA950EmTdk0P82EMDhkQ488OHaf1ijuiiX
	 IQNRAQMAJOKUei3pLTIimU+GbqfIP1PZKNruhiJwgXXMaJVjoYP469fz3RJ9/eEwJz
	 DzN42xxO9fxjbtgmVMW0RJzXz9QWYHXxxNlokntpcMHEMDVyAZ+dcZ+n1KtU7UPS0w
	 /R7T2dP5fVIoLdVHdt0F9f9YY3XuFJAU/m2kZZdyNbTkNAGabWww/7c+/RO/IAkIgp
	 2HSxyXUMfX3evfe3SgS08/xUD84R6ONGWM7BSPuTIZZhdzPNJoG2G1dhL/zDJFp8eI
	 yT5Xcabwga59Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE846CD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 00:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178096407369.10839.18058045943046426980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62538c6b3136426decdd41401d60b3a0a1d83c86af842614abb4e1ce508a486
Date: Tue, 09 Jun 2026 00:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780964073
