Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0783368A8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777883854; cv=none; b=W+oo6SxXpgU7Sup5thf92fbV6vIQAZvmok6N3H0vbCKuSKk2vTb051fLLWUFsAWMwW3UIfOJWA7Kv7axd01/AgZNejAbyfWpE3CxbsDIeNuEdQ4eyxTQFHWRYy41q7f8lVNLVAhWHtKFCeBzwbTXlR9tVQudNXCh/4F14L1RYak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777883854; c=relaxed/simple;
	bh=/OtICJbsiProamBq2dqA6Gw95MpJbLM4pD2hcxZBOpE=;
	h=To:Subject:From:Message-Id:Date; b=SuHOJweysZOnmXbmjZZKACMqniBCkcnogNTUPr6/QoIBAZ3SgaIq5MVweXYWC6jpnhDAUc9tjJ4FuwFWKPiK7q9+Fq2E6O8y86KondySQStlkilq8vTwClfNUDxJcW++20MQhCUzsFURnp/OYvJl9lo3fMPc3REUEzbxO9rzuZA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esij++r1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esij++r1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D45C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777883853;
	bh=/OtICJbsiProamBq2dqA6Gw95MpJbLM4pD2hcxZBOpE=;
	h=To:Subject:From:Date:From;
	b=Esij++r1kQ/DU9QFhznPy1EYKyMJEzSIEGQlavs+FMRGF4J3GDwAspVk7xaE2GS/T
	 XiojuocrQ2k/Nv7KTp39Q1wYawnN6MfdXnKjpA9P3KSRbAm6Z8Kw14u198LaxYklmG
	 kdknWTiEbPXan3u+WuJernHDqLgKZnZATBC8RQW5QLNTtifFz3D5T53wlYplYQu4kN
	 6za1A6oTLRLt9gnm4yafMLZt0Y2jSxBoRd7pK/BmFl0TP/d3PffE6brmx5BUuqZHLJ
	 OYQQy7c7Mt1YobL+/T7GlCmeUieQGNEqlKf2keu00j2T9WGuKHFYeeDV/uKitVwj9o
	 n+3RftGTMPBuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A926ECD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 08:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788385368.5766.16206173265228506585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3b41f699495af6bcd3970e29a3e16fdb8ae8977f63d53891be3843ecf6efbf
Date: Mon, 04 May 2026 08:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777883853
