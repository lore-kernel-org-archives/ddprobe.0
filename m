Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 351521922F5
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786501834; cv=none; b=rurh8TRlTgq8y3H8nZ0b6opxy9efZIO2xPXGHr0aFIjzKZcqSJ+xgmwXQ3GUTJvumerEhhZXihFwU5PzuPTsXspxUzkviOp0veC7q/j1nhCZ2gklto0SzfkxvzQwLdurUg8DCgK1xTLxhItXfoZev/vW1kadr8lLcSXL6DQy0K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786501834; c=relaxed/simple;
	bh=N5TJLqls0jZaMA1/JxOndCckwqgNY9Sz3AN2FAMdtrU=;
	h=To:Subject:From:Message-Id:Date; b=KegeB9Zpt3lWwe0CQhkePpiKn28hw9FV9l1SLVz5XMtP/ko8LS4mjsvDosjL7L81vrR/cDnpO4KWuCsip/PWsgHaznu8P6M95XxuXtgazEBeRwsbFGWTmeDWTB+u3288hzwWNb9H2LRms4JOV8TrQPPHnZy3qUHWNEY8rUq3rc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+Rapg/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+Rapg/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0064C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786501833;
	bh=N5TJLqls0jZaMA1/JxOndCckwqgNY9Sz3AN2FAMdtrU=;
	h=To:Subject:From:Date:From;
	b=P+Rapg/bK29nRhINDU0H0n2FTTR1YSDLoJapbCcMcI5H1AOdBGN3sBA28kKiGihUt
	 /5HW6rz7JRupuHIIldmz8Ewz/HF+I+bs9mYMo8wkoseFCeYcm4ww9ZMZKMO0BOpvBP
	 we9+7Ckmqu8WsLEovlmmieq9rkUQwhrnLxkyA4YJPldUh13xYCD+t4NHLhuMsoErAJ
	 lgc/Fbz6C0YXFgUIZIk8FYwvEWqZW3bTKcujKrzu4WTFqC+kAmJiRnUXhr1x/KljaT
	 jcg4foi3+/+2AgrPdtXWxjR1EIObZWT/RCKzBDDWtBjbbCvGhJ5NWT9PMH/Qytlgv2
	 rT3Pq6GGrdBEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED8EC5B572
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178650183370.17194.314564475688252754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 273ce26ffbf754d6169af9d98be295fa8d1e75b9329cecb9e56573d8f657d6b9
Date: Wed, 12 Aug 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786501833
