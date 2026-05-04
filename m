Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E38B537D11B
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777887454; cv=none; b=OQQgQTKU1TM3VliHmfEu+jKqL3VQhYDG4THre9Sa4D2pExZiHzZvf7R2TurUC2aT0dASz3WhPKVYcj5PEfeHGoHIIkr4BIw1HuwOGKzk5zqbw6gQ7wNmQwnglYaJY1MMyk9U7mUsSM3KE+oheKR7Ijb/QulBqpQloI+IOsH/r/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777887454; c=relaxed/simple;
	bh=3dSE+JXG6+ajrxxXN9mKh4LSupIRDh2TP+y6hDcIPOQ=;
	h=To:Subject:From:Message-Id:Date; b=ksRQWxdpmnFyHBteGEhE4ua0nBV5D/9DsbQk+KUrWcJaxnlixUuRnM7pvFQFJwQ/YAApgAKZmf2iIGE0VIdHdVdbeUB2nimBoEHihGmLJxzdRA1QyJPoph71183Nz/5ffLqFokmIsoEVWjhyNRVRMV5sSypQaMu5EQQCMAQmTCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwLgGOpE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwLgGOpE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6CCFC2BCF4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777887453;
	bh=3dSE+JXG6+ajrxxXN9mKh4LSupIRDh2TP+y6hDcIPOQ=;
	h=To:Subject:From:Date:From;
	b=JwLgGOpEWJcoaoMKf2mvvV5oYy+KRtOul8IJTZGD+RNTjnqYDvcuDs2jco8ceT9Z/
	 nSvNmhctvVIeq5vP1CopYlbzk0zcAU5wTYB52Ag+dP6nOwYc8WJ+q6xyIJX6jGW03X
	 eros+RTqqbzvlEXHPLP66xF1HUm/jJfyq8KmRtrdRbyaOrvowQitKpkcphVEM6Koif
	 8kiwSO6a6Cnm9C4x3AIYiGx1tZ0hQ5HiYu0HR4KWJTAEbVk8aF2GqKljXZ9aoFGNgm
	 VM1H89yEKZ3vEt7iYnFjzmMQRQ/wIDPi2UklSi5HGMTU0s6m2AtJS/uVbZVTbKfVPf
	 tGj1v32S+VGyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B72BFCD342F
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788745374.6861.4068864929422207807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3890d2362b2b09fff5a4cd33e582e4e6ebaea51910cd3cd7319117e96cfcc6d9
Date: Mon, 04 May 2026 09:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777887453
