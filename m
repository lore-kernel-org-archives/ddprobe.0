Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F5C237EFFD
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787866834; cv=none; b=FZ6Y1GlPz3K6vsibHivnd0SJJeWii4IzIl7LH7u8PdQ5/d8KIWRs0wyGrssUpfF53vf3FYN8eLW2u+ASAyt/UzmBKPCdFYAPyPybNgCtruH14aEnCMokH15UZFLaFujm8e5890C688xJ0l3eqoN+gaACIwM7sSoKGXAEhl80fRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787866834; c=relaxed/simple;
	bh=EK6BaP93tcSXh8dQtSq+xS1d6n+zD8li0tCPGsXJ4bw=;
	h=To:Subject:From:Message-Id:Date; b=BR7FhRbP2jyHnmd8abOM0aey5JjouGYuXzKPpIjX2pH9hkDxDJMFFcbkpTa6Z0f6VygwK7bIR7bPRKi/NSNNog3o6gDZiw9CjS8DbzWLYPR6oCYZH5xA0lhqmsfNaONgwrDSqBsBeMiY892RDt1l7Hgz/4l+gReBdc6aC9jhVrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BfBU6Jqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BfBU6Jqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE2CC19425
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787866833;
	bh=EK6BaP93tcSXh8dQtSq+xS1d6n+zD8li0tCPGsXJ4bw=;
	h=To:Subject:From:Date:From;
	b=BfBU6JquRiR+Lt2jPANZBJPAYU4ZsT1s2UzBBOzLAdDsP1RWyxbN6i4M/iUt1n15x
	 hqZrcvG30hLqT8Yhn2hAJWwEAgT4IQ2ZkP+iFAJhopKpw1hG9dGOrci11k01skS0KB
	 YrP7UXdeWth0spp9DuZ6eCQrBO4pkFGtWOtVYh4kvH6wjozEYjNUcGimKfomhdoWJd
	 AbBbQbC9EgN8UHOWIM9QOHjnayxFeMSbZkhUH7ZZV49+7bxl046/YLlXUu1sGfMShm
	 eNlQpQgzulMfXOIaxehT5pA3z0sgDiP+wv6m4/bip5EU9GLa/bPm9qk//Hsi7bR7NO
	 CBj0EUeUlY6LQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A1BC61DC4
	for <ddprobe@lists.linux.dev>; Thu, 27 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178786683368.5233.15821872260470548767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79eab01b3b3c1bc656fafc0249c978042bdc663742743b0cec07112a0f3abb1
Date: Thu, 27 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787866833
