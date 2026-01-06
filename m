Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1152727874F
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767724434; cv=none; b=P/HzGiD8xJ/YdLZHaudldp+uiex8J7XQcU7javgYzu+cou4IuGE1AQkANLpSNlu+5g6RV36XX0nVL+MkuQxzQX6qE6Ghf44nEnwUXzk5gwZyHGB0JydsF7+mN9Be7KWQcSqjnBKMfRpzP3tAwiwq476QuY+isjbiqx2dviGc/Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767724434; c=relaxed/simple;
	bh=0UMlrjrQE/f6unefK+34N0FH9MCF1NOQhjxgqfmlLnI=;
	h=To:Subject:From:Message-Id:Date; b=tia1ddFoVTgnc5b0nCZeMUgYXD22+vkFEdhnW65Zjq9zKGpCDnAVpwpsGKBnthZTzDei57GHVoMtC5B3ShqrbY7xpND15t0ptumRhirSjJFuK1owQO1l/LCmVXz/bAt8FppCydxe9WZrAQrQr3w2P2RvCN20ZaqNbWpWUkPv7Xo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oEIQoOzd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oEIQoOzd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E0A2C116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767724433;
	bh=0UMlrjrQE/f6unefK+34N0FH9MCF1NOQhjxgqfmlLnI=;
	h=To:Subject:From:Date:From;
	b=oEIQoOzd/difGRd1ByGpMu5dgxOihr/0yXsRMsID6LnNhyf/FGXa28nZJ8peSWdds
	 R3ObM0CJZO2ov0T85OFMTi0T85sCOopxHip5jtR6YmU8YNuYpEUDP4Saa+Glgxyl/S
	 K2xM4o3q3aD/8TuCLv+94soexNIO9Wy55SXBucp+EHVQsoDzW/z5Ls+Xcv4ZQhSowx
	 CrXXhCSPUmNyErSvyHs612fA1P2pOVVWY9R2QflKQQbCEAxonPgFrfN6khUDYwI5z4
	 6NX15wcJOStYubVeNtgkM3XpR+p+FTguFzt8MPNe3+wY6+P2nqi+sbBc+A44vKKfu1
	 ItVD2JboEb4lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF5FCEFCEB
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176772443358.5917.5655655215811394088.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00e478e4942d02731b61e94e2784c179ee7063becc550176967a35ad4169a528
Date: Tue, 06 Jan 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767724433
