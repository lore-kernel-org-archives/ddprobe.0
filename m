Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81F7A3B14C6
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786177834; cv=none; b=PpSQ72UE2QKmNWwjw1+W8N0azYSCTg1Q6tsIlua30yu5RLNg6pmItaBuLHvo2nXhV4DyJ/xkGCNV1mIGBia+d7P6pGUMQ49JdxvzWvJ+7MdG+w0Xva7bwsJHAGINEZA1csuj09Vt3J+0zI6UTp7ZK0Gc6z9yIVAAWlz7wZwQG+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786177834; c=relaxed/simple;
	bh=swVb0BxoScAlAxUIpOZESO2Bu4BuYljv6yGU9H+oUYI=;
	h=To:Subject:From:Message-Id:Date; b=trwyVMPRpyzcFpodd7OymF3Yr6a3JLoaQBgMOENeXixhyIprj/n51qpjfwrcsqBVpmpcirG9I/L4zFZUwUjFCRqsW1wfxJUCuXSUHQrpKYERCW00hcPYPAKEdotShzwQnE24vAKaGtI5olzEgtNghcxUufTYmgZcKFse5Ge3tmY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BRkaFDG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BRkaFDG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8DC5C2BCB8
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786177833;
	bh=swVb0BxoScAlAxUIpOZESO2Bu4BuYljv6yGU9H+oUYI=;
	h=To:Subject:From:Date:From;
	b=BRkaFDG6ln3AD+OZxRIz56IQ0xj3WgbTbr/tpaNDdq3FVOG5U9O5ODOMj6yfYS2Q7
	 djiF81QkXOuXjg9xr3SurU8rfXacs4M1UbU3PmYCrCcj0AfxQTcnSnTl0H0N3RP8gm
	 5fqpiSy8vL+GThsk4a2Re/xYzDb5O7NVlXD/RKqiwiunjeve1zucdqEbDeah0pv7MJ
	 pcGWxrSXRjHAkekU+RBoTSP//TLgOkagNgDXahe9jteQxkSKAFrk04+6cMTVBCVCXg
	 fG+Qh0cbMIi/19Hhcc44uRvlyLgMDe8SWbwMJH2HL21mKb8OVUUEpoy0w/4p2UcwfV
	 1MTwsM0sILZOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B40CEC5AD2C
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617783369.32628.7573454764016419698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1618285b7647fe9a79b60f1bdaeaffcd2fcdb7f80813220bdf9bb42213fe679
Date: Sat, 08 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786177833
