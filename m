Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314C031F99A
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780869274; cv=none; b=ZAWg28CGNr0hzp1iFlV+0fVgfcGinpDQoapCSAgchFf7hsRR9dymJfNDrHzmc15HkpP+Ohflp5ryibfhf6/Nh45R80p+f7VaEZdl8facGaBNyiTeGwibje2r1+xp9YBX6QiZ/Duw/+ULANDJK1bRXPu32HAU6amv7A+YGLQgUKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780869274; c=relaxed/simple;
	bh=OyqhP9hFfxcip3UZ5CEA4u5oEI7q8aMX0f2lIy12MAo=;
	h=To:Subject:From:Message-Id:Date; b=ZRgjrKC84SkkzNL3t66U7NKyWcfr7GadcX/oEc1/yRraGFvqM37vtzzCwOm03xzVmDAmg3vgDkPCr99ab812+shNc8g4VQ5aWxVb6aoA295wk8+LlxBTpxQF5wlDEEW9K1hvgkEPzrmZAeUe6FASS5Vi6/0YZnrpDM4S/NacPUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SGE7vauR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SGE7vauR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C24EAC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780869273;
	bh=OyqhP9hFfxcip3UZ5CEA4u5oEI7q8aMX0f2lIy12MAo=;
	h=To:Subject:From:Date:From;
	b=SGE7vauRtliYyFE35AnPoHKpLygVxawGrFglx6V087GgoAbLSdOkgNDS8AtqmgcGg
	 GJaKKeLpZgxBy5R3WETA5Y6ob7iSHoHJUEy/LU//jtoRfZ5k0gXcE0rYKdJnIfJK8T
	 NXZBVg58MGWqWGdbx/5zvsy4goeV4uYiYwNwyPuqtE+c+WL5y3y2QW4zUNfsc25IlE
	 VRwjktCQNqU3MMT59eKyxQrBgnJfKdq39PY3AcDEPUzlZ7CJak+23SCfBlGXUhnrWf
	 QHyvAqPyB+r4h8DVX63NCpaRW1EdspueduKKONvo4CVqU1ywjM4fqu9BfR9KLz57e8
	 kcmnD+Nu4L6kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB068CD8C90
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086927369.27371.3448528769239432587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f38877716b8c8cb87425f90e5e0460886420584871a0695ee59f1b8e499787b6
Date: Sun, 07 Jun 2026 21:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780869273
