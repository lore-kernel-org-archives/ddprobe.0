Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 866733E1CED
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:42:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779795754; cv=none; b=cOdFU/lzxEVyStJ2W27tY51XBnBAEVwCdt/DL6sHCjzqCzhVn5wsFcxh5fhkJYvnc9s1Gfsgeywn0gGSOzNbxxe89c7h4ER92fPZFazBmd+Swf2u3gENoqw+4smf3ShO+N62Y7aXauCYyUoQgSFPm20iN51Ps78yI42z/NIfDbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779795754; c=relaxed/simple;
	bh=dmmUpFnVE0komTJloIyVfn4Vj24d0o9NS2qG0cYhhrk=;
	h=To:Subject:From:Message-Id:Date; b=utMSOYO/lEpi8ysUoo5kLsgWQY0lUMG2BL1ATy9Vu1nB3aFFSXgSdaaAFLBMPEUZgHFoeizMfWbpeAXf3D95TU98uHtBHX+6bcs+zPBvXXVoNM3jGHoVdlMhywSbgLDRFzcUxFy4jtAFQEH9GSKMdzXfwHwcxTe3NnmHEsKf30s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewDNQmch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewDNQmch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F7AC2BCC6
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779795753;
	bh=dmmUpFnVE0komTJloIyVfn4Vj24d0o9NS2qG0cYhhrk=;
	h=To:Subject:From:Date:From;
	b=ewDNQmchLOyJXS942lKJG/g7VBvs90tFcGmWj3Zgpbn+dhOUxLLvDVBZZ8/mCgver
	 fqrScHP1YCshuzz++3SnUVsCBgkl0eUD4fpkcJemnIEho8WTNDEHRX/QMunTyBR2VV
	 gqLKriUWGezb/ZcOGSUvPFvpfgMATWvP9eDsy40ap7hbiMsMwQXHTmcs3/7ZgYLWX3
	 xP8Gfmy27DibiTyfafQ2185pTuG7tDsA/Y2Xbixse+yNgWz88J0NDeviLBFx7ejBrQ
	 pUQ1KLjOpo/hsljYGbl9/s8TDROC4X/RQUvEXn3/rCaZ613yyaoyb9VF0Mzszgo1wN
	 ioZrhSwnq2SiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8B5CCD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 11:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177979575368.5675.4540190231647943520.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb64c29b4f549cfc2861834ca1d32bb26e1235b39519f88db36895cf50cfd4bf
Date: Tue, 26 May 2026 11:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779795753
