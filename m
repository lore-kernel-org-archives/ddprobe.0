Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD23372
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750745994; cv=none; b=ThR/7RtKCFYz/qNOYgLSm4EsPhS70bWRK6+JzWuLu6Jxv9k+NloFhpwsjKC6Th+/eKYgYhsakKztbofIZT3oWRx+QS7K7bj2X8gb0/8iQxQoYfFpE02Y8UJ8SRORUVKRgiEX00oW9Kl1zvptD/Y1HKZvJaCEygmXOzCNiopsJlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750745994; c=relaxed/simple;
	bh=nNhmyBzJ/XtYaCHrAJ8QF0CHBPSSMjYLTCSZBY34zTc=;
	h=To:Subject:From:Message-Id:Date; b=AoMJieh9Eoi6i6rhrd0sDkSbEqe5GdCXWG0d7tuy1UKuvdF/aTd6qukOgH3Kvit/YYHDq1GKcXKF2TRv5oXzyzRQHYv510UNahDrUgGXOyDrGMlzSESpzu+amXidsT1OYfjNwWT/cMFYcblbl5J9L43fs4IuGY78+oI6kpdF7OQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CgS4+72I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CgS4+72I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750745993;
	bh=nNhmyBzJ/XtYaCHrAJ8QF0CHBPSSMjYLTCSZBY34zTc=;
	h=To:Subject:From:Date:From;
	b=CgS4+72Ixuv+tg6JHXGWhmusKs7fKP7l/i1+krK5s9ps5WUyPgmuqNGx0He2IBugv
	 /7WY+58hX0RxwNtHsZSPMhVCkupP+38AK4NS8oZfffYLnHTK8TtJHTyS7++prP2Fh1
	 wKR6MAW/bDWUPfCT2sKMn0m1lECZ5QjROkYwYzzKAWo2lY7gMCdccJSz8R5d331su8
	 eEipDu+lirBysD3Y6ktVHkMEv50moSC4zSX4o5MBr4kT0x7fCEJHaTI16R5hb3bseZ
	 vC6V40UHZBDE4WCQg6Rqf4sC/0qzXnT4/BkibDsKEn7R9U6MxPYG6VS/GNpVAWjfDQ
	 3dYu3p/P5tzjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB04C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175074599357.3570.9843758910509089467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5574d599e3f7082de5c912ce3301daf83f73b53f69d3be49f9ef54e894101fd4
Date: Tue, 24 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750745993
