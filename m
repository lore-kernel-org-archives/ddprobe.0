Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EEA320EA3C
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729884354; cv=none; b=jFICJVAWloooIK/W9pLtHYBwaf8xAxC9h1a6UTDSFDpi5rdNyQQa978WLDZAQR8QaFOezwoGbLjTQwlYiOIMhy8Pd527vrm3fmiaZjZZ5HDzCdt6B5bdYziGZPjb2/O6J2Exp2XOZjoRsSXu1HOgh8W7b8w5lmSjparI3Lytzxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729884354; c=relaxed/simple;
	bh=paKbhA9JS6crX1O9FlHTYdkBTcTnH4yw+njdjp2ygsM=;
	h=To:Subject:From:Message-Id:Date; b=PgdDwJmHhsi1s0xOrx5xEmM8ynBi5JMDu06u9yCy8VaRz59vfmI3jAFV201oYj00mcMjrXTcJtnRttGpy32/rFtfCuvbU4y1y10n4kZI241mmjwwamBI/hgXLMBxFhzVlMPujOiF7RQgluK6MWL7E//mGEATb6i1AvV3rSWR5nI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VPb3mTx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VPb3mTx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB3CC4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729884353;
	bh=paKbhA9JS6crX1O9FlHTYdkBTcTnH4yw+njdjp2ygsM=;
	h=To:Subject:From:Date:From;
	b=VPb3mTx8kjEtKkyNlVveWtjeeIMhLh9E0K2m/H+gIkz1BitNb+dkEXyY+v26tGYnK
	 NuaO8Ajv6YiUqzMmcMmvTu7+EZV+T+4oHMxL6TyKmvQUzFGXLiYOz4S5uduQn65W2F
	 ZlUc++wlyBRqfDF9TNSgt6GQtDSKkyg7JH5DuX8pzZDjMY9nhzwQVXJw446pf+dXwM
	 pUccljO/kQ1CjwHBWYkuRC0JLipodpTy0/ahYfzJzLrP9ep6c3aZ6na/ilnD/3Bo06
	 hFPk4wqCMD211rZzFlRjNAYCESMHB8M00ed4MiYryPdOlavYVTJss2m6ufkZ2fRmaj
	 2PRBFD7znUZuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A3C2D149E7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172988435362.7118.6659063807157510215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc2f3299bc60e8ee64f685a1578e867e85c659494b4056e619d91bdc9e122b40
Date: Fri, 25 Oct 2024 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729884353
