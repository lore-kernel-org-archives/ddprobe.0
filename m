Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F128A32549E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768245834; cv=none; b=Rw/uOHj7lOS6IVMyVSicHyWa68saAaRVl8fOt5noj08IysGd2Y46VRCA9eze0q6tl86p7jR9lXIIf+s11+jnVr9KUxANUGaBMkT7wrfUxOtoQA80gXzuwNEna/YL29GoWjBN5Mv3xPTIwSQdckRn3zY3b/t7U7dk9isvbls9zfQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768245834; c=relaxed/simple;
	bh=+lUcLn1rWIgCJ+AKYG7WrvfkeP81xdaHSYC08wzyjaQ=;
	h=To:Subject:From:Message-Id:Date; b=ilxtaGpLN0It0PIG5GKQMdp6o99m5jI8QtwGUBtzQk3U734kcfHkks/kO4Pv8j8ggWBir5KILj3CwKnGWyqx54uhBgzHW+WuEM+c9HPiqrY/jd2iCLVE9HX2Ljnt++jouD8WQNBdRwFfOVEo6IMacEhZ2gbYg75PwgETfBefsH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rdis7nWL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rdis7nWL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4249C19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768245833;
	bh=+lUcLn1rWIgCJ+AKYG7WrvfkeP81xdaHSYC08wzyjaQ=;
	h=To:Subject:From:Date:From;
	b=Rdis7nWL6KTxr5xbFLe+LSlY+77/gByylvYbmX+/grXgIaNjptME9iCIg9KhQAN+r
	 vXyXfoJVQbrAGYwaMoME8B9pqW7fwY5bdLRa3eAk3sAs28y34fGaTlG2UYN6DtZtXo
	 Gq0K0j+GyLzo9VhTNAsjVp6i5G9HRtl9v/FApI9UKsm9n7yhm98GTKrLCnnY5r6nME
	 GLW1M+/XSMsl7K+MOm9nUVZ5fkcs8Uze6YxHO7A08uZGnfNxwdP3R9J6d8wLWVwPu0
	 rmxVc/WS6m51lUoFMIx6BaDxG5EQLJ83jst5B/jIaR35Sr6oC8CRNPAkT/eJV0qVcl
	 osXJxXLr8vayw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94965CF45C8
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176824583358.28201.17440767901370645897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ff6323b93a470b26ad515d617cd8b57ba7c27162053bd2a8a1e3164ee183d6b
Date: Mon, 12 Jan 2026 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768245833
