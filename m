Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17227273D88
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753344594; cv=none; b=sYFrPO1bCxfeTKIMicjWVDH5kDFi6BKRN39GJTaQZEgb9guBA5AavA2NgKD8Y1rOhtILtk3WBkLDsaG5Co7pTn2l+3iRcjr7yByn20Xs/cSf3polXFBkht2rHNmmOguIPrrm6Eyvz7+HcaDcfc7NENJzZ3XCpAYrMZ9pnTSoOiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753344594; c=relaxed/simple;
	bh=C9Ljy1G8K1g453wfeiaUUv8j7VSiGkErLfDkcoKSwKk=;
	h=To:Subject:From:Message-Id:Date; b=iqNhlMRdiwKUrcfL3Y4TE27H4HmevS9GuZLxgbjtKPhRLKDakwKWf1VAbchgX84ZDQGM/qe6QeHy8SWVykggGyWKYI/BM4hJg3RxPCaBZxBKnls6hN3jWVpubgNBrO/kQbJUq87idJrLkvdjcT2DXlJcyjRebmEXTt57HLQRrlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TFOY2OMq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TFOY2OMq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CDACC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753344593;
	bh=C9Ljy1G8K1g453wfeiaUUv8j7VSiGkErLfDkcoKSwKk=;
	h=To:Subject:From:Date:From;
	b=TFOY2OMquLixRdCPk+NLoLvNxpzYNl5gnf6D5hP2RmDgidinIBNperFA8BzLRz1sw
	 jEVbJsLl5ZnTmFod3cbLWqp/LgJ5MXBWDGZIbJy21LjZHHf1vS00sLvzH9Gkma4pKc
	 R/hyNs5lx3y7f7xhPlD/mvH41OkzIRnfYOyYMi8zOffVHO3i3WnPftNfVwMnpNHgNn
	 asZ8fwXu3J9ykzfMPhuYP2QgvC/rpfpwU1sZB6ZwOHQwxzmXqHJAlBpWcutNuaRxwY
	 tgK6RiyDl/yNSkF/Ot0ZJz9STzB0yBKnXb3NpYV7V8zt+mGPjwwxQwduAVIdjAa7i6
	 E73t2abU6anMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90365C83F1A
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175334459358.23706.12403766075218945785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0630863544558b5eea2c2287839216bf93bf31eb477de04056eed3d99a1b021
Date: Thu, 24 Jul 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753344593
