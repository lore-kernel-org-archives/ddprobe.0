Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40536373C16
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775583935; cv=none; b=CFYWiimb7cjoE3IMrcMf+X9P6ItKEMs9QTCwUqvMWO5M9qtXhJvc4dnZEfFpSiL4KXAmDRua646SBy774G0vBCpUTCJPaRyRFHUlRpD2Tyw1G2yeDqkPTh5MypFVmJ39k7hIIFlNJRC4CZF0WNm2HpLsoI9rzPRGiWcb1f+utiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775583935; c=relaxed/simple;
	bh=LXV8JW9PzB/61PGLjgA3djiMsMC9v7h/r07UScF9ovA=;
	h=To:Subject:From:Message-Id:Date; b=HJGcZOyBPzVeredZjLdvyJGZlyR8vQA9JEPLJTEkUAXdpKJ4z+Z2qF9kU4wwSp/atVQoaPWmAvkvxp9vIgkIQy+HR3FFg6kbBOqDexRg0tZtnPvnqAWkgnE3cbIR/wLtZakBzpstimggp5J9AQfVXvoFcYkczIp1636gXFfddAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mgjZVS1c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mgjZVS1c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0959C2BC9E
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775583933;
	bh=LXV8JW9PzB/61PGLjgA3djiMsMC9v7h/r07UScF9ovA=;
	h=To:Subject:From:Date:From;
	b=mgjZVS1cYX0nDvx9AWwvjZcX2c+cuHyBvWLW7WUwwnMzTiRYNfDz63lSciS1UzhzN
	 LvGkpPeuJU3zox0Xcuknb7pStGAiPaYAl1OhO93C5RdV1T2xGr8WxLbieXE//nM7ZN
	 wXBoTKXmGZRWtn5XedFUmWD2x/8c5MKJnznOq5WK47TNrkEuN1VkJ1uXTHTVH0G3w+
	 xowgyrUzRNzAnDy6m5e/aQAV81rl9VjASTv9MNcmWyTAP/vT8kqdYbE3kK4QxzktjS
	 bKkOqSn6sY7SZNSg36aJ6SGVzvNIR0TOOdluveh4yPMoVdOkkxqoI7k2ryKIflqBu/
	 2N3KTII2ulD1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBECFF5126
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 17:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558393368.26366.1906108335021423254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 581f847ec4f87b5a285509d588fbb5d388c8cd6bde7af5fd6957fa36d7e719c5
Date: Tue, 07 Apr 2026 17:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775583933
