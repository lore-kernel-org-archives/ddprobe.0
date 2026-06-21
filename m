Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60CC822B8DF
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782024394; cv=none; b=RcObJzNGqUgIrmf6Tdq19UlhW/soelly7oI2yFCDjbnOW+JsZnzXTHfDgQJlOf5ATdIlm4HvTg1wB1SWPwP1qm8/1M7znWWssH+QeAX4ECJHZCLzprcm6VtXyVlmv7R26n42Hql8YwAN8nrF3YNk9wM7rbm5lFOddrXqUItAn/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782024394; c=relaxed/simple;
	bh=W+2BPO8p915yCR93KpuFpY6Wn+QBE3Fu2pQ1CDbgpXI=;
	h=To:Subject:From:Message-Id:Date; b=DcI4xrmTIVIh9lcjhcf9DaLPeZlnpYLzzRYDt9zBA9LeOM3EDQk8s9MUl0bUdnphXg2Gz/UlB5VCpVYiLvgOZPQFhysyYwC4oTQcdpl/B/FM0ykRfcAi69I4BP155YeXVzt8cJfZGLlZgkd+tmjpcjjRyALMePVdluCNFAtd2Gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IYuGvp8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IYuGvp8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C91A7C2BCC6
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782024393;
	bh=W+2BPO8p915yCR93KpuFpY6Wn+QBE3Fu2pQ1CDbgpXI=;
	h=To:Subject:From:Date:From;
	b=IYuGvp8qEbaUi+bs7cE8NrUfkTLgVYCd5wU3QmpTxU+juFsmTuC4761Dy8pbycNXN
	 xD/gZiiWBd6akJep6qeNtnQkwvTtRoL/e0GVaGisHmUhTWCX1MchbxEDzPP8D1Why1
	 wVHbfanW8lmHHQVOZmZvH6QeEd5az4qXZf1qyEQ0sjMej9oXtIjRFKHKkpVfW1STVl
	 PfhpYVIjwi7t0NxZtJK7ZW0HqI27sRnKSPdQFZ9M0BQ2lNcNsvfs8ddyhkLHLsZ2uQ
	 oAc9eQGu3EJ2+dqPOGp8Q+kWz3xJP623VSARwqYnmLP2aCYitW+wNUd6YS739OYVEd
	 lNEUG6m5dJADA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD32CD98F0
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 06:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178202439368.28707.17840581926917297188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3674ba645724cda9df1cfb9acb8b706b747a1e79ac86aff8dc1b5c34ef7c693
Date: Sun, 21 Jun 2026 06:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782024393
