Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2757E1FF1DA
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741087734; cv=none; b=Q0W6G87SnsIX+a8XAgHHYGkmUHAi5UTB/YDSi8rfqfHglI0iR8JXQ5zE784q6CuF4jpapv9lAiksU2+6z9sJzO6GYwYLCy+vgkxfaaFZ/we6oI6Muic4ZMvgjCN+7iRIKsrDMjLQnwJD/KEna4x/OuKKsV6OCpBLUE4UjA6m1Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741087734; c=relaxed/simple;
	bh=6HwLtwKZPEVt8j60fxUKPiygVZKqzCvm2aRXGL2zGUQ=;
	h=To:Subject:From:Message-Id:Date; b=Kta5SVWuuyUvwG/k1dMkga5dmZiU5aiB5k33MUuOWFs0mxNYpsmAEevdSYh0W2NAd5krHbRMuoY3NwKHhjcWAHaWLifa0vqdfMsMucU9gzvngKGTxwlgx8NphQasw1Hd02c2wiG+hhdaaQaJFCRTPsTvRtVW4LzO+Ec4ibTPIOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjF7Z9Oj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjF7Z9Oj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CA2C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741087733;
	bh=6HwLtwKZPEVt8j60fxUKPiygVZKqzCvm2aRXGL2zGUQ=;
	h=To:Subject:From:Date:From;
	b=qjF7Z9OjOKPsNuQhd+4Sirrm7q3tzxV/+6JIrjPBD0NX+OGuK1fFLrZFiukrB4QrU
	 X2KPxRi/Kgi7SADc2j1VrhqQdOL9aZUNBqT+cK05fnehHddOpuBFwOmE0x5gE2kZLa
	 TPk/MKHm2xN+Q83i0LVw3Q1Z7/CQscAhEdIKghdQEmx/TpgCkcqDC+sS3a6FPE8RRX
	 RtMdxPbDu7HuyrmVVp7uZq/F6QObvAmwgyeBy7NLditP9egGwSXg14epXdqFKppXSc
	 oFbdicRm7XXRg3ZqNH3YowKIKyVS40sabo3E8Oqtzi7labsjWQNER8uvtHLJ1gWu9X
	 N6dlz2TgeZ3vA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92545C021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174108773359.26903.14667547276024344060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9cff0271fcd69e2eb7b4f530835f880efd9b3cc13fdef2cb5c1be122d705af2
Date: Tue, 04 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741087733
