Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F724BE5E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749429594; cv=none; b=Ip/vYri5xPb47x4MzxzaUw8hU8DLctUXZ5h5Jf+T/Rq4R+mzymT1yMxR6XVNDtusbNX6aQh5GnmUoLasx95805mFoMwV3Xskgz9umVGS3w4LVZv/qjR8mzxtx4KuwnO9XEL8IESgpaNg2DCzc0E25tyH9+llgIUyp6/2/Y7J2A8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749429594; c=relaxed/simple;
	bh=AP+JuPvRpeO0fb0ZeMzqGPh18mPBCSfDcj487suCEv0=;
	h=To:Subject:From:Message-Id:Date; b=CU99CguP6NjrO9uKdVgevY3+A14DDmcqLxEa9Rr+NIVsnVfAVSDK4uwjL80l6yCMWFssj0idv1TnhZQuci5qnaLgOwaBLb0e4hyLhw4L2xark3H42CWksCfLkFiW0YNtDs+w9s79tSgHhhdWy6Rk5TWkx1S5at5MAgnRQNWFX/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8xwtGRJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8xwtGRJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D933C4CEEE
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749429593;
	bh=AP+JuPvRpeO0fb0ZeMzqGPh18mPBCSfDcj487suCEv0=;
	h=To:Subject:From:Date:From;
	b=C8xwtGRJR0Xn7zMuWLSvcj7h5EB2pIyUvrsTPZFVG6AhHpkgqP0GeUf0CDV7nYI9J
	 MLDh/H41DFy9stCdz3M6WOeXMP3OLDNkJrvsDaKPrnMekruaQJCMl3gjYcDT9pW4c6
	 nc3bcdKr3BplNwMcgwRBjfDYXLLOQTH82yJjPzzHqBA2wOrRUS48id10i+qj/Ui/QY
	 s83lif7l3uAVzAijr9eI0hX1mlax48/eRm3uqWAKZqzGEwanLrytqLFjEYVrSDmeGC
	 yHejgU3TN9LoE0q6zQUFtzSjbZBZssDSdZ4zNt504RIMSxDqOrQd4EnmAdYJxu8wDi
	 rItXkb80NtxpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2EAC61CE7
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174942959357.1607.14094115508608091891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b77fc0b99aaed7673477da807a6e762861bac192588979e19c5fe9ad8e992f5e
Date: Mon, 09 Jun 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749429593
