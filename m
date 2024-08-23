Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B980191F6B
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724451954; cv=none; b=LIZweqr0zhBc8/P7QnG2vgeN+dfran1PaDgeuF9p0cs7A/773gg6iadl1kpXOSp5FKTUt7Pq+MzCNzzg26Se84iSbJvPdz9341gOUSfV6EmvOno5YLuRwg0PUQ/TSyQjs0qk8KL4x98bROwj9sSSbci8X+fXeN+JCeEty0NNOMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724451954; c=relaxed/simple;
	bh=XW669XKpJ2nkBGv+isH0t6WvGrlCJJGh2uhBiub7e7M=;
	h=To:Subject:From:Message-Id:Date; b=pgHwA1m/c4Y9QQxth+xQI0Dz0QUX+H+Awj+LwQE7xAinJhwveXkJg9RD/ZSi4bUcpLTn+VfaR3w40xo8b574Y3VoDEKjO+zMT1paW6KtiDINcfl5ke9yHDYZyUqMffONwaxX0HsIYGZg185yL1+hqF3SzJW0HlXFfjk3RKvvc9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VF4WXREE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VF4WXREE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A34B1C32786
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724451953;
	bh=XW669XKpJ2nkBGv+isH0t6WvGrlCJJGh2uhBiub7e7M=;
	h=To:Subject:From:Date:From;
	b=VF4WXREEM+K2vWnc3BPmvsMatD3NDPs/1OHbQjBkyE2z4O8aamnf6Hg+7VcQZwlN1
	 sHadyY88Gq0Gz2qjjB+o8UEuwhnJTPrOe0UP38TYWYxkw6+R1P1lE/49PQ4EZRqHMM
	 +i7A8Vki+oepMRWBHfJbjVKVf2d2i6MDHiAzNzAHqgsi6TWaiYv2gUyRlMn2LgmoPC
	 l8iXrs0sao77h3V1+/aQKCVOtqtCgDWsOcF3otJYA9NAGL7I88G5gv0ye8GtZ3BiGw
	 gzbVf3QrDz6jQEKu5Sw4nej8ZWfs0fzm8icEk/cmghw6GBXEkjc5sT1+cCNW1ByLXh
	 E+a+VKqbNDBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928CCC5321E
	for <ddprobe@lists.linux.dev>; Fri, 23 Aug 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172445195358.20283.10607628998136092502.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 504c633b54c07ecbd40ba1a2cc91ad9768aec9f4a2d3cc313cd91a358ce10805
Date: Fri, 23 Aug 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724451953
