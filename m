Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C011AC44D
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765524174; cv=none; b=ruYIbBplSeXrA9s5bTK49MqLrA0amkT+pgx/8jKmju+FV1LMPf+s2rsCCBdZgF16nHNVtB0ls6utns3JOOjCDk2ob6Jfp2evH17yZpLJZENKaNOoP16C2ZrdlSiOtrqpCqAwanDRpIf842OYJKTeFGpun81J0JEnLkcV9wOw8L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765524174; c=relaxed/simple;
	bh=4yOq72lrNbwLczBVMQdyPbgZCfgpr9XMSxwsRJJB/Ig=;
	h=To:Subject:From:Message-Id:Date; b=hV5gwXJj9M7Vblr3RJSnlmgsaxq4Kwy7GNc+EOGEDEXqlnzX1zXiXZ650Jm+YD9EVBvcv9+5JkdrcvV/kY+y7yDuxD5+6DjcSH9L3zoziPsFaGVqGgXYBel5odVaXlAHfwHRmBxCIhDXyVWnTtL+JyQ0EKSuJ8EDfkwEJsAJs48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W98PgXHy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W98PgXHy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44A8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765524173;
	bh=4yOq72lrNbwLczBVMQdyPbgZCfgpr9XMSxwsRJJB/Ig=;
	h=To:Subject:From:Date:From;
	b=W98PgXHyOaOlIsN1re6n5Vwp//3u248StkRaOeaTiWHN991wfDr997SL4Jjnz96WT
	 VQFcsA1XSbEC05WfJeUsW+1XPouHcchNe8RL7jrf0agXAueU1g/ShVv9OhxLwcE91/
	 h+mA6//VaSqbqYsXZR2SO9A8Ov6itZEovTCXapdP6QWYkCF23LGxtnjHDrwp3KFffr
	 5KMK5eIJSoWmt8A0IodriM7Gk837k3yHy/oT73mAEUruP/cgcZp2/tOgCvQWoVfBVC
	 R3MaFhjMw5oriPTktAzutjHrmnRiaF6IrGrJuc9Bmw/2zZq59n3d9PzzaZTqyUGt5K
	 VDttoRWlTPbqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927ECD4336B
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 07:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552417359.22715.1978572297203783604.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0a91adee8f35c0224698f3ffdd50ee0124143a7e5e0613011a17eaec539ea8a
Date: Fri, 12 Dec 2025 07:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765524173
