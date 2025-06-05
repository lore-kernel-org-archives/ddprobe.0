Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FA519D080
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749139194; cv=none; b=HJLI/2j7v1gmBx9OMMCsKAv4bWRLoookDHW9awqa7CIkiBAmnZFRALNLCZjJ/b64fIVWeOmd9VDqvS2tRzypXO0ZpnTXPskzEEAy1mt1KxPoyXdd9DIRg9fC91vbT9ksSzYGIYgqcampnVZrVTtFqHSnYQ8AghuWNj/LMcuXN/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749139194; c=relaxed/simple;
	bh=ZOZ1uqJh+l8baxl5GhSbfcCEcy89rjfmYjQb0Nsj27o=;
	h=To:Subject:From:Message-Id:Date; b=PZkfyYYhqFrpAm67EDTfftFmCyNv3dHI/vXEgNngtSkzh7a/1IReaXNpdU1pu1+8+m0vlza5vhhvcqCPdriL9Rog1rD29oOTWHYjK3Hk7VOIOe29xcRnmicZuOL7RgQ1rMulPf+dC4Mb+XKTIvV4gOFgnzVl0dRYgUw/D+uV5Ks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AP4M2S3v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AP4M2S3v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95FBC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749139193;
	bh=ZOZ1uqJh+l8baxl5GhSbfcCEcy89rjfmYjQb0Nsj27o=;
	h=To:Subject:From:Date:From;
	b=AP4M2S3vYS0zsGSfdYQWmUNpR3xauXKpg04hZsiLiGTQQ+EDubII7aAhPGlquCCdI
	 8vF2xaHC3Y/SwebEhPBKMAjvPnd8Lk3ZQgH/H7NnLEEoaqmvnQOwWNVGDgJ/jk3V4r
	 zdBPFRPE1+E3S85mJccwpPCcnoy77iynOKjh2O5Bzs7N3gbel7zxB7kd85oqkQwxYn
	 8u86bmSRTaCha6qGJNfRhSOvpwxRM2bdqS6iWRlcIwy/xmbrkkumsk6p1V0/L3IVcw
	 zNXYGQHrNkoNOQl8lMlWkMscHpB4rxD8sc/zOMFcCm3itmOUFLggkgP/VHqhwMScNv
	 Ur8diV8cgasjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E8BC5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174913919358.20167.4885370262273034906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b93ae1c66e24dc364478009230e9e868f9743d95dbfced9331ecba1ca90fbb
Date: Thu, 05 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749139193
