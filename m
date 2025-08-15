Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2955327E7E1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755221994; cv=none; b=OIyAHxgIW5rf+p/grTLh6E1N9CsD5482KjUywqaWVHb+5SvOh2UC0V7cz0PPHxkye8AmkQhA/PQmxwx9P8G5p4dMNYV96f4t9v1SCizyE65kdsw3/JZcgLHq117bYEvv7Tvjinm6OLsbA5AgknnmxdNa3OloZHae3B9VkgiFXWo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755221994; c=relaxed/simple;
	bh=TDz5EmPVPVdh/qc/6EZdYLARSP6du2S4q/aviYQ+EIA=;
	h=To:Subject:From:Message-Id:Date; b=t15lMNCzsyilFqpAZ9KcRE33UJMjhj978A3l/6kpGK20sQsbjF9G2N+HnuBkyz0BU5dLiqTPl2R0M8JtjjbQHcV9aAmn8/Qxj2ulB8YLoGlFey7IPXSXY8nqWLSrCZakJzZhPcf5QgWA6hbNyfEQ/p5/b0rZ65Bnm0CIjKSJh9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbFLi/5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbFLi/5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDBCC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755221993;
	bh=TDz5EmPVPVdh/qc/6EZdYLARSP6du2S4q/aviYQ+EIA=;
	h=To:Subject:From:Date:From;
	b=GbFLi/5dT5y7Zyje6nCFT8JWOzo7lCeops6HtwPyWAjRwWlWQktr2zYzvNg0lHLzB
	 jqHPkE9lSev9ffJF9fdkuYVPnrjkgRerp0RQzJags1/NQyeSx9LrCtXRJbJCTxBeEp
	 HDaywDitkYur7Eu6RkxtF2Bv5Z7DDTe5v5nJ0onCz/2a3LTJ2E0EXClQdTg3KwO8je
	 QGJrXK8dK29sQhvvB7nQqyItf0oj6+pveoR9g5YXQYTdn3WHsNBc/OHRU2G1QTgpfM
	 T1J0q+0mptkMwUxNaUJPri1B3Z/k6+Tmp3i8YpXREYLFRGnuTrx8J0MmqK9NcYorBV
	 +oSsfB32WqgiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD0CA0EE4
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175522199357.9777.12084189498814151506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e45fa9e34ee170d36533273d18160c27b3ecc22e56761623e32e70e8f724cd6
Date: Fri, 15 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755221993
