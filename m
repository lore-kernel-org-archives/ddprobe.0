Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F64C30AAA9
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783107514; cv=none; b=kRkbXqUNPDcagl4PplXn6ZotqSLofTvuopQBMYW+VzPGLlcv9ps6nYH/7pg0y/5G2fqojG0iphgK7IedoofvucGHXG+2/7tMC6QzV1bgzdu0yBX3rw/Q5gzVAlNSq7qLIeLLN6eFYL7rhegi84Y7vylHz5KVrfh47wKWiYQiK6g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783107514; c=relaxed/simple;
	bh=bgyqtXceG6RkipvedefgV+OS9DtLVh2K9+kZxhnNQhM=;
	h=To:Subject:From:Message-Id:Date; b=fFbYX6lh/iHrLkdi1/pIDD0DCaB4NKeY95/PjPs5XXhKroF/5hfVE2ior9sxgz9WRRGmFFc1Yz59ZWYE2VBTjz9ne/MRo1VZhV1MJTlLr/b4/9HOZo4Vj7IIK3kdcQ6V+/JySJJyTbkBEv81vo1ciETQJNXiLrYCurBIz9yLTyA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObZLUaCv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObZLUaCv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D190EC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783107513;
	bh=bgyqtXceG6RkipvedefgV+OS9DtLVh2K9+kZxhnNQhM=;
	h=To:Subject:From:Date:From;
	b=ObZLUaCvvKVpUqZ7UUaH76bOSuTGRTLovXtESxiWv7CbLOMfOBvQQkRUlP4NuNFqZ
	 xZpXfFNaWbfeCfnWf9uFImvBwbw0prPGts3MIOSjYCTZ11t21XVF7SD882Vi+Td94u
	 RR4THLhx69qRrdX75pUM6Ws6RQ2DOfS/p5e0Jax+e1sdRMETJfNMJJex6Ql8A//UBL
	 6PnHA7H8TYsYuFAWZCwk06jmpwj5pnj74n4PLU+aeFEj04yR/ZIOroH6eMseELsO0j
	 40Kfev1kdRWrJoJtKYMVFpH7LjMORHou7NYSOLwQGIAsLHNqKmItHiOjw/vBrsQ58x
	 6NjjjpzJzx+tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA74C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178310751368.16113.5169219129461136034.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15b047cdff5fd37e629df0ccbcdd25940e904cfb8039213266ef046acf04046e
Date: Fri, 03 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783107513
