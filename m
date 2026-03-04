Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36DE434C139
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772612094; cv=none; b=JsZSZAAaVcLFqBaTevUVx5xxZ5liEyHVz6xQZfx9Q3a240oqTU9P+/hct0FuEBb8s6Ok6wTQCyUu2LWcepPaXMyLkIaV1LS/Ic4wEfbaAg22Sc0mG6LcJXYCPMdD16LZHEtpKlWzjXGM5cldFHyUAhrbGSMYeQWnmFlphQUoppE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772612094; c=relaxed/simple;
	bh=MOumxcbKlnmD+SoaYncRiILn5fGS0hu41rz7N3i7o5k=;
	h=To:Subject:From:Message-Id:Date; b=oNoUKO8j0M/za9uQ/ProyKOgw7BF3RQIixjYsmTUbdLmCC8/IdFOLgTixITboOfTL104v7447N7os2LJ0RfM2/J7LPD/k5UcdZAn92M3mZs5rc9CT24ph+cSjw09LOBywgxzfvv0IU1+PgzBi1I9NR9kGnCO/rhlLrYhcWh2T88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=couklWyr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="couklWyr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22FEC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772612093;
	bh=MOumxcbKlnmD+SoaYncRiILn5fGS0hu41rz7N3i7o5k=;
	h=To:Subject:From:Date:From;
	b=couklWyrw6eZNDkTb6BcdEE2Bb4VjUt748BYGB38npZg2/WG/juqPh8yTmfF946Gq
	 gBRKrPfwtuNqbRZRpV/NRIveAnaCVKX+ms0ABQ4yCJhifBcEDLj7yoYRQ+Zgy/lzW/
	 W694tGwszh8HD7T00EhcT9elaYBYEoMHfGffB0xpnIaGNomUHRlc4jMm6YzwGp5ywL
	 /xsX5qeqAw64jM3gyiN9y3BYXtHt7kck8AEczT2hp1wxgUvpatNjw1CM9uCwjhDfQf
	 ePnZXrB9om9uvUZHP5kuwnmhLoxJ0ptwvhxiO9MKM4usMRutx4UqUJc4DFBRVVIWNB
	 Kxr+CuBnw88WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A347AEB7EA1
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 08:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177261209364.7658.9759719267522025634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 659995d42e66f50837739c27313f92506eead2da4f5a8866ede63332bf6354fc
Date: Wed, 04 Mar 2026 08:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772612093
