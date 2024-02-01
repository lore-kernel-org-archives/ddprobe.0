Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B4C32FC29
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706823497; cv=none; b=SpnfR6jyGl8MDzDp16al5MmByhaHSXWJ7YGfVyZSp1EKRo1ISQmkd+/bQ7IIm98foUyh3mY9ni5VIBZfgctXXFzcJwiRXRGld2A/7EJdt1ND49fLxI1KMFSjk74jy9veimxg3LH/vS4XbXmyuhE9XFXjGTsAxoZnd5wSM9nVVug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706823497; c=relaxed/simple;
	bh=uLPmKMbqOtSlGGNRqUadRN8xypykXsvm9QPeEZM5rGE=;
	h=To:Subject:From:Message-Id:Date; b=e51PjXGxzHhgogrLP0RnZ7MRg9sSjG6k450QERtHTMZlYhjc+3tsr3dLW4qfRxF/Wwno0jSJCxQLSC/uqe30Qy7Iom81UjHY+uAD3drJp67MTV7txJNbEj6IRMb8XOgd9dOQGm5uxb5xejooUfWSSkj8CAPqt3tmUmfjGOGZAGU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKNG9AcD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKNG9AcD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C86BC433C7
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706823496;
	bh=uLPmKMbqOtSlGGNRqUadRN8xypykXsvm9QPeEZM5rGE=;
	h=To:Subject:From:Date:From;
	b=jKNG9AcDh3tLI5I7e7JVLtgXQHWs2HABazvL2XBuF+XkKKD54ISkbc5rkj73f9CL5
	 NqeaqgH8e92UZfC68X8LUduG5JlE3rTKgIMmmWujrPs6Fh8oXmtR6Vd2TKsa7yZk7r
	 i3+8726p63kzjtc3sZzBxuRfzFTfnq2JwScPluL4e9qwJIGQFKOCuxE/P5YY5rEvgd
	 TpDk7/xKZLjqSG8XB3Rere3tQ3OLjhJHqRPSkb/k5soF9fH3YwG1f7PfGI+LzhG0+E
	 3JqPK/YGVtKN/vbJJ1raGfz5ugCcP5pMkEWIGTxLp9WesQqhEQga3VjeYkaUlBmcbE
	 NDHiGDhtpLBtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E383C48286
	for <ddprobe@lists.linux.dev>; Thu,  1 Feb 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170682349637.9672.16785211107767397976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a10d38866f0a9d6a0a2becccdeee923be88ac68beec56a2875b5cf49213dfc81
Date: Thu, 01 Feb 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706823496
