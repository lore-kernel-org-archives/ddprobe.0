Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A03C1429B
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713709223; cv=none; b=ScDQ3c+AeFHsL0AB4VbFprZ9aK3c/0n2350m36vBTaCKKCG8mbc2W00C45h/pymqMRIrnkk8r9cCBvqFwIBQTC5prHBns/PCDPeF1kXWQEOS895WfRE1mw6SsDtU4eIUG5wBFiI8yAj7dIz4YkD6n02uVQ7ThcsSexdEFSkHwAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713709223; c=relaxed/simple;
	bh=yJA6WwvXDN2nOxs9u0cAd2C6+lDt8hk70FW/l0YbbGA=;
	h=To:Subject:From:Message-Id:Date; b=NQm86/zmFLUprnygDqjTwDv9KRLQE5U0/OoS7l8DLlySzMDdiUbCq9KtnzNYPecxXCIuqBKB8rf10sFKj4UCOjgZ9S/0481jWXQWvXkl57ImXPj+5iiifQwzXxpkjJitImociMhpbEjYSc9Ybf1Ue5Lcuq78NTglIyLGWDp90ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kcj2BYBL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kcj2BYBL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE5DC113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713709222;
	bh=yJA6WwvXDN2nOxs9u0cAd2C6+lDt8hk70FW/l0YbbGA=;
	h=To:Subject:From:Date:From;
	b=Kcj2BYBLXByxYYN633LJBP66BUNDBA/GY0YEACXBxNCAsJMbZVbX9I7AY3T0l3Kxe
	 t1LMlpYY+hOClbB7p1zwotpuSowNMyw7hiVmhVBxa18RBb+RHd4X/LRpalONfaBEAv
	 okotxtk1ysxXRMpRJFgJqHJAvNco3GlYgMFNxLbMcb3wvk7bppaLo963e1CaIVKxjx
	 bjMFqftW5/hKh3/f0r/nZl6L1btuIxEUS7wIW4vDaOZSOkC8vKFjICTlTBxFPS/y30
	 8d6oR4QHXpg5wFKNVYyn0dzImV1NFZpHTKM/AEgJ02Ao62EaZjHpaiUZ5WTpVDwGR5
	 +G1fgQj7YQYbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6FD8C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 14:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171370922280.23559.1431138262532995653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e80da97fd44e0da67da3b48ecd855147eb35505cde715797f74b970bbfa8a693
Date: Sun, 21 Apr 2024 14:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713709222
