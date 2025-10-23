Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A2152D9EE8
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761241794; cv=none; b=tLRAJf8HxK370J/4MQI6WT22axy1g6mmO/U0+JEwRUUtTtiX/QDc0qcls3BLAtZnc4H3ax06PylmsSZ6v6uH7PuFYRD2p3qxgcxDXtj3Q0CTSXyZo6tvlwbCDdMkDzBgDOHYZOXNuiLhO225nq0wSwF+33pQmu1eJBsNYKwng7Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761241794; c=relaxed/simple;
	bh=xPaOkRdGgnhHX/cuOtHiN60hasoyYSAMOOqBZ348tk8=;
	h=To:Subject:From:Message-Id:Date; b=Wy6tKh0X1+Ink2ipOrHg3vyyzCylmsRqFVsY4Y+XHCFkLeTXVg2deGcRYrCAA18Zt2pgdIpbjR/hX9z3bMdUvN65l5P3g810mgAMjycVNwkTg+vdjpOc/SbUEPdwYFoxz6VApfVouR3yYk7o0VSqAt7skvrUZSFQ/Jv9EsAppWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sA99tPZo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sA99tPZo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD1CAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761241793;
	bh=xPaOkRdGgnhHX/cuOtHiN60hasoyYSAMOOqBZ348tk8=;
	h=To:Subject:From:Date:From;
	b=sA99tPZo4sSrKegg4ELHSjmQ/GV1Wdf94DGixIVqMrHxbM7Zg79iHpeGSTdXWMzVh
	 0cMYq+LIKqTiDVCi97zLxCn7SFcqFtOnHhBAvoTBzYSgqSrexRJd7p4+F+jQBBFSri
	 Up4uWVAI67Oj6wcfOYWmWY8EM/IMLJ+q2OiMQIh2+zhCDWE1hiUM7weUfCdXQTVqJ5
	 gu7vZ0bFSRmSmm17BvVafdR2m2dc0rpNgJkwOpcz4776PR8u5m0wjWrm70lrqvGIkK
	 LAKretDz/Awo0pwH9L9oFAbRGptSgHOWSAYxBJbUa7D0sBpQMtKVepUuYFsFlg8E2c
	 VK1oBOxbuXjeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9840FCCD193
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176124179361.9002.9112512594144996671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffde25ad579ebc7ee78b2e535fffa5610a5f8d0b652ad283c3a0d49c83657991
Date: Thu, 23 Oct 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761241793
