Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F9952773CA
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778133454; cv=none; b=aZ7MKlogZrAfNCVQT8yMN/qgbvBXZrSRbDKXxLof9JgsTGYUFELK0OXJa0wPz35+0gaEzYZ7vX837rnxYRo7aQqcJfRAreRh/XZ8tXWqbHxRKcwB2W7GilQr9tU2UaNb/kg5t2UQG0KLlU5Y5z6tLw4pYt9/eniZ3RkQitQO99U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778133454; c=relaxed/simple;
	bh=BkFslfsa+nR8wkBcx/sfs9LA88aSqx+bL1sIUQEptgg=;
	h=To:Subject:From:Message-Id:Date; b=clglRJFx+8yN0G7sOfKgwZCjgUyPRXQT8KoKQzRFRWcCl3QqXWBjDesK7HyMAsjAhlTsCOA2/ICQb3mTHEhRkbK0IOWYp3xSeqSRsfeteB3+Wb4JyOofitOr4PO0sz7gRqDkTbT6E9e5Cgb4QHBo2g4t/uKVBOlYqwVFXrvpZa0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uup9NwQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uup9NwQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72FFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778133453;
	bh=BkFslfsa+nR8wkBcx/sfs9LA88aSqx+bL1sIUQEptgg=;
	h=To:Subject:From:Date:From;
	b=Uup9NwQ/seje0ju0B5HnA1AXqpwHGwVrZGOstko1VeovuI3MYkfHCnmGyTu6UjQ/1
	 fAdbMCxJulzBweuVMtJQ+oaq4Nz7XjTh6/NV4/AEZ8mpD7TAm8erdXubOB1Vam1SjZ
	 c5wXZUfb3hTnn63HJJ5lIw8fPAkyA2U4RpKB0y5zr4jSfczv6k2Cux6mrBhX6L7f/E
	 ufkb806uwagdHHD+tWWUsmPPUyqXA7as+WEvjq6YDbTZ0N6RGceArVEAD1C+X9Tzp/
	 XJZoMmO87OfgFgBELO6NnJv7O/NybR4EbdlKTRVOq3Uru3T4XRvTepGbBx0MM14z2/
	 2QYUNgOkUt4HA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7A59CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813345374.8062.1967540253029081930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff5854760d042b6b2f5d1211c04edf214ad00169c8a0845c1c91e0b1b076965
Date: Thu, 07 May 2026 05:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778133453
