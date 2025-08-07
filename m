Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19922190498
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754605194; cv=none; b=QlHx7LfLL9uNbwRHiYqtoiEEW2ZlitN0TdBZWxptL2lNTOefc9djwgjClskGsvVSU5ACOHMZmr2cGue/5Auax/n0mGyZudjYxgtrNO1asT0lnurdj0b2WFE+r665vSwvIpiW5oyphNBHwO3W/eRgz/hzU90BRQGEIjcly40f7a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754605194; c=relaxed/simple;
	bh=EMZVoTUGewb0JCYcmxEUrv+YYbkfr60cCDmAVbhW5do=;
	h=To:Subject:From:Message-Id:Date; b=Ctdy8u+RQLDvXAuj4mouSKn3SwO3VzV9Nq7ZZoHKiQh6r3Jvu3QbcwhGE7dma+iZT/LzfMKvXNPSPQtdS7uN+4CAQeSg3kwQ+OGxAGtBWZaw15Cct8QBcvzDSrkAMcQWuftExkOdvr3i4wcCC3WaYrP1gqn4QOkj1rIBJzcB73s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnVIxBk2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnVIxBk2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A214FC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754605193;
	bh=EMZVoTUGewb0JCYcmxEUrv+YYbkfr60cCDmAVbhW5do=;
	h=To:Subject:From:Date:From;
	b=mnVIxBk2i4Jk06Su1n5auqCCutSmXzpWRirOpF3Z8dNWr8s0wxS57dCvkgxotGgfs
	 7D0+HuLcfBtjK0cp+rE1UyWJb90qFJP9SJaalnewMyC5cYB7GhSUunsAo3VuEaNfTj
	 flDsGdWbWBpxKU4oA/mmtKUvosOIZd0SC3CwnKNsR/sptUAdR8mVSyuEckNerSj7QA
	 NJIvjbmWFzuVXJESjptd3ghSBDDNGPQgJdota6Slcc7AcTAMvC7vAfLV/7WFhcC6Hf
	 ju1Oa5tbUwXlgmL1UaoeZgU55z/zywNnmfWT81U0QgYt4/uYVbaVzU8YlwPOF76UDa
	 LDI+56/rPSPkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A7DC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175460519358.22947.11545271427415640522.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a1f5709583771a85fcedc4ebc2e204beac0c311b8b3e78d476a7b366ad2b050
Date: Thu, 07 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754605193
