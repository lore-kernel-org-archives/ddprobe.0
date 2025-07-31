Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280001876
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753923594; cv=none; b=YG/mhUbPGZTx/q5vDH/Oo6kwZAhTGp3ZDCvyxvCm+TtQPmy5pKcMIEXE9uSRr3Nx6sIQmdhS+V/clD40o7r9zRj6ykxSelerhHdxuEMw+5feoAMj8MgDkQ2BPjlppWET8GhwnO+kEguBhYI3/NP2uK8rZD8Wz6wZvCksH2h3RlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753923594; c=relaxed/simple;
	bh=TlmDfMudZP1OgmzYAapSrgpNUajU9HP8ubWwnQE/WsI=;
	h=To:Subject:From:Message-Id:Date; b=BKclOQk5Gcd0VWVNdlfDkWds5F19twtKpkpKDVhjnxbSbvW0/kYq+NZeOAGPDgmle9EOHXQt/qpqC+DckqtoEJfNhzIyICoiCzfxxgHJ3nj6O6YQLjKqkksNgL/kFfhylXX6PaPyO990NqVOZD7ZKi6jyX5teuDq9EhQqUyc/BQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvev1ZGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvev1ZGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE8EC4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753923593;
	bh=TlmDfMudZP1OgmzYAapSrgpNUajU9HP8ubWwnQE/WsI=;
	h=To:Subject:From:Date:From;
	b=Yvev1ZGPGNi9dhZyrtDlWUs9AlAxQxDRVo5l6JNPLMUpPr7oCKBTXrpjATO3VhRGG
	 6fDdN2em2gFCJjhMlnGd7di9I0Z45EDWwWz36EZcES5PZfRQsnfP6ps1w8wMaGlr3I
	 QF/85YGAQTRo60DDTKg6bB/zy6UO8O6HLKBEnFfhFKVbP1yADsI8WVmLTzwiLFq87U
	 N43xbmF6fZDYY4ZTPEjLymOwaZsgf1seA0K3lfrdHI8bHrx5Jdx8tEdXS5W72qkUIu
	 JpQUBc67wbJBIuBx8QyODUAphIZXmFW6bZ2jeRtGfEOyDONPRF+h1GKGkjJXWzM5NZ
	 a/F668of5dcuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F08AC87FC9
	for <ddprobe@lists.linux.dev>; Thu, 31 Jul 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175392359357.24817.13375821735814270243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de229ce06fd33c15d6bd5e1b75f9e420ec65e446096a37f3ab62b7075d29cfe5
Date: Thu, 31 Jul 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753923593
