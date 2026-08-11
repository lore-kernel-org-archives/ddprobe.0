Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2370A412C0D
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786435834; cv=none; b=Aj7xyUkGuVKBDaGcRy8FTIwUufJd0sf8rKEeCJzvMaIoCCfThRbChSGR8TpuA+42qgvbcnLDsH2Fos4zXWS0DJc8cHbUpp9D3QsmgWucWvqXLkRHvIZCcC2cUP/iJYSRcbiui7ejb9kmww7hSUFNF5Lsn7BX3SXvCarK2StpWtQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786435834; c=relaxed/simple;
	bh=qoZmGDgObTEjf4JmFDBnntW5tKU2jdctB88Lyg/Ejkg=;
	h=To:Subject:From:Message-Id:Date; b=WIXfv9fmRFIElBo/N+w1l0tYJH0VMbZ8+p9cS0PvSwE7dBv26F3BO03xYcpHXwje8NxrwQNQ188cnQDF7WrWvoOG9NyhX6Q08VRXnLJLAsrjUK/3S2FzGfDnru3HzFmt4BZTUnFqn5JhYzlTy0Ss9cAX40pilAThBNQQ6Xm8PSk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAb5XZXn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAb5XZXn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A9DC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786435833;
	bh=qoZmGDgObTEjf4JmFDBnntW5tKU2jdctB88Lyg/Ejkg=;
	h=To:Subject:From:Date:From;
	b=mAb5XZXnG5YJug7b03lrg8iFTjdMPgIs4y3YbP6aV0fomE3OT/1SwTXhO1YiT9MLw
	 CPRrbl5QsvWEZuyjwvFP+eR6kImjXjJNw0iKSf8Zk+KK2OSaNQYuKaWe2D6Lj+n8Km
	 Mc3yncgshQOzuzW9mSo0AmGoeCm/GKjUzvoFQ0GfWy8LrHs+pQxybZN3iMqyuyGqg3
	 Fcni+Mp5RDYAxcQia8J+3wSbqaCrbBsnaaeEFTygEe6OpMGoJMjcbMbi+LqIMgBWZE
	 olvqBNEe4DIevvjN3afPdoQk5xXCaGpHpwgF62vZno2i7uRCRwumcDr+O4FznhYPAS
	 +9ejyIelp4saA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E68C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 08:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178643583368.26208.17964215057902178867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43f1a01d0d078b2bd9e4bacca443387a7ba24b0e19861fd5f8127a749fc532a1
Date: Tue, 11 Aug 2026 08:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786435833
