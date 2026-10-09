Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6532B4E1C79
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791564634; cv=none; b=q0++eNDUrC8yb5q63HE1uoghO7r38gPetj9GNxCMg4kb/49r2pOOadO4BxrPSJgssMG1OQtOlpbvGif9hdvJd57ex1k5hB3cYkh9RILdl5chBedl5LSzRNE/o8043yK74E68faQagNSlbo6rZQw7DkND7OQGxMfg7jS9kwHocYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791564634; c=relaxed/simple;
	bh=PGbM/4AnRkO4H0p2RTvEcDicUMzKIY1k+yioFSALClA=;
	h=To:Subject:From:Message-Id:Date; b=AcOL65NWzUy26z8Sy3Brf9js9G983SxBeyRMS6yodWdWwikrEUK82e4oIFc3xTT8vBCQakuc/xcZusS2zmV1+7kWWyxcwNBylqZYFJPCNTG4vCk1WZ5CNU8zRNsDb9ak3XWu0xEKBV6YZQii2t0wWY7mcUIVuDrTTtXRMOQqaBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9/011A5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9/011A5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD96FC2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791564633;
	bh=PGbM/4AnRkO4H0p2RTvEcDicUMzKIY1k+yioFSALClA=;
	h=To:Subject:From:Date:From;
	b=a9/011A5/6YYS4mR1lhzyeoTqQiPtSFr5kq7F7g+FXP+54OzVEWJ7CYbbAgHzVyxT
	 UhwXN4jWeD3TKURd6QhDxiJrRPgWG4/XjMO76sGqDS/aZ2l5kIXJgZAL7XLKoIm6UL
	 Wl6xSKl3NrGVaIPBMyUgAwenS7pzieiUSAjYNr+pvotSh3kuhyi9WgEbJVLcwMB2xW
	 BhhgXdM8k+SK7Uy6SM9TjbTivT5t5pqiFW4xkdFG+qgHQ3IGo6XIi7sx3zQ6bjI8yV
	 mzsRoYrUgzo0Vi4A6B9b8pKLooPucD3BJfGF3H6DxZttvNUovYNjnhz9cSYTXG4WFD
	 fOh6pRpWMXyYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B600ECA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179156463373.27867.13832249389702679705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cda9ede925d1dd800e0b6ab1c2e88d224c7cbb1b3213ed4abe350801764fbd02
Date: Fri, 09 Oct 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791564633
