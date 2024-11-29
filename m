Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A76C176FB4
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732917354; cv=none; b=SYGvE9HG5IcSWlq2he08X7p8/C0yY2m8Tw6OAALeqLL9SIrWkNxtfRe93cBnqrYzgpRCVJOHeOVCcSauTEWinmUJcKLc0KYaULh/4soeGB75N8dAG4qpjfqRYwA7mAlA6fN9Uy3NRB3b1DQEiK5kM/04fNJbu8+2rs3ogs8f+hM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732917354; c=relaxed/simple;
	bh=AXJAOWanGCQqyZ77E1QGBAyP+cHtfWwWk1+iU/hRhAI=;
	h=To:Subject:From:Message-Id:Date; b=a1cU7MmIrREbbR8xfh60MkjaHAIxUmK4RhHl9IE3mDRtQoJtMqI4nqhkud5BgDggCpnW7u0nW18EbBmFDahfppt7HgYQaI5QWuRVNYyL226U1myKDTF2LFOTAIMncQiyX16aUJDh+mnKtIELyKkyGAGi5Tnia7h4P4JGIVZGhdk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XNpCo+Ar; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XNpCo+Ar"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3642C4CECF
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732917353;
	bh=AXJAOWanGCQqyZ77E1QGBAyP+cHtfWwWk1+iU/hRhAI=;
	h=To:Subject:From:Date:From;
	b=XNpCo+ArOJeIgDdLz9W2q/ica/tbhDmKpu/nQPxUyq+WH79aVkS8UkJ9OAPiqqhBD
	 gklwtk1s7QRbcHZQ5dx6Suo3sdYyqqo+Jea9drUUHfFDxwTMtLDvRFSRNQl4YazF9W
	 e/hWUhPIvZ+sOjrcKNSaEiNrCsOFHf8MgAE/1bQJm8hc8GB7wFLAKVU7dZ0tS82tT/
	 eFrE1ycExttnpGbQjevVRGf66Zibvt1jXAM6EpQuVvaPbYHAbBn0KNx6PEVhnrbAgb
	 jP6ZfKP0cUD2R5oHrUfdlHGcKDRX7Tn4IOVzVL0QDj11VY/bzZheTxFK2XbahKmWcw
	 uWG89xbGHqcVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EEB4D6EC0C
	for <ddprobe@lists.linux.dev>; Fri, 29 Nov 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173291735361.31794.17864474329817496682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec7b426e1b894e7280aa5f5c4a18e047a9638d84f7c7b1168a99443d33a178b4
Date: Fri, 29 Nov 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732917353
