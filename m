Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42293430CD8
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789237834; cv=none; b=fPixY3MpxJv/8yJAW8Ys86HH75YV09LKL3NBdd0xbnHx+Bb0BHqHkbYNd87BV80BJhPQkIkLTI1XNygHtMjwEGVB4fqLTD9ZoZzs2m+5JnfEhoaFOBuhvp4PwifadO7+WoMT0ixGzlzUJRs/AH2CZ/TBpR9BHtgcNLdle5TH4Fw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789237834; c=relaxed/simple;
	bh=3hUmzs/if7RLQKFSajmefQrDu9Qji7neVWcahLY2kXY=;
	h=To:Subject:From:Message-Id:Date; b=iyIrK8KorF/w21hbFLVAPCRqlJl2QjfHM868bWOB8G024x6BILtnsGHHeLWA8yVR5bQCYW3IwhoWSRHsC+90HZxXD9RTokQX2zrxPvMIPg1c8OS2A9YJFhvl2OvesULdx7/pJQV84hhQ4Vw9x9zvANqMumzhpS/mFZeBizDl/qY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j1LZdPDl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j1LZdPDl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12F5C2BCF4
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789237833;
	bh=3hUmzs/if7RLQKFSajmefQrDu9Qji7neVWcahLY2kXY=;
	h=To:Subject:From:Date:From;
	b=j1LZdPDl8KSlSoE9EGDiGfpZrvThm9biH9gtmEsWv/8v14pzeh7pTcBL+u+zzrRr/
	 6wy8fHV+uRAVkv3qPb3W7UpPEWPsV7WNxLzVNm7iMTI2nGGFQR2YXEcuNr2YXFU1B+
	 n6JOexG+rnKIdBZ1nh1M2mTcLibfWw5L2hHG67APr0LOCxHBoCMC3ahrBPanTGB7fN
	 GQt1SqWeHldt4PoYTMEncoA5S4zKsJvHwVXiCmNHWfSHaSu9aRKvXS7wENBKq4KPEL
	 rqamR5MjTaZlbPQMAIpCCLyD/cUnzXzMyTxxKOsQwrRKSlLwkWuVrA2vqNCLWmQVeE
	 0wgBC0xIvkPEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF30DC88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178923783368.1369.9829495973677654448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a72b1a9be359ee73af9b903eca8a43c212f309216e4e56f0bab94724c9d7e0e1
Date: Sat, 12 Sep 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789237833
