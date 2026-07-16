Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2BD379C50
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784222314; cv=none; b=nXh58NjWPm1XXtrRM8A2Ru45R9vZ5kKmDhr/lPEpJmIpYa34MLTLQol6zEzWkwnYtx+xOLAuUbhyI8nQqF9qp+E8iR1bQRDS7FpIszpPDpnFIx2JiMEZxn2EV/oN7F3HwYaGW3nwJ22wect70i+n918cM782mTX3F+kn/5pOADE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784222314; c=relaxed/simple;
	bh=5eNoKD0QbnLuQ4yJ9frifs/s6Hh7j684Bz7g/TZct8E=;
	h=To:Subject:From:Message-Id:Date; b=sNx2AW0HvPgY+/lqvZEPbxdXGk/JXZIzclUv+/P8J0iiplIrb04gQeGWMqnJgXHfHvkbQewl4++UqP3f+jAf82A1k5983ds6d0XQye3p+Hu2ol6jMlQrevbCOodO8qokTT42RkWVOLhvRBXHpuVpIVQ04pMSF0NqbvHEtRvmSAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MZbdt0Li; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MZbdt0Li"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA44CC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784222313;
	bh=5eNoKD0QbnLuQ4yJ9frifs/s6Hh7j684Bz7g/TZct8E=;
	h=To:Subject:From:Date:From;
	b=MZbdt0LiSmYBf2WbG3XKFN7AOcZQCx0KGXAVQm4oKiOWYLGrCnJWlXwBR1GzDdxrK
	 f3IZHqjup+XIhqyU957/375BG/sakrNHWSoIibkEJKRkYPv1eTxF9dXl+pflJCU1iW
	 DYgXzCgX8Acm+SoeaCKgrh7g0fU39stAqJF5oMra7ZULFJjTuDbUKWjp7XZNp0K9oH
	 5XedxJBVtZQXAv8FTjfmqdwBYDcMh3BnFvCB+gcRoSkWsDZH4uuK81/UsXP+zA/5au
	 EvdITIECn6ZnIBP/b9slF+VjgUzHfcve5fzockyC+HruNxjM2dTCXzVW1CI+CeJd3x
	 rEg7v2tq1tQ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7F33C44515
	for <ddprobe@lists.linux.dev>; Thu, 16 Jul 2026 17:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178422231368.15699.1698735953697670243.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a289f40828e156ed442e9b50ec642ed8e5f805ec6cc7c2f1408ebef9c6993e54
Date: Thu, 16 Jul 2026 17:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784222313
