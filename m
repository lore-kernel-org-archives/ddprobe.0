Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297842C9D
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755308394; cv=none; b=dAw+Pktd+NQiVGuglpRQfXfAflPM1s5kOMV/AKu84YH1C9mlSodnF+lbY2nzOLQkA1kc1LUwzL2h4S1q0+J7LFaVbWEaUkm6uxsYO1tGaR+AClcDcBxKUiH4D1VC8xDfsjXtRVhX8HKvWSaa0vpaJctgLer6dIjsntCo++6zCAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755308394; c=relaxed/simple;
	bh=vekErDzMzsG9OrzSMma+zSpc3vMoM1zYK1sJjWcY938=;
	h=To:Subject:From:Message-Id:Date; b=AmHsbsYnJqq7Je2f78O6pQf31L/gyIwXL5S+zMefHkGKoqOxsxpoST/9Z3e+a5ltVbIKKEYFLF2oEf1JsAcaRcrsMRIV/CtPguEeBuRlw2dpA7Bv6OJNf7aC2R57OXPGe3Yehb1dh9apbfJfNJI4QoZMI+/xjaaWbiXtVNovC8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osnff/xV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osnff/xV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A149FC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755308393;
	bh=vekErDzMzsG9OrzSMma+zSpc3vMoM1zYK1sJjWcY938=;
	h=To:Subject:From:Date:From;
	b=osnff/xVfakG2jzHcnmgzRhAPRT1hDd1X/6MsA+tziDY9HDam3eeAp9q5bL2mfbu9
	 rjTC5NMqToV5+jM+da1XdZfpF17IPOD9D57w46YBRzFQP3fXLxxs/adXy0zBBEVIFU
	 SBWDHFosbaxp/1gO/seZi6ctId3UkR8HG6MWyDypixuF6+GF55rlEROmHgIzGmY/QU
	 2djlN0sLxwD45lOmpluOXWh0uWPP2MIBcPIN/028T74oiEWWlhggV4H5lReNEP9Eri
	 5DuLybiKzJ6n4uFakXvqzpueLnvat+pOjqrls6WCHXMSziIskqXRWXJlf4825a/ubg
	 MIcCPQEaXJG5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10ECA0ED1
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175530839357.29586.5805742394081640754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d48ce79772980afb5b853f456cec16320d6ec5a8436ecc5e3176b5bd5d68a0ca
Date: Sat, 16 Aug 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755308393
