Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4016E72617
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779409354; cv=none; b=DsmUk+VEptKp9Akj13KZIFT06rciZE4PiJ6yYNnGPVh1GKU06EmBPBEVUAA+4wiBYG0x/hUVxVU3nRbPb1dbg2ial/uWIf2P2eJAXOHgB2TUgipqpY9/lsyPQRURxtteLGUQxKIqObRyueJmgsMMonYA33hpYs5auxl8cVP64XI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779409354; c=relaxed/simple;
	bh=0grKsh0RfIGYa3ZEE1TNdUW4eUf2QR9Tja/p/aNU7r0=;
	h=To:Subject:From:Message-Id:Date; b=fmt+HPT5lyy+wQ8xkHM3q0kF2vXZvkuxANGde0QOSCeZw9sHG2mKJDSksyekPB4VBRbLkNBK39J+CojzVjsS8MnWRFQeBcB8K9fYE8xH4qtCe7zkon5r8+1x2h9PU4MwzX7xuDd8+ViYikTpRXZGyowID9FP4zKJda2pefuxxH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZrOi7tqQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZrOi7tqQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8076C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779409353;
	bh=0grKsh0RfIGYa3ZEE1TNdUW4eUf2QR9Tja/p/aNU7r0=;
	h=To:Subject:From:Date:From;
	b=ZrOi7tqQUBQxWw0uhbpQYXNHyxjAWyZQQGQ1/2TpjIsko16MuXJNqTWaZvhaTt5DP
	 RkWmy+7jQEXewKZ4zZsb7UA2vz1p/cSoAcKNh2+R/XjNGglUCUQFmE9Kq5cRCYNz5h
	 FE3HTHWhGeZAqVFx7GYO8u/h5j7ByzXldq7F7ccNUYSBFw33BwgwWP0VuehJV9W+p+
	 RUum6mysSEkVexF1/8HHR8Cl9vT/IGuQEwpo50+iGLcNlBtJ/CAik7sLNLK7BwmBXw
	 C07Tx+1dfG8KvVKUMFjpaHqjFep7GytZXdHqibnLKcoQ2Ter3ZThtF7Q1PX4rW2b1Z
	 zVGzDPW25WACg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC60CD5BAB
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 00:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940935369.8978.6675266104848789684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef5272fe588971a9f3cf979a7c85db0a82fb36bc108a3c5869eddaf38aa99832
Date: Fri, 22 May 2026 00:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779409353
