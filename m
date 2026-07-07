Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4677B1C84AB
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783414714; cv=none; b=jnwDC1cSYzPhqdGLkdj9J5D0UsQ62ReG9oQSC4kaj2JaQ+X2ugLwY4PxYam2yZf+21F0adLxDFhMXgOUb2Gz8YIDhULRudIGhZjUoWcoW8VGQCiHvGPgCrivCeiBmqzBf+XEWcS6qI/CHtyB7jV8IoOZFt1Ti6NOpKI2TRFD60o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783414714; c=relaxed/simple;
	bh=FK/E1aLf0fEed2HLoaBDhHC7OH4EPudBxwrDvfJbeZg=;
	h=To:Subject:From:Message-Id:Date; b=neggKiSouPCMXjBYAfSTHGkbHOPkwqPZKV89AXdoL0OFz9dkNqkvyJrO73lqbWITBLAWvYZidx0NB2sp0uSpCnEA9uDaUkWyWsIiKldupb0ga+cVg3g6ocr09SxVqRwsn3CSwhS9KD5rlV/OxNfaZauN4SYf7gsVvMneG19fINY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z97MdvBO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z97MdvBO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07BFC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783414713;
	bh=FK/E1aLf0fEed2HLoaBDhHC7OH4EPudBxwrDvfJbeZg=;
	h=To:Subject:From:Date:From;
	b=Z97MdvBOOBIKWu8SqQLRB3uMFnvk9c3nmLRNtS2Fx6U6Z32FQeKzWthQkplscxfG0
	 GXogybtIbDH0SfBHhiNm9hjRP0churfjn9HOQH3EKiWYS9J1duWNPmROLpXr1L72LA
	 nhn/aw+QNed3UJeSGzOk+fOkKuIG0TJRhvjMV2iD3KxOE/IyzPJ40gciMhqoZfSv4u
	 ybobJK7FEQMfbKRAxMdbKqFDbTK7VHQRZkV2hyqYjrTv1e6Suo1QDFbfV/lclnefQ1
	 iUcmwCXmV0q8r5McmyoDewgyx4PL4SQSggRSBMLnpZm/u4+7JeI4lVvhWnnIaGAbv5
	 2QByojNbU+99w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF43C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178341471369.1631.10789263728079250620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e5c8970070899bbf41f3df95aeca2d62f32fa45ec91126623ba2070ffcab4be
Date: Tue, 07 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783414713
