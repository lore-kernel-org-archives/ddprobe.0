Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FAA2D12E7
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755082794; cv=none; b=KIKie9bEL+dn38LzM6gDH2pErVBgdIuvd7RofcBGAcO9l5UZKY08pWG+3qI9XMCECeKLKJhA6LEyQbccIQHRJzw5g/3OMsQkCyehcRsW/CBMSy8FMmo7T/yuLMhesoaTk6EsR8n5RP5s1bbxwuIrYJ9g+RmgOVA26TeAY0C5dTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755082794; c=relaxed/simple;
	bh=bf/5g6nGFPUl+V14MyIMBjTWzzH3j9oY4EJtxx6YUTg=;
	h=To:Subject:From:Message-Id:Date; b=Go2ygt989YYlQq0sMfwGi9F+MYkegUpauU3xikJt8j3t+5NIoCQi02GVZk7iwz8ObJ80s7Hcj/Dco7YipnBxoeedmjtA71FjijhzhGjXbhU+vjlt2tw/G/TxJpQH6Y+ZjqepPhB+m1GJFSMKqnbcaON6JQ+c3mCGjCWNM4Fz27g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlBoKZ0F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlBoKZ0F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EFFDC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755082793;
	bh=bf/5g6nGFPUl+V14MyIMBjTWzzH3j9oY4EJtxx6YUTg=;
	h=To:Subject:From:Date:From;
	b=HlBoKZ0Fq4J2L4POD4vWEPlDTVEa0FiQUCeloOT6r64gArIeglKADMSsyPzHcOi3Z
	 vclLbopRoiCmvRz0lZMgvi1THh5nUhLnjKG2Qewhr3VBY7rovBvR8bTfPUD+a2GxgB
	 es4pMx/dIorsphwdSDQtXZsK0wlBvVfcLq/tmzaAsC/DN5eRko8EhsnutUskPg/n97
	 F6IA2OGpmjOUdmppOinMR2n0l3x4zbZfESdA9jsg5SGJzrrm4zVvZfx/H7LiKKCruZ
	 YdU1/p0KOTrfz9NdtnzKSDKhHn63stkf0/JdsyDjP2Eysa5bTTa+EaXl08E93JVRMX
	 X3a2PQTGkMcUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E786CA0EE0
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 10:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175508279357.7256.87600881977268733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32e8c54d3a5aa9a6ecda80178fb82674ac54b23e1dbfa793479d636390f4c288
Date: Wed, 13 Aug 2025 10:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755082793
