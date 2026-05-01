Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5AFD21ADC7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777657654; cv=none; b=IV4b6hXGiaXOjoFqQ1qRYoCFAFCGsG1PFAAJR1EUxB151vvMwgK8bS9/ekqtKC3vawZWGPv1rHa1N5uvF9PFgzRo8GQRWZ/BsKE8FsaxglLnL/aMtvaKD/JlMru5KBMupjgJ0nl8lMNeNoBAfzgbDRTOqEGEreZpYgMrGbjo2RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777657654; c=relaxed/simple;
	bh=uv11So1Am5idq5OK8BqyVPn8aIYCV/8Tas4ATPyRGuc=;
	h=To:Subject:From:Message-Id:Date; b=n0aGdvhLtIbDwelXDLAy9kB8Tow5Wu2P5Dy/rj5MAjxpWqVbIBpT1R/7FidRzqagvg0UQMDHqSxG9Efy8DFyWtwIR6esTtg+1u4IirRpsEuPAtaDviDuVMAAXfBQ5+VUkVh9XDiS7Mx5MVGIJTDRSGoXz5EY7fmYkUEuZoHfKqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vg9wF5Ut; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vg9wF5Ut"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C133FC2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777657653;
	bh=uv11So1Am5idq5OK8BqyVPn8aIYCV/8Tas4ATPyRGuc=;
	h=To:Subject:From:Date:From;
	b=Vg9wF5Ut7plEvp1iYLYapYETvTzDsM+j9pS8dFANo5Ct8pBChWUaAHCtH716rTYwO
	 HqipMfZfd9kZ1dD2xdrBaJbxHk2HbWIDaw4cnS+JWc4f9fv/9fObl+fWxP0iwQw9Kd
	 sG5uy6iPKDGtilQifmpMqj09QYhm+XlImM8nGLxV2A9sLwZ1/kw8ZRLGCq1Q9jLrF4
	 ZghktJ6cB7+WNIazOrmQ+t3hf/DNaGMkecANP8GMp+EgNIviNsSmb7pm1msBiHx7sQ
	 jrJ3hu/ZE7WcuTqSWjaDwAtpAZ2+9BNoGP291B6Ch6MAJjSRtKLnV9gAxmg/Nq61Er
	 mTJMhYo4XdPNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE604CD3423
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177765765368.12035.9531773549383419800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd6edbb297070b1b045b205c2d20192ca765435711ca28c61d9889c99c70312c
Date: Fri, 01 May 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777657653
