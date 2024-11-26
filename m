Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C443197A93
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732657554; cv=none; b=shdFYGM7bUvvtTda9De1KJbpclJyehqawgOTpSv8iGMdCwYIm1kuHkSiYtjvz0LvS0CTgtPRCqeR1qKFXze5O6/5T1i7YTQ8Y044VrfDiQbsQuV08UQdvlV1Yah6eTyYba64ue4uHQ3mTMAqdBHlCM/cn9e0ZEdKT7HyVO337o0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732657554; c=relaxed/simple;
	bh=GH6aso5PeBhMLAGkb0w/Pg+nTLM9YlBATl11F3e0Goc=;
	h=To:Subject:From:Message-Id:Date; b=HmXWieB/0xGaTPOBTFrJ75hoey7WmhJzZdFSjAACMTn7hHaa3Zu0fWm00b9F6KH6XqtdZyvW1nheYx4hjuUugkG3DbgApQks0YSWzCx5ZnLQOO0THpVJdZ+jHonRMhDZKzIl1zdb3o2TFAHN51vzL67DmkKFHkaOZyu8wpRNNio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=knluaNzR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="knluaNzR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B03AAC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732657553;
	bh=GH6aso5PeBhMLAGkb0w/Pg+nTLM9YlBATl11F3e0Goc=;
	h=To:Subject:From:Date:From;
	b=knluaNzRmG5vo9nLjJfjRhHvNMkQXgSdzf+kETF4M+HyrvC/KN1m/WwCOvqVhnxy0
	 o70niyEF6HrSfLJbr4xi2xBUfxDpHij2DcBFlnO8VlgHVjlJwPRZAedlbndNOm+9Gd
	 FpXhcsG77cOG7QEBMx5zst2VWJHzUAXDXc6DBDP0LRZ+tsWKki7nyGw9DnwDyKg/MO
	 TF83OgskSt7l6dJp8GvlxgDyT8+4FoLU6gs0SXxo/oKaHNiPiihGgrz8bxkmY1Ib1O
	 LGJOBMMrNt9YNvli04gC3Z9XgS+5YR9fIpH8fB1Cd3dHY7xGpzSWyXe9pcf7944Kgh
	 XSYrwyyyQc7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B58ED6555E
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265755362.14624.8576162601057784287.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a088717a16d598fcc5655d548b60165eb4dc5fe9c4db8b2c5bb2432bb33ec0
Date: Tue, 26 Nov 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732657553
