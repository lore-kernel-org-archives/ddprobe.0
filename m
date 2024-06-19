Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66FDB2139D3
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718769563; cv=none; b=Ofm/n69mAtU/2wNVQlnoy2tPrUoN89kNTB89DeNBr4zHXwClh8u/Mpu9pW8E/HuKUMxAlfuXcwb2YbWfGIAwg4M+QJoxXmEEJXNKGTHmM95qpHWmcsX41hcK9L9gtadD2WzP/It0HltPVtxCFNSIcTuoEMxAjzSoq6Mlti4FWfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718769563; c=relaxed/simple;
	bh=nGqsZb01Q7SKcEMpYJomfWwvq49bzax9JKRZw1rHtTY=;
	h=To:Subject:From:Message-Id:Date; b=tnMH7LraXDKsO0BTwNn/MAYL0e7E3Yk+OlNgUZafwX2TVQ413wd4EhG3XyAh3eak2vN7uqU1BiTRdCmQzysp8cD/DBtXTn9lu11LxcZgoj4efdtCSTKFJh+42eXerBR1pfYRg0BJA1/3+e31i0e0BUs1SZJP+jCwB7f4WQLgNmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ejG6u2OE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ejG6u2OE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7C29C2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718769562;
	bh=nGqsZb01Q7SKcEMpYJomfWwvq49bzax9JKRZw1rHtTY=;
	h=To:Subject:From:Date:From;
	b=ejG6u2OE9cJcZ1jPUXpdMKlLSA7mS5IpKpsQOp4B/sw2ntsXS7p6AVfaWKnxzMFEM
	 +yGfdWvuqOmpCzTB/GUj/YOlxxhY8Mvg2BByZx1yCLn5nf2AkW8NtxAhRYPLxS3gyp
	 Q/5Zb9VYWR8P3UvRW2QBTPVfCU1HQEwMcKmQdlLffGLQ8GaKBjK5SeJTh6jxbF2SzG
	 v9xhXJSC967ISuqDEnBxyG1KAe7kOByAQGl80cs43GQiS4LyjNItiBv15F0hbgEbFv
	 fSOR+5H1rKFaE+NUTfoK9KWFaCXnAyVhWkwTvu8FBazwyxY22QmjufpGIHglCdxQ4g
	 9lU03P+f82Htw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB49EC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 03:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171876956277.25348.1265395187258197893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6b825d7a748d2eef2c2038fcef7c676a45d9ca5a8db508e86fda4e4c92c9277
Date: Wed, 19 Jun 2024 03:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718769562
