Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9A14239E7E
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772515494; cv=none; b=sv9o0QfNjoR8FW3sf2Qu5exyiIhQ/wCHC28VdpO/kG6pC0FjLksdxZcJARQSHBgPW3Gvx8SRYcQwqICdJPWN/btPynCetxEwfdweaaewKHCbm6+eEPzQVffHJy1is1tJwIlKgamiHF4oJvyp5EHTWHRd11w0z6fKwJ/Cs+ZLrho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772515494; c=relaxed/simple;
	bh=y8JLcJ+gjLiln2mYhz4sSXNnIC+Q3MCwuMTXaMZ2p/g=;
	h=To:Subject:From:Message-Id:Date; b=rl1FY1Z7hEkQyQ90BLO+0hu6SWpttqN0Mu5GXPh3iBj9Hi6bbRfMUx+Ao4Lc7+hYBmHURmUhEpXRgSYisEWHYi+PRHhRzZYtdheRqvp0yW7Cvgwlsh2m0i1SMp0CRivsdrDU7BgUDeulAk9g+qVYg0mxjFnMrM+vTevF85M3RgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jjOuQLNI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jjOuQLNI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3837C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772515493;
	bh=y8JLcJ+gjLiln2mYhz4sSXNnIC+Q3MCwuMTXaMZ2p/g=;
	h=To:Subject:From:Date:From;
	b=jjOuQLNI3qqTFEcmG+pDMxQbxNTVq/6HpqaHnpjiCEL4Eh9AbKP5w/v0MP3YMIo9L
	 QLngI0pEdWvT1Rn2e3aSnq607G4cLvVQmhdyAVu5Bt7TjghlyDLmYo4Sxd1rjT4ADx
	 n8aUoPuCmwCiJjN4R/r3tgWF+iK83g682kz+KOYPrWebzU9BD3xzGVE6eue0Pc4tVs
	 518NmJVB/dP9XYPbitqnz9dkxU4+2lOF3w891dN94J5Fqn/xtE5ZSK3G5U7sbiOqRQ
	 2JuzTmT3ynI85KzP2+Em4H1MUjh35lXVUKexa2TETkRO70ib015HFp1X/AfGsh+JVI
	 r4sEAUK0Dr11w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93822E67A6C
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177251549359.16035.1708052031953467111.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b3d046bbda45470801e816e40e82fda593248f38bee4b5b74544ae0d49b7839
Date: Tue, 03 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772515493
