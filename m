Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4EE4A00
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752401994; cv=none; b=Z2yu78OxNeoV+oB+0mXxbRAhqRgKbBU7CYOCdlaWEKRT+DWQShA0Ea11c+KHuoS9poXuC9M9rQ29iW3NTkZd1Yt6lXSuMxpR7r5Oa05jmME4mTewVNrvN7ytro+J67IJp/QKTsgDK4mZW4F9FKVowj3pDHCUpLdQdGHC5vxKL3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752401994; c=relaxed/simple;
	bh=r3jTYuRNf7O/53nxrINxn1PGzyUMxKuvFCCx6EDn27s=;
	h=To:Subject:From:Message-Id:Date; b=iy/0zFLyLD987vBXd5IucPjsgN8rkQyBs6koE2O17Br4eDnshUPK0hVRiH2iJ1ktgOoEb9tnBRQoe8B6VM6qgbfCxI7lccIOo4G+O3Jnr04qMBRjqC2ZUMqGNCUkmfLlw6oaOHBy5AShS3f5G+1jOB2h5u9jecJfKZ+O74dwNg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D/kiUY1n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D/kiUY1n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AA6C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752401993;
	bh=r3jTYuRNf7O/53nxrINxn1PGzyUMxKuvFCCx6EDn27s=;
	h=To:Subject:From:Date:From;
	b=D/kiUY1nTK1ezGrJ1Z6z5bme0XEottiajEG09CcxPuc28M2J0z/jvF5RA2slESLqn
	 ld7qBhx9CbJ43WvUXucc4uEVrSNvT4bQfC35S1xdJlIpBCIW8ZmUK5mIIfjldLwDvz
	 SV9MCpa2KlrrvG133vkVgVnGnvGB5+eBsCIUtQQnUt8tl4RuSFwGg7V1RGLlcuPKUr
	 WDEkUzzZestVxrZ5S6lwDrBCnlv5Hs/JYCzaC5NYauhZhlWYdZNFoySGJR2A5ykT0B
	 7bRgW/tHPVeJTtM0FcOPLw6yoJS/eU+pYkKHWghCi/9TwlJhglZbr+2J6lLeNZOiYI
	 mmgrUpj2wgvPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91257C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240199357.26457.4548437532039989072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f633d087594192f58ee5f2c873c2b5c46d4850596e88f0fe8203b29e3be6f63
Date: Sun, 13 Jul 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752401993
