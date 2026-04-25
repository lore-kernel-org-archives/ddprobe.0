Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED54B2E040D
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777154854; cv=none; b=r0mr+FqVJj7JJHIMv51SbNDNbvbYXl6o+CwIAgn4G4gW9B6QaYWhhT+XhMauD9/9/cJPzmLtYqy+lTyuMkvb88moNbs77Ohsl1TQ6QCAgZv9kLRQabL2+Mtzzarl9uGlBxy8hqOgvEJ7b5GcDeO3hfot+EAbsPp+TosA5X7/3Iw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777154854; c=relaxed/simple;
	bh=fWAcl8a06xUnw9+QjEBjB57GLfh0hqiXRVD2GgVwYxs=;
	h=To:Subject:From:Message-Id:Date; b=oLtagtoopyNXiiZea2zm4Chsiopu9p4ghl/5Af5PyZQaxXVgsBBgIE0i3Kx5lxZOiu6MENgCh3pu//MI+VkTUUDmRg3Ta3yzas8mbKL8XZJTlyO5IoS4E3ItBUkK7yc43gmtfwdMFd54wSldqjR4cyNBwNTlcaV4/pqixDxlEIE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYPlcQAf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYPlcQAf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7097C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777154853;
	bh=fWAcl8a06xUnw9+QjEBjB57GLfh0hqiXRVD2GgVwYxs=;
	h=To:Subject:From:Date:From;
	b=jYPlcQAfZLxf+lTYgA42uoKf9EjHW9v3b7ocs2fOxi08srPURZxc9560zm15wsUEY
	 ayw1+BddOL0Alvgtm/BJ5mysRCKDDK2CaD168HgFLNo/ZtXfb735Ea4Xd8vQ//oV/h
	 Cb8iuHlSbSaYFCW6qGZKJh/zNRe9RPSRtgLluaT0vYHfx2X7HlYZNvP3/tbE1Mv8S1
	 NdU9yN2W7aHqqRNXAd9RgXt3OFNW0Kt/QR2Fr/5Xmrr8V/V8SG4qb6qZ0u670oxTdE
	 HCHz9qjS3zzGyP1QmeWP5y4bVBAjlxCVKtcmoLObbeCVrlpRhpyGvatYeJi39MB1F5
	 00vA1O/PiSxPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9403FF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 22:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177715485368.1309.9668538194298254874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50d33a359640f5c6fe64ebceccbb34ea7d8f16f6f4426e8d2643ede9cdbd6aec
Date: Sat, 25 Apr 2026 22:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777154853
