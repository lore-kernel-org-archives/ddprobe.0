Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B1A17FD
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750480794; cv=none; b=lLLkyF8mF7+PT4wLa6BiZVTxwfxyTPHdOwrAUz/EET2vy2UjTQRk6oRguv8k7FExGIu1cUumM1QU/g/qPU9RWobwrWg5UMNdj/h/bPb8MReVl0fnAARq9Gt/9w1U/kE5DJsMCJgOgVXWyM7eLS2oLlMBXSChjezD1tniF+6qcyM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750480794; c=relaxed/simple;
	bh=P5ZTiz/GCJ1ZU+YvpIu6xqhBZYdb4zJvWcJ3JvgqoNc=;
	h=To:Subject:From:Message-Id:Date; b=B02yK3egrlmXiEVKGuzEq2uPTtHu9rkiFGcpsIy0ATDAJ4F2FYvwc3As7ypgktd5wN4u2ziucemTZUB/2ldpRf0Qg5u0v489fyv7H+r/9ua55fd04KuLLy+CxqZmw4XZ2M3YsIA/zlyYmssXqmeYEb80ti1WlMmw6MTDWBQSXIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JZkxqPQN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JZkxqPQN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9432C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750480793;
	bh=P5ZTiz/GCJ1ZU+YvpIu6xqhBZYdb4zJvWcJ3JvgqoNc=;
	h=To:Subject:From:Date:From;
	b=JZkxqPQNXbIRK3+ahfq3L9Lu8iGncWqODg2mYf8VbRklMIIr5wGhzNPraZMLnvZMl
	 wyLM2kcDq5WHwd9RZgeV840CQ4n7j5ni3fE/R/roIc7zneTByUELziBjjTh7rmE/Ke
	 BBMjubP291UjhNtwHsVHbAGqFHKqfzVoqPPnY1PElNe0nhOPGq7h47iY8hXtRgpyo5
	 2tYqmDfZ8r8GKI6kSQ2F3M+G8SahMxuO0n7XhCF/D2fQRxHQvFQmzEIMCLkZlZ4kWu
	 bAi0stk9uvBI0y7W8pVVZNW9qfeLZPdv2vNpnzIdIMJ4RQRc6GMwNHiMEM5wPf3+91
	 6MTrRCNhvhkJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95075C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048079358.31908.15590894102309696308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf4b55621747b6b19ad39688cf868fb8323cd113778a9c9a48a17dd0ce6813c4
Date: Sat, 21 Jun 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750480793
