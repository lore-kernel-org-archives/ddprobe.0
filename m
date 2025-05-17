Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 338101E3DFD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747525194; cv=none; b=DHd5gtlzUaBg/pWvchevnmqisSJtsxYVsW54K4BA5CrJ+f/n3zhzWmK5KvdspZdlNiDbLKIHsuenwWCNVPNbd/Ud+o8VvjnHT9MRWE7ofj0a/1oU0SZsIwenmuwF9BjsrNIh/auG41sqmeex6HY6BKMpZSIefYmmqAxav4QxLvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747525194; c=relaxed/simple;
	bh=ki1CrvyX20SZs6jFQECaA+Y3HoZntM3phIgFcjGk7O4=;
	h=To:Subject:From:Message-Id:Date; b=I71kgIzL3S26Vh4Zog3GHk1cwxFcwBQtRmEI135RfXYID//ql7ATCDkBCvXa9mDm5BW5IbasR/PVLePT59Hkqo5aJueSe35R0qKnYxtURCLAH1YQLM70NisN+LMOm4R2yFBB2Ve+iiYbjL88Md+SneLa9J+xLyPVhFz37C1KakE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOvQVHoe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOvQVHoe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5570C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747525193;
	bh=ki1CrvyX20SZs6jFQECaA+Y3HoZntM3phIgFcjGk7O4=;
	h=To:Subject:From:Date:From;
	b=rOvQVHoe6DliqKLus8Do3FPTUzrA56qycZZ488dO7z3+Q/xPkZdbRrAyMMnIjc2VY
	 ReQ1LTy0pEjAoNX2+eWtIh6ST6K1gpQjkW6oF0ISi9tt7toi8PUJvEIFzFqZm/frr8
	 wcFkCJGpXKIz62wujqSoNyqMJAXxVyA/x4/SfW9grcMzF7fx3DI3w+3EhcR00rt3+U
	 d1rCcSb0pREZ226Jw4of3xl0+c4KGDnohTHM4VzZDP1pzo8WPksszl4Al06iY7GQAz
	 s68yGa2UAXHTPCVa56XEldI2Jht+yg4MmueDgSGFD0Ii2bWBVJyvsBSer8qiOYY8/c
	 9aQmVVNd6+tjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951FFC2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752519357.6213.14959890040630981265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a1b41af87ab3635bbc97eb8e742745667ea9a68f6e3f44da7f4d49e8e156325
Date: Sat, 17 May 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747525193
