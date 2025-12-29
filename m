Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1872E1624DF
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767035634; cv=none; b=LTlM+q7OWJTU31QuMRqVWKhEuJZx9OnLOF+Yr/tQzWgZ1ae/rBoNF6QUEex23/JAWOYJgmxyeM8yiUoYOpisMg0vqyP9eQ86S0cvaVebOCSZQEw4ydRsby2Wl154UnzHMJi6wjVeyCUEWtHvuAv76fStEj5zJ5eMtofbffb/wIo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767035634; c=relaxed/simple;
	bh=v1P5PFFeZJo5DkMCSaynLGjp4vjcfCRv05nNe9keP0k=;
	h=To:Subject:From:Message-Id:Date; b=ftUCcER5yFZzUq+VJWONEtfVNtClfk8yy+/wWNPjv1Rkf2aBcYstnSX7CFs8rkuZxMFRA4Ykctdp+eO5dYbz6/fTG3Nb9XV505riWdyimRDIqgGSD/GK4mrRfDTDZombFU5ZFP7MOnBoTto7r7THci9DJ7m5oAxV+vC4k/HPwsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEYbqbB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEYbqbB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A789CC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767035633;
	bh=v1P5PFFeZJo5DkMCSaynLGjp4vjcfCRv05nNe9keP0k=;
	h=To:Subject:From:Date:From;
	b=oEYbqbB8YEL+6vPuiqgpx3fEoEsYh4HbUmtstqZRWgB2upTcsXsMOuPcm2T53ZTRp
	 RlLSL76ca7bnbJTCdHGnOi76P8dlMOa08asXZaYwg8vKC0uiwWETRc1iKODDRzp/p0
	 nLA0EyOE8ZKnhXnP2hGh5mPeRvVsigUkj0CZHLcvi1oex2X2fLbaeiZIy0kCXEtLnL
	 PXx9gvcVQ8cQbcAT1t6c3FrWcXfmE+v3UCnkZn4M1G1uNhurjvrajjmprJRV/qnL5a
	 QY5gQDSzNhEBM7XSq3hb0nMOTfmVlz9GGJxMQLBS1TsLqNecg6UuN9tF7ziPU2uZVs
	 imuz+r9GQ8V6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97220E92FCB
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 19:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176703563358.18922.2193846848032534251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c128031f43b4e5c31e2c02bcbc37a40deb3466b998d5aa0c84d67b79a8145cbc
Date: Mon, 29 Dec 2025 19:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767035633
