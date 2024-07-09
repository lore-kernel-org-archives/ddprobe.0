Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46DCE1DA303
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720509983; cv=none; b=MVrO/g48rBgkA95d2FXpEVjm9vJs2FS4fjinELmWqClic3zg+muphlHvPBFProT0JmexRqFjV48x43NZ2PgIJJWtG5Le6C2Mp0BVi6Jav1zC/WSFUcqHDNmfI/hU2Yweo3TSHX/n2jZ8q9NW1uzMHchT/hM0Bqf8jf9aGlFmtWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720509983; c=relaxed/simple;
	bh=rRBfQMCzaED0flHNIy5IOelPkVPjQWJe+X2spBJakso=;
	h=To:Subject:From:Message-Id:Date; b=ujl1oDhxOSNL9lbFyJeiG0SNbiYQDb2qsH5q+9xqLWmZrFJrPdu7VMqhz4R46k0c0QVg5kMXyYKenB9p5deIXsKm0o9XA6Xy1ioUsjWAz0qoQpHoK+ceIEE0mbM6TQ1HTqd+9W84+qiW2hNK5EfNWKNm3/w0DI4DIDwtGXA6i/g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGo7vX1O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGo7vX1O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2D3C3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720509982;
	bh=rRBfQMCzaED0flHNIy5IOelPkVPjQWJe+X2spBJakso=;
	h=To:Subject:From:Date:From;
	b=jGo7vX1ODoGWPki69KXouv9nRc1EUoXmk7YNVfb4VZtd2gYWt4b93M3EzvMzD/lIk
	 bowe7jgmed7+/ZAEIp+uMwsRv5KG6gpHDaOK0P4SN1l9d7bg/zLMGSu+P83bOMq+Xt
	 HzE8OoVp0PdQDPpK2OVjPw+MGkBxAeMtkdMj9ZKAAcyoezlyXG4XKTUjr5lCnBFW99
	 hwEJBoZoKudFIXaWC4LS4aXGzCfau0xg6chfJ4HuEAY2wSZqsmKYDoEywxfuPMERji
	 0Y9gI3mRChs8iRsDUifZ0GoHdb3sTFMd/BaTXJDe73jlD5ap7E8Et1EQ2HUlWpqCX+
	 ut+WXYww+uL3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9890C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 07:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172050998279.26361.10604438176476299601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48bfb1dd5dd0e823d4d990061f09d79c9e028c291b49c40f7c399858b5ccaa6e
Date: Tue, 09 Jul 2024 07:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720509982
