Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 86D488F5D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718240303; cv=none; b=MQNyAy2SYJq3xJGe3Vb96bfTX9NOZ9U/y+uuSF5xeUtIG3PurLkp189tV/X8h/8s7htC3sKyZf4vY8bNUrz67ddP47RIbpLjIbabwgwh4X2qnjI0EFjnwwai/MVyQtnceVUZVUq8JPn8EU+3MYc8UgOlEOiLblXwcE1gd5nRgxI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718240303; c=relaxed/simple;
	bh=m59lv6NDWCiF4ULT4wYjRsoPpBEZGTXYQ/NwxU8fYwA=;
	h=To:Subject:From:Message-Id:Date; b=MLqDXJ+ESKzrASEV4GbS8OXb023w2JlASGi3cGsbN4+cxoCd/QLIBa/QouT/SUvd0XVFX/ZnBMd1EtRXjdVZn3/bHNB74QPWTeVa7XojcivvMZ16S/lh39k5CP9VRNaOXAGofSWZ6dBiQ+IcpkNe/ejuSRMzVk7kD/WzkuRxe6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QM2rgq1U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QM2rgq1U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDB49C116B1
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718240302;
	bh=m59lv6NDWCiF4ULT4wYjRsoPpBEZGTXYQ/NwxU8fYwA=;
	h=To:Subject:From:Date:From;
	b=QM2rgq1USJIHLpjyqOcPGY5ztaoDMVRdu5ZhrfCmwTwmYdG8/0xfNkLeCvqpRT7LP
	 zxqcZl10hfHnOErQgCorXX6jQ0BwDGr7klQJGt5pjJl6ouG/op9Q/Sa1cqHXeuMEwc
	 4k3u0/qzIR6XZ0qTYX0zK15jqdfQAronfYrDUlaE8Wdh79z4oVExW7VnAzs1s0qRJj
	 CcloSm1We+W+BtKVLiCpfnMikNvpPuApLmISiv1ChTMCUANeOK5LLimcSQfGoxGYjX
	 gx3Akk8VENyafbMgLrtx+HtX7s6K7PzPZzmXT3YJRW6fb/9cnXzLfeK4gi4BC47Ktt
	 2SlTKFGmT+qzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3FF2C27C53
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 00:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171824030279.12968.16195839180908721407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67185cfc25d6723b9a1d754539b3ab73ac0f78f58075b9588cc5c5d774e3a6d
Date: Thu, 13 Jun 2024 00:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718240302
