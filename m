Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DEAE285C8B
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782306454; cv=none; b=pgpH1IHas4P+zWqwr4SZ2ld2pT687ykRKxKuucLbUKEVg4v1FfflnRmhpXHnBfuhr40ZRsHqLhQSG3L/ZY2rQRVKlchrI6RNafvHrlXk9IwluqRc6g7DEAD3DT49y3XVEyrIJBJlq0/gVLMI6+kcelbu30BO4mbODQvl5O0oq5w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782306454; c=relaxed/simple;
	bh=z3NZ4yBsqUdc/Ya/hujQh2OiInPBJbFPuX7urSMeGi4=;
	h=To:Subject:From:Message-Id:Date; b=GTwOKwGu8bIT49KnIcb9DPBmiWbeqn+n/L4kP4bCkTZHGTIjAmB2U2Rr+pbLmUsX8JGFwqfdz0+vePwGcvuk7xrZvQ7PJkHicEdXSeKmxDQqe0N/r8U8l36dsSdRWCTreKbLE7uX9lC9MSIFIxnwdQ2ptd5ctI3iwLksn/Ztw6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aiN3FCki; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aiN3FCki"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0BAAC2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782306453;
	bh=z3NZ4yBsqUdc/Ya/hujQh2OiInPBJbFPuX7urSMeGi4=;
	h=To:Subject:From:Date:From;
	b=aiN3FCki3QeL6XaTHkC8rO3JN8ViblfLsi7p7NMoZDMKSl05aJc+QuyCX0xehfl9J
	 IRj1i4iZAcNxKdzWvbnVl1m3Ij16POAHVzys8YNtaslKs4swxcA1m6EJpkIJe0FFPZ
	 cJBW8dbJATLRqfYjAvC6Lne4ILlMEAW3aVl21RPv+Bmx91Ieq61RHndeiNevFr48Jn
	 KRGpCzynE8CnA7qYDcIXEHPKZCSDYeQeyQurn2m8uJ16dtMwdim0q6RDu1ryQNrJHT
	 CpWXn2SXuA3+CRT6v+2FKC8RmCtC57C+kNwfUh9hXnCW8aLa9FSzC7y0fau3TfA+Iz
	 8dt0CO7fsnYYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B29CDCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230645372.10089.2506466085045551457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b573ee795c4db3626622b95ac15a28c45a1cb525db21c7d4acec26c34391271
Date: Wed, 24 Jun 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782306453
