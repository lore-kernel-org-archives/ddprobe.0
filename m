Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DB201C5F27
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770039834; cv=none; b=iN0CJD3gBS6bih2xIfyCaqnOBJ6q2WTDKpMy3emDlpIcKvg7294fmA9YU472kR4LLM8ntyL1mJVTAwU5j5PDncJ3nkjpN2cRYzqTrSppG+eLIWKBVEn2t18DDiy7mPxIQLaVnucdShLobD/5ulBUMB0IVLxQikW4/bXyO9ef2XY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770039834; c=relaxed/simple;
	bh=5PsKQdlg4jFWYh5/D7SiUCO3RUdG1GKCPDaZwYay6r4=;
	h=To:Subject:From:Message-Id:Date; b=FZ/Mvl4N6Llfr3sJF47QDP1wkmnMtMuxdxZzLBxWW7aP35fDGyNVucd5ZQHsUo85dTSIpOtuJi2w+3nJNWRdJ4pBgQov9WWr24dLvZ0ZTiokOQ8aAUrbba2iGWWxVRRrvVfTSnEOEGTR5Awf+G3B6+brcXmVYoNMFibET2e82ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sk38wHOA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sk38wHOA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FBC19421
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770039833;
	bh=5PsKQdlg4jFWYh5/D7SiUCO3RUdG1GKCPDaZwYay6r4=;
	h=To:Subject:From:Date:From;
	b=Sk38wHOA0tc3B/ZAqVu45RRPLLPgaupUV797rAxKuZUErQDeppeYiRUtfZ3/isq1E
	 rgtJEUG+SDNMm74gHIzYePxbpTtCM+IfWUVSECJxUMbdXEafiy1yhRsomDmkEh7T/g
	 dg0LjGhPJtaWElqj+6/uL1IIA87h8H4CsFiEQzr71wmkDGEYgZm63E3NVbxLP6nUzr
	 E418j95S9+Ml8g8e6eOoFnoe5oB3mIE/Q/799uOtLYBlmfJy4V7g5Fa1ICtoLw/HGm
	 rQCyBc0ebYtzrV0TJlr523E+rTu0uVJB1yTJR181ZucUZisfD5JgtgF3jDTP8u0wyd
	 EFhlWR2cSVmrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BF5E7316F
	for <ddprobe@lists.linux.dev>; Mon,  2 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177003983360.14267.10103537093056967921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14bc817497c5ea785c608e571b0bb2c9cf5e7925a9a88efe4613c5315dec8cbb
Date: Mon, 02 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770039833
