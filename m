Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FBA2282F2C
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781688994; cv=none; b=Y4HrDsHDNeG6OgWnDiIAV4fl12lMg8OmnC1frmRbKJmCfLTg6qSIb+DTAd4G5t7cKLnGyb8Pdf+dItBUuvmneOJeLN9R8R17b66vxg+zgRShKYX0n+VmbKovPL328PBsz+ITg3LFcIT0aGTrdXtihv79C8Ba6wuGlrkEaprmQkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781688994; c=relaxed/simple;
	bh=O79xoaXjAJGC7XxwClryF4kVRajK+VcRZJb1Bqdja5A=;
	h=To:Subject:From:Message-Id:Date; b=njM7VzWqRVc7Khjy7Oi0eva3LcRm9CMwy8VGA/D/OthacoQuC3tw/X4Qbh++W5Dgxgz0sbpuRAhubERiLQu3+wzYk4CIOn8kaSepLs+2dB2MN/CmkYkyfvd+iwfLYwrUJIpNpevNPDW7ns44FweH/BAoL3bCYrOr2Aj3DWlx0PY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IIF0vVKU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IIF0vVKU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB5F9C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781688993;
	bh=O79xoaXjAJGC7XxwClryF4kVRajK+VcRZJb1Bqdja5A=;
	h=To:Subject:From:Date:From;
	b=IIF0vVKUlu2+NvabTEw1Glb+J0c69Z5RV30Sxu50fV4xtO2r8Vrg8WU00lPg6Msvt
	 73ue4qoyY7ltffEj0eyI91FwYrT/YAKPSzbE/4owZ4F0Zj7rkCew8ExqYR77zSYS33
	 BJlG64/3+FNR8Smm/Crdn+GQjMp3+Pk6bo5Q+z6hbWC/mHp/X26uibhe8SGAOfhtEV
	 7lL0qaJBjGON6uHJQYR5WaceOPfoxD2UQeP8A/eIJ3r0w8MpKt0vSbB+ghbdauX1Xk
	 aQ0kUV1q3P/L1n0gvlFxYFE3PwpA9rqkwvUh2PVj1D/Q6aoQ75qZasoIDJwzUTV1z9
	 DNJ+skTH/LIvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8EECD98E4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jun 2026 09:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178168899376.19695.14968517019189632186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 770002a2d34ccb53c836f553de58afd6828d03891eedd7bb65c4032745e18f5d
Date: Wed, 17 Jun 2026 09:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781688993
