Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0C2022157B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767293034; cv=none; b=HRPNM9xLuh58xvwok5aJn1Z4tUSWXcCnucRODDGdbPA5HawZRR5NHc6JhCMBYjb3C6I5gCCTybGLwZKKf8rI8d9Lh6ulwq0H0ZVGzhm2es3kga+pFAngDZ93CbD6R8XqDv1z8thnBWJJKJCTVFwX6ugVngtiCtqUNwgVEjvIp08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767293034; c=relaxed/simple;
	bh=s9i7I1po83kKgNwwg6FGt6xMCoQh678WlX7X29GUDxI=;
	h=To:Subject:From:Message-Id:Date; b=ChWWfVJBgMs2GmEa6KIEfq8vRbUeWJuwH7V++iE2DadqUG5Xv6lOaEVM2lhyq7G1UhIIPCedHahOfQeBPzjwmuYrB2bpcD/wr5xkbGOnwAWm7GVpA6VwwbRlcgUeqgFAlH+xWHWNi7GB65k7Rniw8/AAYLf3nM9WJxz4hPkxzqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHpaW89P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHpaW89P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E67C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767293033;
	bh=s9i7I1po83kKgNwwg6FGt6xMCoQh678WlX7X29GUDxI=;
	h=To:Subject:From:Date:From;
	b=GHpaW89PsL/eurAZC1J+TY4wTw4At+my4T/RiOhinrsfxbrXXfd5zZdPVSvo/aUrz
	 JWZFXpwQTePDIzmyxgUCGIMT3qm2aW18fuiEhNGOo4uivvNRiP7FLYMEYHuzJ64E3y
	 VjMlyz4C5ESQBdRhs26Qig+YIRqx0VuXS0ZeSBg3lwPhKe8uFe49cp+16qiW7+Bv5q
	 LwC8Xd9Hky12e+JIY6zuPVOCVf81dJDpPFvESatmLvBeE9it75IT/MYjIMhao2dVDt
	 KdTO6GStravLWw/D0rJqRSopgLQrPzaSQw4hAdxVTJeQubm80O3R4NZakDM+TeGEpT
	 shUX+W5pZZIAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F94EEEE245
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176729303358.10628.4928486146058458369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 910499c15ebcb123f70ddf2753ef1b028b2779fee19d4950e9e6bbf943c4055f
Date: Thu, 01 Jan 2026 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767293033
