Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2552123F41A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753050594; cv=none; b=BlchSnkTGtr7OzR6r+p3KVIlcRcZxdamG9CJV1WqdOWhMA2shELNxeUdv59uDMspvH2UPVy/eVjoCBtoNUN8ynqJH2NBKorDa9Z/PTP0aQRXsoZJ3pb3/TjHXShKzDhXoBY27UcZK2wZA3fTqhU5yRhgZnC+8eezHZFK3k7un8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753050594; c=relaxed/simple;
	bh=q2B95xnSMj4LuowG5ElkdrBUAIII4isA3OUUp7ZYsCY=;
	h=To:Subject:From:Message-Id:Date; b=jMc9j3ZjwndqqjnMBpkXT9CICeQIuhz7RJ9JHSK7vEa/rkcbQtUVxyMfiT7peSN9qqNrSqzV9dqguKhjX5EHIOCVCxHetCbWTz0ex4SZ18pU+3nCr6rGvYXOzuT+Nu4NQHwZ8ZsBrNj/PoiDWUHKmiUs7OyKIdC7ixIWTj8FSHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ec+jJEcW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ec+jJEcW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F682C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753050593;
	bh=q2B95xnSMj4LuowG5ElkdrBUAIII4isA3OUUp7ZYsCY=;
	h=To:Subject:From:Date:From;
	b=Ec+jJEcWPFLGwkRaqokvccBqAZcf4H1OMPJeEDvv7BBIocNfeShAgrFz8amE4MKpc
	 xhNbxQx4d28bW2SXysBr2hzkWYpYoP1VNGJFXOOOHJrFlLi5amFSYNhTT9g/Xd9N+/
	 yDwGmU671FCVMfgyqXMOeo2CPbRoMSK11gmrXm39m87eaeOXHxDclAXGJORefnaQTo
	 COyR5/22Hvxm2cpPWDaaNyrPjuOXaqUcqxhtXjm1i3zUoFw+R1NWyCMbQ6OaXJ4WWQ
	 ty2+n107tQbpcQzPoMQ5gBWeWjjYc7u//ol9JFA1jWH6eW8fczdUAIVM0FeIp+5F5f
	 vN2gs2FvQcBsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A2BC83F1A
	for <ddprobe@lists.linux.dev>; Sun, 20 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305059358.21014.17809632397914700238.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1a8ad3fe87a63b0719ae9069d427da2dba8b274998846fb3484f7b4aeef37ac
Date: Sun, 20 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753050593
