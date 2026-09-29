Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CE0346E63
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790670034; cv=none; b=eQjwgwF20DCrudA80l1J9r6mHIPg3Km7fwBrwEGqRKv5ChwNgdfDIOtP3rOdRZxGWnvnLUX7jGjaNPtNqfGGkNjgMqQk0jwzj0T5zMgaq9kNa6nSHtWy/CE+s2B/kUQBezisaXDQpuhCqPn054ojQ9qnOVo36/2v02yZcaM0mD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790670034; c=relaxed/simple;
	bh=8LZsLwwY/OCWrS4K+UYQpfGI65KWG3FM9n5RtXI3im8=;
	h=To:Subject:From:Message-Id:Date; b=l/F339aeZB5CAvyKOu4pc/TiFYT/TXoef/42P1+NCzX8RJZbtvJB9hJmJPJybsS6EPRtFr3JuGatmPWlJB54UGtWgrny62rymXoSBC0EksrTBQJhP2YaFZqpLIZOqx/Ba3q5f+MIfg8mMzM+pWkIuIUq0E1SvziClde+ONa81uk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKIcroQY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKIcroQY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8BC3C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790670033;
	bh=8LZsLwwY/OCWrS4K+UYQpfGI65KWG3FM9n5RtXI3im8=;
	h=To:Subject:From:Date:From;
	b=lKIcroQYtZj+qsQ0o+sXZ28q9e2MpoFdr9UIXO4XQaMdH/eTHzSV3gfMirkqv4Fui
	 uC4Y7iFw3DVl0o9GXtGngSnLPEAFAr9Lm/XK/NGHiXOBcjO1WrHiU+05t/k8S7EzwL
	 OLnO4z9aazzNEVxR6WjQ+1tJs/WWYr5SBtdS6YkhtUgMir8o5DSS/bCx4+7jFqsxMQ
	 gpVdb5SxLxaTfnoepbg4tvGOWJMDFrjCIund0Se+SEbbYG0LSldHbsZW9IMLyyq3di
	 aA5mNr2HGgUUmSppceUfZm72brT48mZv19k/lnjraKq+jowzzbCq20sCoX2Rg6FwPj
	 ALOWzeP7R8YZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0001CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067003370.2895.17114449295420724758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a312932fa06bb5cabdb3bc774a09c86ac315587b5d2295f8ec531268413c008
Date: Tue, 29 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790670033
