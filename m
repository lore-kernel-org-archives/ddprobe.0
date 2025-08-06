Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 120FB4A06
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754502594; cv=none; b=h2aXj6w8bawz8MIXNkqGxJK1IU12QIPpwsyMFvXKnldvtnmqbctey9lLlj3wsp8nJz+dmB7cPh5S4iXKF26RMbuUJKz7PH+KmBR/35FNEKuNyB9qCkwWTU4f0FNE6PxI0dNCk7d/Z0mBWcUP0sUJkWZI4ZVZdEE+mgyDH1bYm5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754502594; c=relaxed/simple;
	bh=bSZ+97UlcWMmLZqEO1x+YZ1qRv5A+CH/jevnrElu7Gw=;
	h=To:Subject:From:Message-Id:Date; b=FlnVCmLwbXjN5lIsLoQQw3iyYXok76ISInW+Ind9eVz0CbTfnMhbWLcbiXbpuyo/SfuFJ2EL3+Obs6dhVX1G5WtrqDhhNyZBSUmIixXscWiBzawnFifKQQNJ6dk3OBz+p+DW9yjih9kt0whjyZy2AsLAKIWl02z8bnXrwVi5VDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SbUhkGDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SbUhkGDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5971C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754502593;
	bh=bSZ+97UlcWMmLZqEO1x+YZ1qRv5A+CH/jevnrElu7Gw=;
	h=To:Subject:From:Date:From;
	b=SbUhkGDoQn/pYiL2aS83Ln79zoqwSPkBqZd07huhjaB3+eBneLr1+sqs/ONtfQDpP
	 LP0uRQuQsJRxEN3laNE2EZwXsCs9u+MruCjgcGU4rEygG5HD/jYS/prWJ2wYexKOlL
	 N75j4NfB+iH6xli3KMRYF8B6BZYURpAHgDZDvFSIAf//oLWkLGg5Aom2Xc1YtwvEW2
	 S7VaMLAJXmafbMYpMrEUEefB41ADMdINDcXaknmz2FXj/b1URTFKJLdWQqdMX3Lcpr
	 +H/HjIq3240/urt8FwvANoCY8ULaeFe+8Q9enJKewxTf8kOD5DVAdDxO5X4JjZwhW4
	 Ins+NrtXsmkvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93734C87FD3
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175450259358.7430.1713457903069601392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 704a7298e3f3522c199aeddc484b22f5a264773066e0622294510a8c8cf59daa
Date: Wed, 06 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754502593
