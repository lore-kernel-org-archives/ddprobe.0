Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E91376E7
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:38:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718120303; cv=none; b=jHb23/fI3+RMERQua+ao2JgIlgvjdUQCMuE3C3VEQ/jtv5YkAp5MuB6Lc+FjWUH2irn/1MiGpz7hMCeNhBfKb0j7zyCMkymoS4R6vfR1Vixh0WfCvyi97VwWxzSDrREUdiiepr0ail3hixF5kUxx9fjF0UM1jk7fALOEQDs+/ag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718120303; c=relaxed/simple;
	bh=mc/rplpy9OjQLVZEriM1ofKSQOLszNBpsCA9bWIw+OA=;
	h=To:Subject:From:Message-Id:Date; b=aiJk869mplSNEIgR8kEmtuKLCHIy7fQk8iCHkMP8Zu439MTi71L5FWBnxpkOdrS564qDCiphpxkuuv4KKLwiEOa1Z+vHV7BNALI9cQwY/LPr4K9AoAucYiQ964+9tUoVwuAhNX+qdmJPGIUCYlpM4n2AFTXW1hbdemnQi8xzm3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4lfrG23; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4lfrG23"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9DEC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718120302;
	bh=mc/rplpy9OjQLVZEriM1ofKSQOLszNBpsCA9bWIw+OA=;
	h=To:Subject:From:Date:From;
	b=k4lfrG23z43CzyYvfwdj1flZ1Fxh/99eNf2m1SoRn+iFHeTKaDLGGs3xzd8zkZykP
	 B0wa/wbJbzmQppOjJqW86y7D7QD+2jXTpeI3j3UjZOwUC77Pxk1UOaokPChZOpfbae
	 Up9yqsOv7OK+ISsopUwWaYhsDpVsF0Q/PT1ViV4lBb2G6AkpokqQ4HtXky4ZAWNnN7
	 S0E9eTD7Xvel+2368wGza63ms2+imXd3LdNUTEEL9fk4QOaFB2bBnWoYxXmxyxCI1g
	 5wuivA9Xw4xCl2vOLlgXKlSuEgSW0CN5LinD53uAX4O2dSC75X9yh2QgxAu2d+hKYz
	 vbR3cl43F6yfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB16FC27C75
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 15:38:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171812030275.30784.5192031980573365908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29274204f1a2ace6ef3c24e7c5b9037df7d61f9154b68cebe193d41da579c1e6
Date: Tue, 11 Jun 2024 15:38:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718120302
