Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32AE14183D1
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781544394; cv=none; b=Dm6mcSbTJyu0ZEqjyWvmFh87w5rsq9pQ94jx5taVDOlsIkzh19VQz1WhVUGDT8aiS+nYPKvD9TCg/syT1b2BlHO1sRhotOqywvzwPRGEVI1LzLmmsHVUCS+J9o8FVkycGmDCrakJ4X9MgJtpgMAErwHTEI8v0Ta6S1FZEOeur7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781544394; c=relaxed/simple;
	bh=YrstmYMLtoDW6icb7YGebeWx7GUQ5eyfU3g32v6CJaA=;
	h=To:Subject:From:Message-Id:Date; b=SKpRb4tWhO1xhGSbmHr2Ewxa3hSKnTtlmE5Q6DN6onT9YiqbH4PVmI5ty9w433tpggJ2CZWec1wGmmJ5GAaiZPKNcQH9UMm089OsUqIf5DcdObP2lgsakRIAS3JYK62yaiqt5nuHxsNa3379u0NyR+gtvg0t5C/2AfBhP4Qmi1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hw8iBRkO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hw8iBRkO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF4A0C4AF0D
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781544393;
	bh=YrstmYMLtoDW6icb7YGebeWx7GUQ5eyfU3g32v6CJaA=;
	h=To:Subject:From:Date:From;
	b=Hw8iBRkOboDS7DB3SlPrrj60qtxI8DZdtsNHcUhtz+t78n9bxsTopoVx12CKzElLk
	 D6spWWbOoxfhJWbo/vAOS5Xqsb8XNGAPsM+UbClWFYWpwM/7Ak/H42wr06Co9ozKE8
	 2nce4Aa1+YOmnjyuTmGFE2xKe5DoJduL0s6OTpmdJte7VfTGD2wJfmSnHSjQJ5az6b
	 6ZREiq9qjHhSjH3QWLZbuSpjLxy88U5KddI4n7VjxbAfKMBr1RYsX8Sxipegp7Ob7P
	 l59MCPpJoIClSa7Y3jFBRT+t4hPBb2UA56mOymb2aFeeRBeDBDwN7puZdOeDQSy+N3
	 QGkx+YchKIf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48BECD98C5
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 17:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178154439370.32473.14097966425663561636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55a87dc5d1fe8a91c8ab1f0fb9e7f6b4f4c34c732b3dc2fb68e331b9e693427f
Date: Mon, 15 Jun 2026 17:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781544393
