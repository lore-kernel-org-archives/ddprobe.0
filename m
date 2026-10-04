Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9BD50313E36
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791095434; cv=none; b=R99r6RXHjZO3iaZW39R6tnVhFKtaep8upsW+0IGs4x0bWL59QnAVYMqZORkcwt/gbYy2ONrBuukAMzcBQLnN1Kb3wVHShRRbWp/rfwXtphzK9ol+/e28mMOIcSa6GBJzfX/Wc/lgZytifxq15XNVX64LiXytHakFgtTJNF+ULKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791095434; c=relaxed/simple;
	bh=VhC6gArad+MHsNjQ+jus5uT2gc99NYrlDrkpZtbgVgA=;
	h=To:Subject:From:Message-Id:Date; b=QaMCmHTLapfi6XSsO6taF7N0/kAvtpHvQY18Eq48h67wWDNnhifwR5qlo2TpI0a7GaYt2lMBkMQaRkR9OLn6SaIlujihcHg5+zj+k0KyJHUlbiCagIxvN6nSpQHqXb19PVUEXHp49CUs6ZXfujNAy4OBIkwgRrvOnk62Z1fjne0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qXdSAqq3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qXdSAqq3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70CCC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791095433;
	bh=VhC6gArad+MHsNjQ+jus5uT2gc99NYrlDrkpZtbgVgA=;
	h=To:Subject:From:Date:From;
	b=qXdSAqq3wx7ivAksVHVctr5GifhEMdDZhMPDIdulbnKVpaznt1J2BZEOjT30KXgZ2
	 5od1Q0+cRa083/GkS/xByNxJxmzIO2DvKKVi4trAA9fyhbLtbeKham1KYTM0cn3aK+
	 +oHdadkZD4eLRBuH+CAPPe5VWD0DthibAF3sN4xCT795ZakT7lbis3AbJxaYzA0z2G
	 QfTCIg0I/emt3DeGm2uxOQgOggn1Ki90NQyI5jnnvYxB1lZmQn10I0e6Y4zJiICIGR
	 MoDFk1lSxhCX98acFLNZYJGNGBsC7tXlf686kumKMpW6lTuIiaZhWGDu6PA1FBqHdY
	 n7W9CpcIm9seQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB3ECA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109543368.25184.3656109117260990135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70c6b3417ace83edac2095d0d53294701f94177e6252792f18a6c767553e43a3
Date: Sun, 04 Oct 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791095433
