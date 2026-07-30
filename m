Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA0337BE6F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785397834; cv=none; b=F+uD5Pza2EU13MTCV+nguJShLq/wzTaTzQOhFFL41hDyMawFxcbDmsqi10OfEhxZ+Zgal0RV+cCQDPAWdMlLmXEaFccRAtH37lGZJCqPMCbGrC5yE2ZMQ92J4kZc5cbbnm5q1iF2gN+wDB5YWnYfJ2uQoqeeQ/k+xw4akhHbCNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785397834; c=relaxed/simple;
	bh=ocSrit39XuFIJdyYOzBvab3Q1mHFB3Z1pQNXEQzL+cM=;
	h=To:Subject:From:Message-Id:Date; b=WQqXmIegJjldkdNT0EXfXSgvrSVpv5O8KiLMh7xrBYsD8RWT4lTUnvPkns9APPBehT1DF/lVsNj1zJSi+hiOJkyNnxPplfLl5F8yumk2aO4iTPVaHHegzc8V5lHBzy6WcKuMdLlxz5RmiGBAcBIz01buphV+Mhr2+N3WlV0MruM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvyHXiYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvyHXiYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC49AC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785397833;
	bh=ocSrit39XuFIJdyYOzBvab3Q1mHFB3Z1pQNXEQzL+cM=;
	h=To:Subject:From:Date:From;
	b=VvyHXiYlPab2gbMHC/7wNJfp3ix4zOkqizC5Ns6qRk9ZtmJdi4N00N/R4MLaRnvFj
	 cDiypMpEpbeHjBtf70Y986j7OloXDNyGkNe52ZfbXgyAplmFpYNVQKWYLdVTnbi27C
	 +nutpP6AojHabVhKwN+eBBl3zGt9kfZZFGngRJgHYN0PmuPrpGDTMGfkTxv6YDHWxK
	 S5p8bppqm++GMOp7r6pbh2UiJZmfvii9g6JMUzTAwv9lsB4B4+SxxnERDrT9Sf25OU
	 L9h4fLPJyHzVQPDl9iCMRemC/bVs3Uj1J9Lk3RznDxKtnCu6tDygSvTFVnh/HMssmv
	 IR3gG4zNvyNNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA973C54FDF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178539783369.20789.912583495736580393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedb5b66d75a4ae134ca313644ed43e5a4c3fd636f4232d0261cda8397aed21b
Date: Thu, 30 Jul 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785397833
