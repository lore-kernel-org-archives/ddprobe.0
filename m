Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532B533D6CA
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789620634; cv=none; b=GdhEENkBEACnc6NKGQuh8akidUw8G03B2LnPAWiCNBtqWOPIcj3CZnvChMukqSNXVuCqLtlyJHxkX/SC41wTUdiIYFJc8Mb+F3Wcqlf1phDbgduyWYkpI35Kn5HKEp9EMdFliX+yygkJMA2Xk3RecAXxQ8n0oKDvpYrMIaE3XCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789620634; c=relaxed/simple;
	bh=0XSuVk/cZ/uOGvBIq7+tSGfxqpzviZzgHfGycD43Kqk=;
	h=To:Subject:From:Message-Id:Date; b=roycp0QqARPFvNK7YYKX+dYaYZjALO/ebeNyhFZgoxTV/Oiq/j1+dP7oMWCgb7YeIJ3ff5hdDXT/nlytohLIqlDEn/eSpAkY94Z7A4LM9Oposjgap73Pvx5d5vS7kfa5s2KIC8baRKKI1t3Kz8MdTpduSlePhxfD/A0pW8vqPn4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ABMh9Tw6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ABMh9Tw6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D70BBC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789620633;
	bh=0XSuVk/cZ/uOGvBIq7+tSGfxqpzviZzgHfGycD43Kqk=;
	h=To:Subject:From:Date:From;
	b=ABMh9Tw655il6tx8Qv4yxRZnJk48piE6U736t6mniCeG6OK0vR72WkBtbUl2SxWal
	 Lrxw6mMbTY7FKr3Q/b/PDKo4LKCYVKHGPTeEEaBjXr6JA+3yNdI0yDN7Iaefoo9JMb
	 56z7Wdcmd9UIY8S0782vgNnfn3mNmeM1GbXl20Ywm5J667klLaveMRWDBR5PFx982e
	 dgl8P8C+kgQNJj80gb82enC198tHshdG19bWs+AfeiGEiFIXxJfRGm/scqURGD4HCs
	 dAkt9lAG6ClPLTxGQ1U6CPKv10+i7EGP6IwmnQf4REN5bv6P8CkSTEWk5B9VnTzKTH
	 1Wbpd6VPF6Hbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE54C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178962063369.6082.5925339861580002744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e96429e4e36f797bfd2fdbea7f88adcfdb754741678120cd2b6dbcd44593e0b8
Date: Thu, 17 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789620633
