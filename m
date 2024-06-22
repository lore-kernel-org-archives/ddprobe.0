Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661D524A08
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719080543; cv=none; b=nvY7gWpE9C1k178lE3Pw233sE9EHGLcPfq2BPujwufUSpM3oO43aFwY1vZmoiYM/D5Z1eDwqDjnnMVcihqAc5+nQ4ui7FB7ichNsg7Fc0IZMIIMX4FJWLAGp/cqOX9aNG08hc6keA4SnuMDU582KYAq8sbrp/yA8CItHExrGbl0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719080543; c=relaxed/simple;
	bh=M8kq9aCcYoMozlemobfLieB1tn5YqTy40wtm1owkOqs=;
	h=To:Subject:From:Message-Id:Date; b=T20TSEKTZBDcoZ7fVUhiTBFAERqv0U1p3+/zBaniZJjm+XTCgwIuBOe2ouziHjHs6Ra0JG7KJXKeHE6wocF+fqf7+kWRvDn8XFgOD50PS/llu/Qk3rtRFSQ8heojLMZ/7nxrbVVIUWImSM3CXs9byJzOjjKQ6WCs94UAv43Ko9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YughygIg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YughygIg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E41DFC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719080542;
	bh=M8kq9aCcYoMozlemobfLieB1tn5YqTy40wtm1owkOqs=;
	h=To:Subject:From:Date:From;
	b=YughygIgunZA2owL9VxkQxv2k6i760UZLDagaDHROGFV7jt/O6OUu6GKQX/QBaprH
	 00Aodye7EJh5JC0owehuMc/5jtGRUvleg4aeNgGoQAdQaYTPRVHWWJhxY1vLILZrSC
	 8sMMaitIZMy9gpDkK/qC55Q8cvH/fv8R9MCtNVFDG7Iwi3PgbwF7c+lXNH06MFPc6K
	 A8uD9Xpk4f4od1JcWyZFsR2tbiP1AQY8Y62ClSZJQY5o0r0nzt8DwF4u7IbOzyv+fA
	 2q46EBTp6JuCGv4hC1px8zAphGqeIxRwIqwdSDcONHHGzBi93dvT1OfEP4j+Q9qEWt
	 Ka5Zq6AOotLQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB33C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 18:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908054284.14549.9725936309351291286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8c3c02ac8f14a1587b17bdbb799d9d7adfd0be78a7d0139eaba0d97f0ec9286
Date: Sat, 22 Jun 2024 18:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719080542
