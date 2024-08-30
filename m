Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFBA1B652F
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725032754; cv=none; b=oYeHOqRyi5HP3l93d+lH68XoCMWwv8G5YzKTQtVLDv25HOXUptE73ms+zStiZxHWsoGQdVIWWdwSgZWwPwR4Qf5+lxm0WwpTq2ytqSQPiWYrIKKS7yy7isvPrRkKCueLwsg/nLYAvI3cUjcRU+qPekTA+UrOAgDo23GNYDYlW34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725032754; c=relaxed/simple;
	bh=WpqEiZ9xVKZJ81c0NYiU779gIDfXPjdh1HYqexQatG0=;
	h=To:Subject:From:Message-Id:Date; b=bOkHhmvYKUW80XdcHhaOSBsJR3Pk57EYZCNvcO0j2PGkWemEGvBSysiKzpuXcbOEtEX0AN1Qsn0RSH2hTmwxiS6MMCGx8aJYRuDgKft59C5zeAN7UdyMEa8dZ1D0HaKzt0PXeW01dEB6gUqLN2eMhbjOvjeGmF5w7vKkH24kQGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKPJIzNi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKPJIzNi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A46FAC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725032753;
	bh=WpqEiZ9xVKZJ81c0NYiU779gIDfXPjdh1HYqexQatG0=;
	h=To:Subject:From:Date:From;
	b=RKPJIzNiwAjIubujxye86fm4Dd5Bpw3E6xpbU4FnJi6JrYvn5qtCrrmT4ZmFty4hP
	 7WzxTxKSeTLAndYgIWdefC6boKTaZQjr4kCi9o2MHpH77hbn+LBiLbE2b0W4a0qIAS
	 RKr/Rk3FHyo43u6NqlQT46fLlJzawqNMuvI0oG7+mBTO0m9EtkfUB5Hk9uLmGT6jSU
	 HMFAoKcP+wnp2VNWKc8PcZcUn1Y+7+5UId041UKbKdmcuqQ+q9uUAgIHs0rdVxig12
	 gkP6LmMeijZNwGOZtQ+9CllksURYOVdw1wwVi9JFwZTgEpQRQ6/OfHkxssdaOEIHar
	 qVl5PEqhGJ/lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BCFCA1006
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172503275360.16804.15875861835990795086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ce77c66d08417c7918ab185aaa0953373a8c5051794d1db1dd8cd0cd8573f2
Date: Fri, 30 Aug 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725032753
