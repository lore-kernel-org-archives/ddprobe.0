Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 474023546FF
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791620434; cv=none; b=QrCCVsKGrhaqsfGw0CDB09G/bQRb3lfF/wJxZBhO4qQAeM90BzLbWIT6bQKCIg0zcL6Rt8U0nQ2suS7nIJWdn9J9PW1cIgi0iT6S1uFQ4Cbg0tC2do91eylvItc1zDGqEm/MZE5IkQgxWB660XMbwTapoO7HD4sTY1iJ2B7hDmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791620434; c=relaxed/simple;
	bh=MC4amFnpPpQJFGXBNc+RCXG96164r+BzB+2PCVUagwM=;
	h=To:Subject:From:Message-Id:Date; b=gVM4P2yBaP+iJhE1z91P8WSJWGt0jrzxnGvk5WGmp87E8c2B0QPExbVPPEMwsnMGcL/7+lrNg4CAkAjoF6+asEjUw0CezBirU3Ga0F+c5GtREJU8Gpc1iAvwFKTYYobQpvcB4g9WKcqkWhKPsrxQg+hQyRGre1JrzWJ7FC2ymMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kuEJEgaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kuEJEgaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8F3C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791620433;
	bh=MC4amFnpPpQJFGXBNc+RCXG96164r+BzB+2PCVUagwM=;
	h=To:Subject:From:Date:From;
	b=kuEJEgaR6CLxuGTIwKOlDX+9Q2+B2VCgzSyJ2qAwJ5gqovG4sXJwc8lz7EhQ0IYBw
	 4jf8yuot9ksa5HJV1nZN2u4dsSPNPnapmKg6+jDqB0MYg6NQEXqY2/u3rDrhASy4fl
	 iUp8tcICnrDaISUOwIujNpLgf87mNjp2sbcincptxtVS7r4knmCnZGrMovP0XZaRF7
	 27jOX325mkqNfMF1jssmOQ8sLPNcJcx82qkGJVZQgmjFw75t5PqGQMA43bMgc0qfmG
	 rcjS/epBMPW4P1UYkb+GExLjBnQrLGwcjYe4/KVv5L2Rfz/TiyYOwXowPV0uWYrdJ9
	 Tm0792HNxzjaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA383CA6017
	for <ddprobe@lists.linux.dev>; Sat, 10 Oct 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179162043368.18124.10020972851146519011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebc1a373758a7c521964caa7d006f080188a976ef4f778b8fe45a3c00531af68
Date: Sat, 10 Oct 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791620433
