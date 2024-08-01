Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D7C71B32AF
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722471954; cv=none; b=qgqWBFw0CNF0m1AaSZFBh0F2yY145EkgxdBZ3ukPmc3W7hqzQHBZdghB4lw92Gw2RLNP3ekq+oxDfHQMh9Xq5enLG0w+oh6nWuf+SF5Dng8ff3soV2m6oQOET6rpNUy6e7F63oetpNpL/uQ3Hl6vsDcuxEXNPQd03gAp0ElqVuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722471954; c=relaxed/simple;
	bh=Fby1sMuxf32a0IHdySbzzUyRPQ+HTNhQePeyJPXK4qs=;
	h=To:Subject:From:Message-Id:Date; b=nxEbVlYAyHKimhjJnzBw9N09ZllhCuOnwitsuuABRy8tZUZCz5Fw0+nnzeJOcQZNHAyNGqJsHdAiecNw44WF1IFIlkXnVfiF+vXafXjlg2T18AhMqfDNaKv5c0BodBCgXL5stzE7b3DgvsKutwY4C3ej/QrwIkB4Rq8p4B727Ro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dGA1Xwf1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dGA1Xwf1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD089C116B1
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722471953;
	bh=Fby1sMuxf32a0IHdySbzzUyRPQ+HTNhQePeyJPXK4qs=;
	h=To:Subject:From:Date:From;
	b=dGA1Xwf1UrSNeDWKYQ3YziShPriFJhei3okXuoCRHaHDgLZYIjRWCxmYVWHPikeXF
	 xky4AI5aZvOcBUAoJHgAuHV8jTwJy6xhMpc9jtW10hUBA1mmd3yzFnuS2R8G/PXzMG
	 t9hTdcCJO82dZGSiaVwvwqCJZEOd1QiVFoNXi8/BtP6zSTdB2Qzv9qE8hSvd4UKEou
	 Zm8Hh7zqknzUbuuvBENBi5KwzgrJ+5CONQ4Dm1wuSturLzagtRHw1EFAkNIJ4ZPa8B
	 PX1velC7jr7FyZfQ6MCSL0ow9J1i70GENWDtsTMDtxJg1qqffvTBP3+BKLITvmiJC+
	 cjHr/3v15SasQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E20C52D1D
	for <ddprobe@lists.linux.dev>; Thu,  1 Aug 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172247195360.10497.10958397786425144564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d71dd130a0ef69d6ddce1fdbe1b9e3ca8659c364e9f1cb429cf498714299907
Date: Thu, 01 Aug 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722471953
