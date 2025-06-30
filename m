Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2815C2494D8
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751324395; cv=none; b=XpW9kd5H5yg0zOcgJj4Onrco7PESuWLeRk/VRL0uyVKx8MwCBIhsVJxLrrWi53WtrcJn3MXFheuqJyf7Dyl9EWxc2a2JMMCSup+tlKIK3FwMlQiKd3loqp53TWvuErsJiCCi/mFaiGwVH9sGSkRuCP39hFAy7PpBgIO2L10Cl24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751324395; c=relaxed/simple;
	bh=VgQbyrHGzzOWqo2UulhVahkDDPU9Qg7QPVgPy8pBSiY=;
	h=To:Subject:From:Message-Id:Date; b=I7qp/G/iOgdG5GpeEt3P61bnORwf7JjCiMBG2W4cHDlYqrw/ku8ZT5qZ5l5sJwzQg+eMNFlvXFn/0X0PYyntLq0bpFk0jmMw12DuG6EZ6n+Qs9iZtJONPdQ2obzyHXrpkxgZYaQR3wCv4U0wShe/fB+j2LQkQYF9piZtBZPzzEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JperanKR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JperanKR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFD8C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751324393;
	bh=VgQbyrHGzzOWqo2UulhVahkDDPU9Qg7QPVgPy8pBSiY=;
	h=To:Subject:From:Date:From;
	b=JperanKR3CtiPWomVDEtVjPJMlSgQN93htovptSR9Y//kaHpxJJGKVwwMgxIIzZ3A
	 VYYwexmjCTLAMwrBcfZB/O8mshVvkq9M2cWN3atl1yFqK1eezlIeHVlAx7p7Qzqtkf
	 Hbv0JAlejWsuPsol4aX1+bFTCAj+Qvl0M+o1sgMhc1p8S2AxmCR/1cyJDDjt3A8Wof
	 P29k51MGm7rij/dGnXQzZMEPBHVF79f09dbr2/Kx+0Xjku4mmMmap5W3qCog5QyFt7
	 84RIaGE8rTHbKAbMWdwdijeir9ABCXUEpZqpuhiKEswo/ItBUu2xofQZEp15Hv6J6c
	 USoFsCL5PG7gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E082C8302F
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175132439357.13916.12684582722653057298.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 431c9f042eb53afb1cbe61cd2035b05f7bca9419692f88fc402acf14fbb861e8
Date: Mon, 30 Jun 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751324393
