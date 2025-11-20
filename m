Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D097230BF8
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763638314; cv=none; b=SyKBH/hIpwg7i2/GGVgE8EvfEEr/f1DkjP6iDaWYUh+0v19tlYm8DTvEgORIdqP/zLx3lZFRcEKWxVYnPSA6I9JvCvFG2iU3HrL6bJdowczYJ/TSnqkeKQDkG/kD/g6gBk7nV5nT9IKQOArbxx/RY/AYmmb8fb1cxHc3EJZ4mQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763638314; c=relaxed/simple;
	bh=Zd4tMzJg1PHsjMyw9JZiNqNXSc3PpNSg2cO4AkXsON0=;
	h=To:Subject:From:Message-Id:Date; b=uKdkmW6wqSXj5OzhHXtMH1AOHFzRyNS9EQfvL3LKUcsI5Q5MHb8bIC+neFNLMhx7A+t7KQkFDboMISziXKTUnf7u8Y1lmxCwAWXqopvwkqph2ftUOy+llGlLnubLaCMM8XUK2oG/kMlt1XWbpI6U8iFNiyoLa/vun8PVYJt/FOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uUwMTdX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uUwMTdX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC7D7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763638313;
	bh=Zd4tMzJg1PHsjMyw9JZiNqNXSc3PpNSg2cO4AkXsON0=;
	h=To:Subject:From:Date:From;
	b=uUwMTdX++1ca1JmrC7ySgBELJG4BgRUNpbZWprtFtKiuI7JODIcFv3lTzDychVtLr
	 rRDAkLkM/vE7wyBE56Fhj+kixQv33gpPdbpRFHSXTSo9FV/7h2+GIVyUb18iFct2qD
	 vxCRxO5mKEGdmcm8q9T9fmcjpMSkC4pjS9k+0T9cQnfsMzwzzEbiFK0FKxgGwYGYgP
	 UtiSQg0NC14bTOmZhPVZryNrJoljfUOP826QMOrDNR4peulko2nyrTx3kPso0IDiii
	 1ijy0Mdp0elHZE8r1YkbkvMSZof2RxptD4LqLId3pOg70NixMMyoqIFd4Ncx6Zgbg2
	 DF30w4HP1aUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8BCF8844
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 11:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176363831361.11969.1909392795281200342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bfb4927492a69545a092f8269461550912d5abe7f70cb9998ec70250e7a7a6ab
Date: Thu, 20 Nov 2025 11:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763638313
