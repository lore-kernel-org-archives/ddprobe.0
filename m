Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6853533B6C4
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789430434; cv=none; b=BrHI4IGy+4WaPiex4lRJKU+uGRLw0lv/1M2h/gzJF03TIcMcTB1qxMtfgLDOlnOmmYmog+OTyjud50Q6GMPJa4dnOBrYvx2Ww9VS4WYCO/mxovbLhMWQNgeo0gbRufBnqd5VpvNIKDD+tx5pWXmTtw2jjiZDqpvSvLEMNlbdDNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789430434; c=relaxed/simple;
	bh=erg35VQhRA9cj1G+jXnxAVwS1MqPQDzqjy1vnVmJ10k=;
	h=To:Subject:From:Message-Id:Date; b=g5PM0kbOt4272BmW8MkcFPR08YdLOvdFdh7h2tYYVxySozNoDVM5Mz7aDibWqrlfMzMwhX97H4zfKTIufOIeF/fG3Q9iL0p89ybrHJr+aidSF3BpKEu2jBPT3qZRL4sIIhHN/PL64NPE6ujAqD2Ij01z8yrSH3tfpMsxxP769Nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZqgJh6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZqgJh6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCD50C2BCFB
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789430433;
	bh=erg35VQhRA9cj1G+jXnxAVwS1MqPQDzqjy1vnVmJ10k=;
	h=To:Subject:From:Date:From;
	b=YZqgJh6BQH2Im2n+PT2CJ5HOW3XI9nz6nEVN4msD9ULCRPYSuHRqqlyN9f9mBrkiJ
	 LgmZBRiC6JVxnQHpiCtHy7qMT8Jb+QuZFtBWVk26pKOiZwyeHXoU40FESydppxSfoo
	 VHTWVJMSyy7hr3P5iDeQgYk+nz3B3CHBR9j5ZU/1AxB0FXA9bfUovXibhXrmBqweYl
	 jJcvwrVhRbWCwuSdebVpB6rnI6+NqjObJfmvACawJo4jIx5Mi6HxNousi0o64W7xJZ
	 0L7nV0mGBCaCp4lVyoj72yeHtynZUU9FdiPfArf4zIwqq5qvA7A5xMUC3xKNfM4fEJ
	 wXia4Bma71wqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B96E9C88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943043374.10813.15330843233957544592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a833ff7179664ba09a414ddc3443e1c5239d1ab478411165fe7f39a46a39a51d
Date: Tue, 15 Sep 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789430433
