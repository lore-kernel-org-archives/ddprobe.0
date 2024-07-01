Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D11B15EFB4
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719842123; cv=none; b=MddXgJ9Xau3Apk6MZvL3d4G1r7uXOe58+oFrguR1qrXkQv+hJlCkxQbuJgoHPEY2rF6XTmUjr9dn9bCWsYO7Cp6jY9l7D4c0jdZPeknsPeWYmNzKG4BhPwhUEmzK/X555wn3Q7EHW3kFPVO4mmik3KHsA7s2Ehi0mmWTVqwve3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719842123; c=relaxed/simple;
	bh=K044OTRLkAITD9TcGsFMlkb4PlX5Lo3nm5kqbzMyqDs=;
	h=To:Subject:From:Message-Id:Date; b=bYkgZLnR4Xdx1RC0Kv4uDi+TTslhd3atsviMyMZAhEjNkzX2IuemIzxQBQClW3I+x/e+p7MjNcQsFiCLgKA3Lu48XxYgePmhjzXyQHwZMOpplE2pC/tILZ/4CQmW4iW2qa0p117E6ZKMmxXWoNpQ6QxuoqYr9zeFaapne+qzaNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XfeUiavU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XfeUiavU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5599C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719842122;
	bh=K044OTRLkAITD9TcGsFMlkb4PlX5Lo3nm5kqbzMyqDs=;
	h=To:Subject:From:Date:From;
	b=XfeUiavUS8k4DtEvV2HGc8pzEg42sU/xNmeibWisPSzggaW9FAWXFEV0JJGLrpiaZ
	 wzAAj10yGPem9quEIC8A+O7+PFYE9Smz7IKZtwlvZpHc8+MNdrYDQtNBqTHaV0H/Cm
	 fKUUWZg/GJ1qh+KDk2j2LEyFcH6Hkom//5SBbhFbpIlcIQ6FLHDIqwPCJOUgdA6R07
	 H+JkGmCPh0ubDfIQTFTjv3cRZkYy/NIrxZCjJaTDC1c+MI/E06S6y8SFtufYPSotYC
	 5ttQoUpah/M3VWf8RXi06oKk//HhUtgwpkXf7bFd9HG9/SvauId/3mX92FRSCHrHXU
	 9e/pLrIigT+sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CC254C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 13:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171984212282.24434.7654305828246282938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9de822898e91ab61bced19cad64704f0b3f9a16f9e93c9d5dea1a0d141b66bf
Date: Mon, 01 Jul 2024 13:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719842122
