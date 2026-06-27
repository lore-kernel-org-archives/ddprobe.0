Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 521332E091B
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782566914; cv=none; b=jL7m7i45nRsUlfxWmRcQ4P/MBkN2T0dkl2Vn7cFndD3QkGFRdITX1NHz2Mk+H/sEjYmRDr5vFogU6Rp3Ns1IMyt71rYbuDzwEgiazKNz5RJ9k/09ulSTQkFowgPr9rHRWJwBvwBGEvGwmmcv6eEwAsqhud0t0WSEb2D4aMsVj4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782566914; c=relaxed/simple;
	bh=hESvFmVLTdbn6NAb4+obIUG3DghLIDDkld1UPn6228A=;
	h=To:Subject:From:Message-Id:Date; b=j7AbJVvqoHrkQ2agatLCV4GqrLsTYWJcFVp6PlkAZAHCwZgkvarE7rGfe3r+l/hH3dU92nKS8rQ/TrqMAXvFCwjZ+jGBcmQMXSDPKfvCQV0rJUFbgzd3pepnDYwS/+pTNePjaQWf+p2y0LU8FgLKYg+xi26JWrwWZaUqCQfpieE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g1WXdwnB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g1WXdwnB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE2D2C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782566913;
	bh=hESvFmVLTdbn6NAb4+obIUG3DghLIDDkld1UPn6228A=;
	h=To:Subject:From:Date:From;
	b=g1WXdwnBKnCZhwLbQA+o9YD47mif3QuQxkVYKjK0cVkNKehKus30wFoU1ek+Dfu0T
	 7O/aN6tx9epRuyJUJy7ZFCpuxyzB5hvlmpN6SyscQKuaUHQwJvtqrtMyox1V5NUROe
	 gixECySagmpizTkD9n9V5hO6r+3cbd+gqlPFqdNO7dPhEamtMC5UR/IwCODPsj124z
	 tEIsCjdg+WhEULEjHVSyMcf494msdCyUA+RnY4t6wQf2z6k3oTPnTdTkUdIdVXgp95
	 5dd9uM7yDGuiePgqsFWeKT5QRI7FCLbBjJcAu6McALaqgdRiMVHColiWt9RLvZENiY
	 Zkjjv538DUwZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADACDC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 13:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256691368.9090.5752850972317913512.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76efd7209f0acccba33eb51a538c49ddb8f4893658ff1ded598ca0b183e5108e
Date: Sat, 27 Jun 2026 13:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782566913
