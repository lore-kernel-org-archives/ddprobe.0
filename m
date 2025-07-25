Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23BB5F9D6
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753430994; cv=none; b=g6vMEHr7bRnmh5XQMq7oO9ZsRb7hs9eMrOKYuSz8/T3uxmdLAlg1iuqAyjGQF+eQJNAOXkpRJqAr9l1d/BdhwXtxNsJtXDHM3UN9/+AlIZ5dnKppD3XQnzyZsL5Miz5ZAF5fl9qAqkiO0EtdQ7QIsPbeZkko/ZkU/gwnwQwtv+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753430994; c=relaxed/simple;
	bh=JcwAVjWI38Id97Bo1RDe6WQJF+XcToEujZJorAJqa0A=;
	h=To:Subject:From:Message-Id:Date; b=VM/t7q5arqgZborFBS31NFnQJ/fuV09WUi2UWJO2SSahFZM3lHyshbdvLsuyiFfyrzsGd61OFaBckt/iVE4hWAqNw/q2E17peYxwT4Rfg65y7j9qJovoC120cnbT2KYoJ3F+TRWavx1F3Ynqzb31kb6GYVxvbBKHFtOjCZklhHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mofcRAwN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mofcRAwN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CE1DC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753430993;
	bh=JcwAVjWI38Id97Bo1RDe6WQJF+XcToEujZJorAJqa0A=;
	h=To:Subject:From:Date:From;
	b=mofcRAwNkIwY1i0cBih0qiz+pnbSg+4IJMJNOmAbJ/qiMnEERzbkcbYDXeibMtpa7
	 e0IbHxkWLDPTyZY4Mq624MVzVjkSkChA5ypB/SnEU/zRiNLVhavXMGoqIcg+LpfqJb
	 bKWvht2OhBn/B62I2ZxE0ZZol+K9NXUQC55bvXU7ivgaAZewP87TtWQlkF1FRHrBxa
	 8gptxguwIz+J25txO8uxqtaYIRYiOHkeOLRSQ/k2/7PIwhX1AgBY3s4vB5MH48TF4I
	 fn9wBFc9w/5QPru9ZcW/Rdi8RV9TBvOP8K3b3+GQ1lywkAXjmEnq+nb1dTQfJ3RM79
	 Pnhedi9svhZcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5CBC87FCD
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175343099357.25099.3751214880987002229.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee6c63e84ca069b7ffb82459807ba8741e32dfd4e7170b43c389f19cb39ce8ab
Date: Fri, 25 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753430993
