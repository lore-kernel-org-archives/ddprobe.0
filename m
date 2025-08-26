Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 286962D3A60
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756181394; cv=none; b=bFmL7Q+HM0CciyGn1W7LWHAfaNron+F1rK9yMZ6Kk4jiMCvBEres1NnAxCb3vKiQY7F2fCi6DR0x68a6u3YItnYWUUSL+9qN5GWIYwrXRNXawzutwp1DJpuH8rLt1uZLcvcGnZLnMjIlNLYaq8rakIcSl7YL0NzFqAxD/9V+PTc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756181394; c=relaxed/simple;
	bh=tyrwlIA9DMhgkK586sktZnTBH6qgpOrON4ttN6uL3zw=;
	h=To:Subject:From:Message-Id:Date; b=qfoRBV2JNoVaBgCnVfJlTiXP6G/o6/gc4yQM4fwBzVrSeQka+YNVJFD/Q8nR4F5joQ5LJVkUl8F5IkKQA8BNMFYKiNPijY1SpmNVpWBKEJZ88l13roHXoCCRasz5sa0a7cqZVgJrc7uBs5N+q/nmqWs+O3ZG0GzWyi+N8k6GaM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RX/jsVNB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RX/jsVNB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0116C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756181393;
	bh=tyrwlIA9DMhgkK586sktZnTBH6qgpOrON4ttN6uL3zw=;
	h=To:Subject:From:Date:From;
	b=RX/jsVNBRP6B7v1M/lIjAJZOqTOc7x7dmxiFYkiy/H5pY2QiW3lHzX4D8CSBDUVHL
	 dClHkVOQv9eQcdTT08PVa6QnlqPQnfxJq686GzHkLhdEOchVXXsiCOo1LmT1Hmg9kw
	 j3zyA+3q7ox4XiLbwPQRGo6s2VaM4DdKieQiEuBnukSsXtE9hPJIlyeURNUig2jrvD
	 9sfXGA1epLJbE/BFi3w9gYUVMURAGVWN0CBmAx0T2aFhFFAIU2tYlXTvaYmBD5UNhk
	 5p8sElWeC+NgdAsTe5axX5MwZg8v9Nvu4OcOHCAH0S51eVVQtI14ukOKmNqx5JC0aH
	 AUun4kjAJOe4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E991CA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 04:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175618139357.27756.16058135370694990303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88256d78f5cfbb8c0f85edbd46331680b5f35615498cc4ac2e07766a2f2a541c
Date: Tue, 26 Aug 2025 04:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756181393
