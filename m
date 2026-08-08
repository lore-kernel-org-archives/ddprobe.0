Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58ABC30C152
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786209034; cv=none; b=rwK+cZJo5XtWFbC9ZZI2jgT8avR3pxzGBdhcoN6/9tWEy9tYptgeJx2GjWUFfK3L3guAx0ckpcZwfMYdlmBa2gya1hfaOjKtg7UIEeM1nyE1uoGtz3/sZi6pbD581ypL0z3hWoGWUIRvbsN0IVoXDgvFOZw3/fEAz6za5mw7hW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786209034; c=relaxed/simple;
	bh=xfMvaTfdgKPdya+7PcHfuqWjGzxU80anqG/03va3P2A=;
	h=To:Subject:From:Message-Id:Date; b=RCUIJ0M81oZMyzrW0oQapYqt0NMd/MNg3Zq5qdSo0IsEKgLPaK/UrvBi7VPTH51Dn8GdbhW1UAmabGPwm+TTW/fW/ec2D68qZf2XMm7q16ogmMMSWPYkYDewmkWczgsNjcOSg/H3bwSDH8z6GkKqwJ1PK3Zb68nExgkFc5eQrEM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YDXkihNE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YDXkihNE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7964C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786209033;
	bh=xfMvaTfdgKPdya+7PcHfuqWjGzxU80anqG/03va3P2A=;
	h=To:Subject:From:Date:From;
	b=YDXkihNEYMRb03YRCPujj3PDO1oFiB01gU0I/8OT9hqaKisFIS5DT9pgFJzBYMcxh
	 O96mN0oG9PcC0BKwUtirVR3JvbDi/MTjTRbldOfhQkNrr5lEuVHPtXXbcizlqDHWGy
	 OBM5tfpqwmcUprNtNSCim/fAnlHX9knFCeobU8tk8ZYmUUARSysFGhN92Kn4UWNjbx
	 MyVNBNkC8TEkg+uKiNAZBh1cLuq9ZU6eUb/cIwqoWbLo47awCiaT5qzuXB4q3I1fDD
	 ZM/EJfEo+8qjcWcKAe52tGwKjsMAFTxCmAH8aKY33tQjwI1U7XtJ4nTd1Jd3pQBw10
	 AzpJb1rWCFmtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0F58C5AC67
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178620903371.19902.10705453023169156967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af78c37c3cf6b7c6f1b7f46fcb48525276b197fdb9f1e9250f11e0f36c3fd14
Date: Sat, 08 Aug 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786209033
