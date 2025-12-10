Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E472186A
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765345974; cv=none; b=ePeuaVrfKj4zHjC0GIaXqz0IVtbVqLLlPd2i/BW39AI4ro5vGCfRlt9a0c7odxhvzvFcxe/OBZzfjJG7WzMNw+/IJ8xKvSMhmZedBkENj4LHaa62jTyQrFi9/Zs7lj6XmQgNce3pxuZzGDK31ooe+MUSqZ1EMwwpGJXlrmYoTQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765345974; c=relaxed/simple;
	bh=Vy6dHnljzZ1XzoBvoVWLUKfVcB+rqHZiyOKFwJm8xoU=;
	h=To:Subject:From:Message-Id:Date; b=uK6ynb4ThiF7XTJ940TL010nWGndf7hSeQm7pMNIRg4rJ3gklUyiWE5oiEWzS2oLumTSt6yB0O6A0A54iy0qwm+IrGD2nj5x99hwsaYcXydZZ1YlnhS5B+70TQCnvq4CWEayv64yP3+Lqv59e+kgpFYzIK0wt8ae/D20Y/nhG2M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AhQNVHcg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AhQNVHcg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE31C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765345973;
	bh=Vy6dHnljzZ1XzoBvoVWLUKfVcB+rqHZiyOKFwJm8xoU=;
	h=To:Subject:From:Date:From;
	b=AhQNVHcgtDR/QzgzOj3zP+2I6SkujGvt8sDr8hmVNAn1brWPSt9cGQN2m2tTDyEUg
	 atkvMsY4KDuVC1lcR5TwaI3h4dbdt4KoyXHl86lSrZRu8lr93tsrBZJBOLoaCucFiL
	 V8FBjlhoDiZTL+44hl/fO5oh1+Kl+F1fDukDyYPoQo8aBfOMSaRrZlsnIcxA/AU5x6
	 fE8p1OtoG0aywR7VPKu8ntDiZbEk06vPiC7F+owxpJcJwa6Rs9iTk6u9NMlAIVWbp3
	 Gw8eVNH8/o9IB2s4zsNuq1LmXZPmyFInrQB5qzBR76Y6iA4rxirzt2Z5PCRw8RKbAX
	 AGr6i50gih7fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9789DD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534597358.2726.15135621532442757735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10b0e8c1adb567ce4e4624015e0cdd6dff6df66db7d5d71045e775ddb9b535ba
Date: Wed, 10 Dec 2025 05:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765345973
