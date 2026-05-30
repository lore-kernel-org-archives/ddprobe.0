Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3298735F5F8
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:23:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780125814; cv=none; b=iyKj32dhUo5hqZVG3LuVrCZMc/+RfnBvKjnN/K7b610PjEMHUG9QBwMh0yPbRM2s3KP6WSMFAVxcvxXHV4GNZwhn44r7NhlkdA5Ow7QuBaPiLvVwXcQcpUvyveV/coDa9g7julSrtv2P1IuFyNn/r5hb3+nWDYHCJRt8b+FFbcs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780125814; c=relaxed/simple;
	bh=LuhumfOjCHUTNcpRwcfC7jc3J1y2Q617VvU/DGMx41o=;
	h=To:Subject:From:Message-Id:Date; b=ipcUKpJtsoZfR+DuuHywDfUpCRcP0oqGBqyoW8CXh1DTa+MHqzxuZRV5KBEVYEyP0HxsORZXTITFQapUw+2PVvDSFYp974SIrNKp5uR4EPwRDnr+lqsgPuedqJgjn7PgKcVyv7sDBuzvdQtpWpFSHW3BIzJc9UYWnWxMFfvJwxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NoAz2Goi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NoAz2Goi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C62D8C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:23:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780125813;
	bh=LuhumfOjCHUTNcpRwcfC7jc3J1y2Q617VvU/DGMx41o=;
	h=To:Subject:From:Date:From;
	b=NoAz2Goi+E6bJSKudxzhrtr1T9Q4T4zoYILSUgXA+u9Geyf6GKA4FRf81t9kPOL6N
	 I/d6wRktC9oOif338DHWi/TXTKe1KCZiglOUzbFXs8+uVYgNtyBgv+Aw57+/r/ofFg
	 E4BUBQ/f0vuGnWN6aVgQUybKMd8BDkUAX8dF+FiVi6oEr+c2ld3TRIlB+Rx3nykeXG
	 Z2iuzYf7bKfF326HbVvpZkMi8keNRJMuw5yHIdrgljjfHuGBm8QeAsG85DN4ETPLrU
	 iUBSQnPYA5RUiemU2nIfQJaKbtc8a1oWnuX+hKC81BsdckJDBfv9i3nFJsc/IXmZjt
	 xge9f8h8Dt87A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2EECD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 07:23:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178012581368.2710.4244351535708639514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f116c85367fb9a11f2eed4b5458ca5cca8234252ede4b73f7869464ce30c08d7
Date: Sat, 30 May 2026 07:23:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780125813
