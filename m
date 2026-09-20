Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 704303D9520
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789885834; cv=none; b=qlB9NuIQP+1bhQsYc+5VC627CIENHauDBM97j/zc4VFjIQvRFpQNL2Y6djRRPuFHDlZlzC96WAXLD8ndUJ2jPzskY0li/t8hfzyKUlQ2ovhETnDTu+I+GuxsWrXjJTLBnBW6Ligq7B/moFopUy9KRebU6pE3DgOcV7ET4G15214=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789885834; c=relaxed/simple;
	bh=AqIaPilI4L1erL36iR5PQoP/yZCXlUnes86NiPR2hNU=;
	h=To:Subject:From:Message-Id:Date; b=t8+4qJhOAblkVjfvb05q58qxsQgPS7V+tN5OXD2eaazgrH7tHzftusYA6S0R+JEmfH8d+VPXp5i6YC2/3IHjSUHEnpAoEugadVpzXrb+GuvK322Es926vCC3NHdsINhjdVJZTcAF1hLmvUTi9VPJYuN9YerYu4PtrKnhAPPdJbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMdS2ZLN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMdS2ZLN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BF6C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789885833;
	bh=AqIaPilI4L1erL36iR5PQoP/yZCXlUnes86NiPR2hNU=;
	h=To:Subject:From:Date:From;
	b=mMdS2ZLNROJ+2ogCndTxhgduzohCLBq1ASd61UHf6mFuMlPK0d1X5IDQP5hq5CWF4
	 jUXlbAgADPRtDqQKdRr4crPM7lCDEP1ToLhtpzHpBQZGQEWx3lnORU4i88gKLS6++l
	 CRusPCNSb5wICo4x4rCSWGOzKqRLLigybAzUy2msOnvcgaiuTx5Yi21XCw3pyVmgfk
	 awfKglGpNU/Vyltwog0UD3pdZV2s4Viw1q0jjLiZgWQytoGCPswY49OoqC1j5XjQXp
	 R++1c1QjLueLy51QRGNe5Z/zbY9gy5Bcy2+eGPJWFZ1Z+gnRLe7cApngviY/Z/qSrp
	 WJGiIc+w58+ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B09E1C982CC
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988583368.15568.8571377351997294124.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92fb0693990765c002f015e999995a5a2f4e3baa20ddeebe20809e91bd81961d
Date: Sun, 20 Sep 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789885833
