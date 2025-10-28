Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C03252144CF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761659393; cv=none; b=Zn7u9Vjw/KUDvahvSZQ9WaZntCDT2MfQSVeoy2vjetMxm8H++8HyGJnXzRVFExk4MMRp0h1One+gkUfDWLiH5I/LyzQPbSFD4iax/jcTqQY6xet1zSLZTr3c2mPMbAxZFY6vaneNciEFM0jHaGKs328eeySbPz3x3qVl5Yh2Wgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761659393; c=relaxed/simple;
	bh=cczXBTUGcbDRsx/bwbfsfet2n+t44gKV1Iii9WfkBxM=;
	h=To:Subject:From:Message-Id:Date; b=MdGTudZXLSv2kN0GDHbdYg+Ykv0ltqC3aRRqZsAl8vAipfbr5sIuYf6Hs/5k24sRJCxxGkQja0tQRn+fNQC+OlULk34sCf+Bow9NIeOV1kjy82M1hasAkoPhxJIyF2I/XVpu1CbU8o9UvNsE3GcvCQMK/BV3f0lR/ZN3UuXQVPo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EGguxvcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EGguxvcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9EEC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761659393;
	bh=cczXBTUGcbDRsx/bwbfsfet2n+t44gKV1Iii9WfkBxM=;
	h=To:Subject:From:Date:From;
	b=EGguxvcY3MY9uW0AA692k9BtKW/e5LV0iqTpzqyjqmwDgbX1gtLq0Wsk6VnuImXkA
	 Xop8Ok1AcuETNEBMlMU28zt01SAmTqO49dTnjxuNDrVtJeJxdccpkwm7WbzQv5rSU6
	 qh+g9WjMYsGLm3Ayn//P1EoAlNNHDt1QLxtPMNZ47SkyIWfYjxjJ6R0qVNWDtwwSjK
	 19CgsROHXTFwmtR8k9LxOp1cvUGcR1WVIUzq75BUg1iOeejp5TLDh9r39z725h+AOI
	 5wBTPZQFgDuQaXE1+wYLEENTRt0iWodTjDGTx4Z0H6W9n+MtZl6++DTPaFUdW3uPEJ
	 p+SJ57/u1XGZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA84CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165939358.28441.3467798654535396414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fbe1124fddbcbcbaa1778b2f6cf343063ea3af1590b7e0dfda0e67996ec5c70e
Date: Tue, 28 Oct 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761659393
