Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F49E340A6B
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781106394; cv=none; b=LHDW/2N3KT+rOaebaAwnbZnKef/rtMYdxYGh8l44oXtGvHGQnmGzYStiDCHnnT3Un1oPJioLpwoNpsVmNWlWNsHL3ZcfYjwHDakqrqjf7qEyMFRVT3OBzns0zrX00Y+SNxxpJ+PLHvxOdxTY0W54JomXr0nbvvSlAh5NNixV/t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781106394; c=relaxed/simple;
	bh=oTA4QTllA2GknKP25DevtKJPIjFohNxX7ybQNHsJKDs=;
	h=To:Subject:From:Message-Id:Date; b=lmg9cZpxkkdcQAFkWq/WWVBmg6Gyg9jpN8MH2GPvRr96w5KK0MRcePiXVcRKb+hzHvXmrv69JyZKEaBFl64EXFChTpTKd+jvEW9guRuoYUmOPcONNg79xIz/1T4qRajhDjstbVOfSSJVi9SHddX+TJJVaOgVQaPW23V0I4p3zFc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lewfGbWu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lewfGbWu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDC41C19425
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781106393;
	bh=oTA4QTllA2GknKP25DevtKJPIjFohNxX7ybQNHsJKDs=;
	h=To:Subject:From:Date:From;
	b=lewfGbWuAZyGCR/UJe33MTj1MKNB9ftvchkiOKR8qXdDoC1e3tttE6FmzT6UeR3eU
	 wKBuAKKzuOxeLJad+krq7YKnwU8wBA2KK6779u5JOKFNON7YXmdAi22Cm709atFsUr
	 djLGZO7bF1uBdKGHaxPnA4g4iL+G7h2ANqNx6ZQejwiM52qOyJk6iWCuo46T56Wvlk
	 5VC6ommx8XfZTFtBUhJVqD+Py+4IlOWMjvWhO38HlTY+uqvxoB2rGFiJvlSAKk7TWM
	 qEJzVLe4rHQFxR5adyaSvYDF72h+j+HEzZxDVBQtTG4yi40J2yj6y1nKUBTOCmzNTy
	 mx3Jo6Rh2IurA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A8CD8CB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 15:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178110639369.3958.866276890420018632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 222132007612b01b799713a9937fb4e61b552513f4223682ead2537e608b602e
Date: Wed, 10 Jun 2026 15:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781106393
