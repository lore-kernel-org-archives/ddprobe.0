Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DA315665C
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:40:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763253654; cv=none; b=P9979++w7mmszl9nbZnahMVQ031emks1qdVolzXrspefCmugYkcNS5qOJyx1DYBjZpRCF5jqljGScTgXvwECvNJC1Q+fhkllg7mX26Yhz9/7N6NCj8n6YxqOGUwleHtPu3uONYajVBjIBsrp2OYtDAM/9EdNrB8Ck8j7hgrihiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763253654; c=relaxed/simple;
	bh=RVdBx+5x2fNGfHcMtIBs4H6LyXAZvqnJxwdfe1G5W7Q=;
	h=To:Subject:From:Message-Id:Date; b=OOA2FygmLwh0Wlrj5A05OuNjNLD9stgtZ2QPt8XWY5iTTTsnMZVFqtdBo/kruPe98RO6CEkOE3eUDMBDylYergMcP/MUjukzUvBsZhNIiK/O60UqwFKwLyjDBpUeMNXrrJOPRRBTKY5C6zux2SpYuX5AeJUY507/c3nOGW+O0Jc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCfEMRMj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCfEMRMj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0EFEC116D0
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763253653;
	bh=RVdBx+5x2fNGfHcMtIBs4H6LyXAZvqnJxwdfe1G5W7Q=;
	h=To:Subject:From:Date:From;
	b=TCfEMRMjVt0gJK1r5nUA4GOAaeoyp8Nf3DGBQol/MQdueTWhbjwRo3U3FO6t+7KHf
	 E3o4JEyVmQkX+wNBX+0vYpHRHvMVlslGE3dRV9KBiCF1X/SblNTXq1DPYFIb6qYZRt
	 pYrn59VaHzeGuJ8Tw4eyDzjYxupZapej9vt6wbz3HQzchdPCuVahO4ZQmnkJhQTHLy
	 65iN5Z+Qs/5lyZEvAqsQD1EE/tnJx0cAOYwYqlYQLAfcqVZ82DGLjtLCF+uqrK+BX5
	 31x3/yzWy5K5RYbZ5ZNAgHB6eBCDf858hi9ELlyk/4FijNmJswqsL8ULYbRs+K8R9i
	 j1p4OzwUlO3NQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A20D1CEBF86
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 00:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176325365358.16004.14157605401269031110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db35891eff184fa70b777a8aadef7ba4574f1d22c80231d6d00d2dbafaf14235
Date: Sun, 16 Nov 2025 00:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763253653
