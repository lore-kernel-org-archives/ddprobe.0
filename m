Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4977C1DEFE8
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763305314; cv=none; b=N5ZVVAZ5T05hJtEwePXi98JS8yP8KuF5kBF7PTmq95Bj7rIVwiZ5Po9JT1nPUIl1JzD/UoJkNnxKsUFflLKYZ3EPEDMugq78CyjyKjSt+f/ZLvJKUgd8nJs7xvahzR5BeJiDfh+BBVOoF3aGWYg3sRpzTgeDfqHazEnvbRQVVYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763305314; c=relaxed/simple;
	bh=70Fu1gy61N+awHsmWKnL8fKi2vxST5mSvMMwcFjd0fo=;
	h=To:Subject:From:Message-Id:Date; b=tI940AkfxQFbmez0IH4bVKOwfhp+J59R41q1VgJ7RjWajykMuaGfMRIxM/sHm20MIFDiIHUH+cXZZMuq/FjBAukfm9mAOmzapN/sHeZYGuYEwscIVfuvbz3BqZQrTnt0u3KZkQu41TAVwUgZ4l7wf5Am5npKq2SgumpINQc+csU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGkpOBrM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGkpOBrM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D128BC4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763305313;
	bh=70Fu1gy61N+awHsmWKnL8fKi2vxST5mSvMMwcFjd0fo=;
	h=To:Subject:From:Date:From;
	b=sGkpOBrMUpgErqWwJ4oVsqFaN5o9FiaG0eeqEQ4itZhBtadpDtq/gevvQZ4HvqzhN
	 kv79oqaxVWmP5OxytC/lXGu4Y5CFBboT53quVt/nNxcYBfSdbEC1lRLXFr+RdpRh+U
	 kH0VfROusVULZZY0B3vih4cz+6ATbzFt/3IqbMyKyDJldIE9V43nk1XQGPRGoLIfB4
	 u8HxZ5dSoAJbUQczGNZG/7OJ9iAhkynaYTQaOXTZbA0Z32jEQC3DKeFkEkyfH4ZkK9
	 7AAO2xIEh5IFci/kKDBN06mzejPHEsXb8gxFA8w+TH4vjmgVew+1i2ppwKrhP5bCn0
	 64JUyrc3a0+Ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B73E4CCD19A
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 15:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176330531358.4523.16886067723742790835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ab7403c95d95217c5c1fc0af3ffcc80007534b2c602a1a28bc9de4dc6407cb
Date: Sun, 16 Nov 2025 15:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763305313
