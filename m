Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F5CE4400
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721583954; cv=none; b=YvJfkPslNxMwfOvOLESxHKf6nS62BeDsdR2a7EiOUHL5sWVfYid0MERbaf9OMSkQe287s/EfBFWiIi/1SgbzkoW34waW4nPSvb/fmZ28coMG4fs1sk449vkH5woI7qorD9B5NWEXJJFdEInyxYXMzlNMUBw/tPzWDLFCMAIVpyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721583954; c=relaxed/simple;
	bh=+nql6JN3zgma1anWQhQD2QNDF3LOb7G0+o57Y/BSM4w=;
	h=To:Subject:From:Message-Id:Date; b=kIAak0tQVgaEBFTHi4uKoLHf/8rvT9pBhk5t8aiPX2/uhtypeiErgwBWZdmklcKSiSUF49dwpWT9RFEC73ostcs3gs4wLN2c15wv5+Yk6yiYpAf9W0gTtGd39u7hVXltRQ7V6D32EnKr//kDf/jeW5jT6+49WWcaJ29ls9wNDZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tl9oEY2a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tl9oEY2a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0672C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721583953;
	bh=+nql6JN3zgma1anWQhQD2QNDF3LOb7G0+o57Y/BSM4w=;
	h=To:Subject:From:Date:From;
	b=tl9oEY2ahtJUunKM3PC4G3aLJES27b4m851YIWvBZz7nKPiVel1PFY8EgK31gT5LK
	 NU1B6+RQa8M6raEkZl5HKA8ncY6UvQKQyjy8g7/hHdr8fKCdF6VWHMEXynly/YgR/0
	 4/08PU2uwCDv+bqfRlqGs4VOmF+WR59zjUvtQ+6DKbWwizTLUn/5BPnI5ybEcUOnJG
	 0oogLnGVYoqO7tajrQO3IzEdyZ0dbXNmy9FRMuBzynsut4tm5xsHTkjwAPkvBpjuMa
	 J2kZM6nfmB0b8psx151ZSLDjDXGH+vXmj1GaaRK1uBMFDBlr5Qdo9uaWDb4V+pYMCN
	 bMmfuBYwaOsrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95015C3DA5D
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172158395360.2342.18353166525162095405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b630df8144d18e9a2cb534d7c33c815b4a4ad785e6e22af6171b47a90ac5f25
Date: Sun, 21 Jul 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721583953
