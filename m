Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E55C2E8B67
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756800594; cv=none; b=vFldSN3n/zjBValJURQIGhxhriJtFZFm1XBGPDYrURkrgi8WFicCMEwRqTKtqbJNZ3XDMARiR5KjVEShkxhyOfWCXzUunPYTM/CCNgw33i1DA9T2l6YmKiYZJsxZOa/NJfk2mhPuPEWrpvprqZN3BHcFzAsxF5nRgDE9WqCvI8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756800594; c=relaxed/simple;
	bh=4CpiVouorYgvqPfvJr9b0NvdqxNOZ6pMhLupqoktRVc=;
	h=To:Subject:From:Message-Id:Date; b=I9bfw64nX+QaNTJla0CiVcTzEdAKi7pfrOiB3j937zb1kpnWoRDIg662Ox+MuS/bFvlLjtP+ljqqZXgaS5FjxZe7PdhlccvnGIL5I/0GSV3AnETCpuRf8HAs5T2YUz0ypLgisxBrqB6RR9nleVyr9Qv1aPbHsqarA/qKKMz4Vx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iFkXp9KF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iFkXp9KF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A32A8C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756800593;
	bh=4CpiVouorYgvqPfvJr9b0NvdqxNOZ6pMhLupqoktRVc=;
	h=To:Subject:From:Date:From;
	b=iFkXp9KFqpoNxFRJ+u1s3ELosZWlS9lOnnzcjyo3pmc6nyu+tOAB1q3Z3IaZJ0yyZ
	 SJdCKc1gDP7dwzK8PcIxY8gmKy4//SA5dJJtinu1HSRJhrZdGvI1ostxWrLfqKoXyT
	 HpX72VlSQxBlaYM28fwD+QZXZouD+n5In7YfYRjvnhX34J1mf4ZXGU1h+fvrn0kcmy
	 HJNCW2v3FuwCUMwdXJN6Qf64PXuZRQnNs2PFtI5/zCm2s71PRQCe/xJuQ31olNh15T
	 S3BcP2Nw0EvhyGK0OMhczRXSjxZEJAmkBCzCHjN6yTWhzHlc1T+s7D2dGu39krKqFc
	 RRSd/NEZy8dag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9057DCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175680059358.5134.4112534576697394651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 994edb6afb72512a193b478dd86e481d0d417f7dd2c711f38b6f466a2c4e9842
Date: Tue, 02 Sep 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756800593
