Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE9A168DA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717931243; cv=none; b=saObnNh/oFr8LYOTJka4hGlNNRLKcpxNhY6szps54S+/r8o+Ku98JklTENCl5dUIJrCoVdZKqtRy7o7n63w6/Fsln6heo5bcXVLk+6KvOfZecD96dSCQLTOm0TqlTH6Kx2rGN4JNka8YNtRmtnMtj8+SQFSB59a/UCtA3gH149o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717931243; c=relaxed/simple;
	bh=Na8iaFdQpARUndw9G1htvyof4ryWWZn9qTgeytw3GLQ=;
	h=To:Subject:From:Message-Id:Date; b=PVaAImKlcnOa2gl/RKh3j/MXSyO+pv5cQ5kXDOZHmUH3Pktqqmfja1Uh5mT3KqQtXKwAMlq1mbhF4GVvWkdSZjxlioXfMOtVQ2kCKMc3+4877Evr3ibQfIB2xqXbwMTEBb8aohEGmBQ9IfFxXcO9GnoIVgVhENBsgDM7zkrHRik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=irh57IjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="irh57IjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DED4AC2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717931242;
	bh=Na8iaFdQpARUndw9G1htvyof4ryWWZn9qTgeytw3GLQ=;
	h=To:Subject:From:Date:From;
	b=irh57IjZr1N7tgyqBJNN6gbgymrrvlPOFitEUfrx/w+WOwrCv/1nop84pjIyxkM9B
	 kpySGyGskbeYBhCiC1x5fOc2KFRImCSxRvXfN9bzJNAVF770yhYW8k1jsShliDvgJ+
	 wwfyfbSkK7IA0Ed1IlkkBYCdyI9wrIEUoLIAsWTM/kFGGy4TB6gs9ZvJpkVMPSjAUy
	 uweCK5PNkhjAPi7ky8POE8p+jp+bgXD8qXoUYNCYgMOXfSqov0GIuLqBj++JAu37We
	 Gnkv9jb/Q6QvNNK8fg0e5aU2K+WLPnO1RO5YsWYQO5Zl8jNbCXKY6bC2YRftXanEnU
	 igeZk8WA4nrTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5F9EC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 11:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171793124279.15887.11467495391916417640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 048d948a84b1c2ba1d1a65cee5746e6ce35b10090a6d9e342620b52a715376ad
Date: Sun, 09 Jun 2024 11:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717931242
