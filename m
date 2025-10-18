Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3BDC2D8362
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760821194; cv=none; b=LX6OetHP7R0DL+DZVzG8eEXVtfjF/fl1s9Y1VRelUzLciA+6iRQxdaiFb+EGKmD5CLMP2QDcnmY9WqY+/osY7dODIBkD1WcEj0QwHNTW34dzVJmBjqTtcHM0Q6N1zwplrpy1lULhvKb2Q0g7wUX8l1JiooZ0rwqTB2O46ZyRVTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760821194; c=relaxed/simple;
	bh=rde1VMguMzzQDDINirh+YJMX02lOalFkEWWsNLqAkMg=;
	h=To:Subject:From:Message-Id:Date; b=lb6R0pJ7vXESMxjwKp2uZl1vqB+LeSudi8n4w412RkLfLFpODxLhbylCFgFngqjrNrQj+GiJFpAh84kfN0+dV0/vma5TjzN5SlQks3UJfotyUorxQC9327J7NClStlWRjvCFGyPA/vHCf8sj1r7pPeHgxAKtdB+vJalLUrmYcF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ezpWjkhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ezpWjkhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8EFEC116B1
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760821193;
	bh=rde1VMguMzzQDDINirh+YJMX02lOalFkEWWsNLqAkMg=;
	h=To:Subject:From:Date:From;
	b=ezpWjkhS+yjSR8O1kMkPVzx3lXUqrN3qHShp4WXk3BJEqi2oZwOAFqQ0noTc+OEtj
	 SDAL5wZYhs73AUTLtDdC8yz7c9woKRlxJCQ1oSckflVMc0tzGq7Mcx4fHYGHUvJq3U
	 xXm4/5LZhi2z39+p95vgyWrvDv9GYKeZEqpwBYM+IB6/FbEhrOU2YleAjqHRStluYe
	 g2Oc8JI5l02wjawEbWMlDJ+GjQ0l57KzV2kLDT+6zoHUBzCqwBJeb7ef2uOL4uXWc9
	 6okiP2s+Ai8rNiFhLID/HiKYDC3M//3l4Ubo9GyEaJ5F5UJ4Ty187fDZq0mH7KupUy
	 S8amBByg+ClZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C8ACCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176082119359.11014.1424424270409459225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ee1fa87568b994f5f46a3de3961a448bccc53287e7e282a8617247ba8002419
Date: Sat, 18 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760821193
