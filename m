Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F270266582
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761514194; cv=none; b=YkukP1q9yeHbQOYRsyXXH0x0c3uM/05KCmypxzpApOxdNHNl6DRcr0WNf0/A/nQCUvZ8TSZEfHG7yt6QKyhZ8P8wfigY2vMu+/2YOlpc6f4+NbiS0hB1Yfzk9H4Iii4OLoDUki2jfVqfHQyIsCabbB52GNbUVY8niM+nlfBUyAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761514194; c=relaxed/simple;
	bh=8Pgjgc9Ine4GS9rJnInSlTyXFTPjrVXa+43zjk+ziXs=;
	h=To:Subject:From:Message-Id:Date; b=nV9UuwKea6lhvIRGCCSgskcgE6saAJNedG5poLka+U7BS+pm53xO4x/B+E9xjB0MXETn/K2Wsz8YHkxYPJtLmNLed+aTLC1Tf7Os1o24m/6k6jETsBE8/BPhDft1IpuKyEjYaY0RRRskZJfV4QIcKP+75nrhk5PsB/sX3C/7GKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e4q5eGLS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e4q5eGLS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB475C113D0
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761514193;
	bh=8Pgjgc9Ine4GS9rJnInSlTyXFTPjrVXa+43zjk+ziXs=;
	h=To:Subject:From:Date:From;
	b=e4q5eGLSawfn4H/xvhHIlxHvo1ReMyT28AR3J87FsGt1JIFjH9UWsnnC4lZGGE1G2
	 I+7PY9CHUBy7vjKHYD/WCemP+s1XoL8DsCHpzCPeV6Z/AfhXlcodpbMO4e4bfF0Trm
	 Pp3dUCpTLruib2VuFB2mzWoLeCMEB6qg0gqcy4rYD/XE7Ls+np2wxiklCNRkZ1F+B9
	 9gNIzv8sqF/9LLib0myCiAuUvBs3dih/lo+swrnDxBOgmNhQIjxDZH0Cy38dC0hLV4
	 ZK9PvVtV4JvOv8JMpvRn3tp/erBEF8QGFm2g7hJN1SlKyZybpapUl/q/AhW8SdAkqI
	 RQm4ykUvdKO+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98161CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176151419358.8769.17396844717006991563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5341eff2fb3fa27ae1850bce8131052d589b6394c9a2c5976b120076de7add0c
Date: Sun, 26 Oct 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761514193
