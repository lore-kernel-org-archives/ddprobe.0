Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F5AE222597
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791105634; cv=none; b=seeSqYO7Ho7tGMqfaOd6WXP56QsTnooUm2nB7TPFdriLwAuv9zzzqVOWh31ACMMAT5EvMX8dU/pQKUuxsIOPyXTnnXNOzZkjo5EUsc5ZAcPH/0f09SP0lEsX92TjtncodAxzWisoFiKTWztcmrqgitxVfzZ0gSKCwFrC879pjQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791105634; c=relaxed/simple;
	bh=YCiF9yeY5bwmc+PBsCFHWz9tyymAW9RJu6yRYTd+/rs=;
	h=To:Subject:From:Message-Id:Date; b=R0kQs7/AcP0Bd8dUNi389L0PhTlzLhI439TkF9fq79Zq9sYFZV8EEPM0HzDhRvWHlETjbBQHdF9A5blREPwOqq19ZboWMy7fCJyI65bvzLEHDI6qG/Poh4jiOJ6SgmKqVzm2wyi6hgw+OjqttZqgvscMhFUV0wYhfdpLcA5z+xM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bX0Lfni3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bX0Lfni3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4563C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791105633;
	bh=YCiF9yeY5bwmc+PBsCFHWz9tyymAW9RJu6yRYTd+/rs=;
	h=To:Subject:From:Date:From;
	b=bX0Lfni3hAhUp3I8melq9x0iMd8go1wNC8XCk8viD4nTheVu9FV84MGr5ZBmFzhI2
	 Y85KtfMKpC/8L/ImJH8GPWITiyDHB/T1LpKh7dBCGJ9o3c5QlvLBgbdsZx0JKA8xpq
	 w8R8L+8LBgyskU55CkizyhYgQz1KZ5PdVMbbUvjfXEq+7FZbPJcikdMpJWk/2zjilw
	 UftYcnooItaI3iyzbIqIEyts3/Ry66s0x2RMuvzYUouhpBr7LcVtfiR7RWAxvmSqLO
	 PQXmLbx7AATEdsBb35IguZ8ZTlV1AVTs0A4h/fl2YY+9WrpMVU/cc/WID49RQ/5quI
	 hjFHiQEA1aGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13E1CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179110563369.21013.8578077196484883181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c1fca0eb866cf4af5ed7a8671fa638ee2ccc292e701f49a223b497c204e216
Date: Sun, 04 Oct 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791105633
