Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4098A146A66
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746290994; cv=none; b=IHOTKw6z/5S5/vSKKScLD5KrZz9rAZ5+cPMSpHPEjiXuA2iXRShZ8pEBZyGNQf+TxP7RbXzr8VfLt60/EoDi8LjlxAHhQHYAZUfiDt6q1K8mZgCeakQ+VDA0QD7aPxZaM1//bJ5C18kyIG5GmB1p9GpLk+qz/zFMecRkdyhLhDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746290994; c=relaxed/simple;
	bh=NCJUesgjriB7+2sZH++W0Hcb3085O4Dsqt4LsHjOnC8=;
	h=To:Subject:From:Message-Id:Date; b=NHN7H6Cas3m9lADqEiGZcSITEjzcwHgSVYfR9hQGaeLOkGwYXeoHhaVZKYotCvp2nwEGl27S3oJ3frl296pwKn8TFa9pG+Hw20ATkIs9R9fBfOwePJAtsVF3AEqc/jMJmUULL7JVG31x7qCtr725FvwkJ7azGSmzukRKzubiyGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAxJVrIH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAxJVrIH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A465BC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746290993;
	bh=NCJUesgjriB7+2sZH++W0Hcb3085O4Dsqt4LsHjOnC8=;
	h=To:Subject:From:Date:From;
	b=QAxJVrIHJ6qom2ZP7g8tWNRCVJPT7udznUPDbvRouD5X6nPlcPylBsoxM3W0CFkQ5
	 +GKB58oQRd52hAMxfmf92TnWVVLDiEwcfMgqwfsvtSkNjcFt+rZ5ZATEriRzBiz19V
	 6j7udQ2oDzXTzbcoe5upYlTd7SBUR8Dy12Tfe4lJSs4bxXILL/ESIbnWqNPS133BNA
	 rMCKKLVCLZbwTNHJdh0U4HHUFIZF7lwXjl0u7S/Vmdu/vL11bYqSyOXpAftbnYDFqJ
	 Mi9yy6BjgMLG/cnxIGyiAwAKaQKGFp8n4nCdBltpuJFLr7nQJBoUBKl/2D/85Kl2/w
	 DHzN1Y2jz4YKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90BE0C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174629099357.19688.7984021314946450083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58ab97803aa478020bd0982d0c78162c03477460a8489b239f3b3fe211547551
Date: Sat, 03 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746290993
