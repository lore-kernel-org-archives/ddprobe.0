Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C5F8B677
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736454954; cv=none; b=FiWLrWZ1/NF3jiVNi4VOYNRDjhfQJ6UU7GddbIQcWmoL/96Az84BmJ0Qj7syPxRVOzvtabCv/FwJonFbQK5iSSAGTBtYuikyjWYw0kFUlGUQC+vDeM94Vf+j57mnZ7ZX+dKk2sqeePAKAIVol6/eQyQ0PdAdZwYdXVahh9osvpU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736454954; c=relaxed/simple;
	bh=WnuTNepnp0TQgrqTkdVsB/sIYzGNDKm4u0bUfIUpTQc=;
	h=To:Subject:From:Message-Id:Date; b=j5qcWpa0b9CUsYlDEEA9r+5AuaVbzzK9h07b6zoTAvF1Pfq/lCnsTW7AMNcqNmJTYDP0xYX1UlbukN9X4XMxHLaSu50SF4Py3iXAVpWvJFd5X19N3+ORQl2xTxLgIsu1P53JSxcoVKLeYALQIZUTcQ1hXqKSKecxDsQ34Ow46R8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLlCgRzu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLlCgRzu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D26C4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736454953;
	bh=WnuTNepnp0TQgrqTkdVsB/sIYzGNDKm4u0bUfIUpTQc=;
	h=To:Subject:From:Date:From;
	b=fLlCgRzuLv17oKCpqGyEnFVZ6aZEzg3iAGUKS80rabOzK63N8+Gy/zRpSAtoiMo/d
	 qDg3aoDi1fkVpfAzG9K46UeDkzNx30K9QwGp3eejZZ96h7qv/AiEyqWJZpXLEKwfdC
	 UhGlc4eYLU7WSFLLzbC1wZEmTcMRD7FUi9aNeVj2eHAl+RwJjJFi5aapjk0IZzOnXi
	 RHgWqKrzdOCDjpPth/SDhb4+ozqCgC8dFHWWsG5dcmBJEIZFUbKNdS9OWp1YyWyU+7
	 gVGY3ONBAglh0d0E2FhEAcsnUuUIUWzh7BOhsgieL4MlEhAQAeKDY8f9N+CjQqOi1G
	 ZcTRFu5apMrWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94625E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173645495359.9480.10732118340469120898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73c3a34c674ac633fe823e021844d7a9ee23cd02770f6f2b51a9c401ea0b1058
Date: Thu, 09 Jan 2025 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736454953
