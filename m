Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14E351BD01D
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751842794; cv=none; b=gSdHC3lq2c/wjOND1c4KkN7yApIaGraijQ5Sw5HdGOH/w6eXjMyFYGSwK9nnSW3C3mECP/P4hY+vtGPlEJUv5u1LjrgvuHhHlzi1GseP0IHd7PAB1rn/LvyknNZMigPvgYRTtTay/zdxinW78wQc7JbUvV4d8f2a6d+TtU9Fx48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751842794; c=relaxed/simple;
	bh=YRC2ody3tJTNsXx6WzAdKGegQOpxg1xHI4R5hVhceCw=;
	h=To:Subject:From:Message-Id:Date; b=VQ7tqMC/HoDYBYJ5ajfR55Iisl9RQnRO/neGNls32MolkkAWX+AwXAfDdG3EjjIdAKYuFN1lU6CgxXdfzN3EDQNJz0BN1N7Faw+64CFmcPzc/2k+juN2uTMyuIPRGbO5xEK3xwdhyi7mDXB3Rwtg1Llm80qAFRF9yOUzYG8NFjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srshk/oZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srshk/oZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15BFC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751842793;
	bh=YRC2ody3tJTNsXx6WzAdKGegQOpxg1xHI4R5hVhceCw=;
	h=To:Subject:From:Date:From;
	b=srshk/oZb0FPPJbeCBioMojXkaaD7w1V17G240IJP+bIJZS+PjZKECnvzvG6C468V
	 g6oGigL4JnPd5gAQ+Mj1oboJHmc3ts2o7QSOPvPHTu7RCtOLRs7LdGZzahMDXeT/1i
	 8s+0Ay4VFyOdnVTYggKHXckh+UfhD8bDZyDov5OJWXdR6BtOpPcCQFHaOs8CjjvP2w
	 eLP4xEJV9S8AJwSgNz8vT7rGAYlxmCC/splXgSt08HIDp/TzxVV2Z+7LoSw7tGmFhQ
	 4X8BKSKIwsHlZxn7jf01AzLmBxj1RDTgdliWuCoQ4S6C2U9c9Qejhlg+HKGAz8Mc8U
	 LNhDDVr2sfB0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA6C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175184279357.14594.6960739944338382959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba764e2b784e5372cba139bf5c0ba02061f777c30a3aa771fc2b8cc09413ab6
Date: Sun, 06 Jul 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751842793
