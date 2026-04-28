Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AD1032AADE
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777388254; cv=none; b=SsxBCGD1C2EygB886FT4MzZdHWrPYzI7OXNC91TRxhRaKeeVCi0hl+HURdCam/q6tz0JtjLW0zh2PenB5TPic4hzbIK933YrUICK9sjKwEHMOtLdBZa2D3L3GstWNhUDinfnrKXC0lDYQqOq0K0PNZn+zLW6F2qNi3gln3FWTv8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777388254; c=relaxed/simple;
	bh=pwMgSa52r7OgbEOcbQV8/p6qOT1hjH2wleIkvWjx6QA=;
	h=To:Subject:From:Message-Id:Date; b=AT4727APLrXVxqszQGgCcHAkb6SHymC7hjyn+xbyVdCql0TMzUmSBFiECsOqfrTJlLSQldt9JU+kVEeRObhVBuGuiWDL5M0x1R/kiFNgKCWdQV/PVTGCATeSD2pMAvT5BWhu8UvnWCbMCkAKCqtM1roXVXh5x+wQ3RHeCsj1Zyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9MlfpaO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B9MlfpaO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B736EC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777388253;
	bh=pwMgSa52r7OgbEOcbQV8/p6qOT1hjH2wleIkvWjx6QA=;
	h=To:Subject:From:Date:From;
	b=B9MlfpaOFzBPp2Hh6Ck5mmwf6FbW9hFJ6pl91SGsC21DKCMjU1IJ9CPtkwzAzEdX3
	 mSxSOzbJqlSgf5wiiqLmnLWWhSUZrN849NhWpKcwEPyXQnJqqEasTWrmOqKKfcaMgg
	 ob1OkQgTGoA5EQbSLme0IzsFIhXUmghVyyzmjTn3c49QvUGEIXYBO+u9vvIaqndLEQ
	 kLuv3BDk9DpZHl/LiL5xBSVeKu1sFw94z/imDVePazM4T+RtywlJLkBznDkC6apZaF
	 WOGPvdqkAPGSwAWKT0wH9W/Rf0Etd7FxP9nt92MpPs6tgdq/jraa5EEFzu1MVjGNLe
	 oYScT4LBGg3zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9035FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177738825368.19518.1440249797437658764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15ee1aac6fdcab139d01150c772ac38b2d46b5f004e6a9e8f3ecddda2fa4e49c
Date: Tue, 28 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777388253
