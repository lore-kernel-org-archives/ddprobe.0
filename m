Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40909254AEC
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744907394; cv=none; b=LtJJE7nAyIaGTsyub32+jCA8Y71X0DXCJOpvCDji/Fhhh9MuzspSRMne6YJtUAeStoz9MlnjsXyixkwgD3zE4hrnDgUignOam56odIHs2QF8fyn7tf6FYICCorvAXcyBcf2QvRp6rA5wcWA+ZQMw6+zNmbDPAFuplYSixVcBZJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744907394; c=relaxed/simple;
	bh=wpqyi7Q1RAhTqd4T0abihq+oC3bWJDbzhpStVUWUqbc=;
	h=To:Subject:From:Message-Id:Date; b=ScZaA4D+KvINYQxsQ0MzSDCwycqfRFKXdPzzUrua3FCiZNyF6cnl9/us/XEoC9C0cq9s2dFDZ6etoP8WdX/SzPt2pIMXciakmKBOpbqcSOiR/IgeXJ8YrJhtNc4V2eeUfabuasGkaB2nnrsSb9iVz3d6zQ97jWp8hZ3KC4cLrdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bU9KZYT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bU9KZYT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6F55C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744907393;
	bh=wpqyi7Q1RAhTqd4T0abihq+oC3bWJDbzhpStVUWUqbc=;
	h=To:Subject:From:Date:From;
	b=bU9KZYT1mpvFxRPLUdXRroP9c7ntNVzvk3OTw0SxYTPrgr9lJ6lfsK1HoiDRCKALM
	 vWgPBLmM7a9I+ljcYiTGNewu0rhP5hSKTxlymUE4zPlydtCRAfqVMCxAbVI0gLjpcA
	 C2sofuogK2ksrlgJtXn4Axj6rjcCZkJwo2eXBOGWyg2P0jsZvi9UKvs0J1Ut/wTbL5
	 Bw9mweE35RB/uxxxjXEGvWp7IyRNzaPZUXvO2LkHlw27ICpahMIzBCxlIqgrRqDj/3
	 98ciUAaMfj1KB22JWZy9ZyBAB0nnZIcX0yz7qxWZ4OxVSarelemlbBL4XUeO4c5LsX
	 p6+SYVgdA5ghg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932D9C369B2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174490739359.21246.15539702586774738363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74e898beadd8486c9039bbe016f8ba8573f679b7604291ecaa792993addb92e9
Date: Thu, 17 Apr 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744907393
