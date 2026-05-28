Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C92305678
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779962554; cv=none; b=L/gWQs2kAMnZP+0uQTS5xh+ur4TS/r8ZUwvAWQ6J7c/XfFn8YIycImnR6i+TnPBHHHoiGmWUenvkEEW7p/ANbJxD06q5uRgMl2GnohJNdkivmlIky7rmlmXRKj6CHqzvQ1ZzCtwi6pAetFsOowZwTE/vFyLi5wgcHkUt96bKG4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779962554; c=relaxed/simple;
	bh=jtO/Xi/N0SOJg4dkvFb0a0dI9nHmunFbSObdzsuqVuI=;
	h=To:Subject:From:Message-Id:Date; b=rogJJ/l0NxHKBwF2bYtZMPIENB4sMs1Dpo+dWg060XOICU02yOPNhrgDuHwuvAqAyQmYYtONt94xLa9ObfruVDYNi9yFYb+KhbEDEpdghQmogAuVNYmtJn2CaBbCWq53/AuCyLj4gKL/ZpxzFMODkrwn/nIJQqJtl9qyMlmqehY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FCUTyBXx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FCUTyBXx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE9D4C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779962553;
	bh=jtO/Xi/N0SOJg4dkvFb0a0dI9nHmunFbSObdzsuqVuI=;
	h=To:Subject:From:Date:From;
	b=FCUTyBXxl0SvUI1mjUS9jkFbqZuuyVIxBpigmY0S5Q2GSR49oCHtUqLXyOKW0kHfJ
	 t7M7atj7ywUoU1FbHBWFex9IKsn3aGZJzEE6OrYYh1HsPoNMlN4v5aLzeqW04Qeas2
	 W4jsAsFoiUgXppwS+fqNpSVa52KxLfPGCeWOKcyJR11GH7VfizvJmR+DadePYvBZwY
	 qENXrr+JpS0Jq5AkTkRq7A2FvfBfq5ME7/jc3uXxPQuUau31QdpeSjmcI/g2k6YZNs
	 AZWgekk7HCykXZjNbSL5jxlUh1ppI89p7XyrE93LIFOBfiNbhv49CzlOmEJ1MkHknl
	 Qp15SMp+2IcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFED3CD5BD1
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 10:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177996255368.15312.13991595512172823251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d03e81ed293c0668bbea0dc24737a5d621acf1d5cbfb49fee151be2e062c53c2
Date: Thu, 28 May 2026 10:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779962553
