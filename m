Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A3BE328B62
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784831436; cv=none; b=VMCIEersOJ/p5kw2sIsyE/O36Y1vDKisBI6ff2RMr5XbmWMbNPs5RFhiOGcCEpyVFh5IwGyUoLEJItUgTuh3eLqUvzyKxnBZ0rThwBzLcyBWCRUQbrdWcz81Qy6hSY+pd0Z6rgqcMtkdHy48N+Zxb4KEpY167oPhw4J9WmkJZoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784831436; c=relaxed/simple;
	bh=m/XlUoZn+jTvaN1dZIDqIqu3TNDujPZthhbbIff3pM8=;
	h=To:Subject:From:Message-Id:Date; b=XjpwUVdAztakFVmBLQtgsfT1P6NLI+s6L/C6O36N9HxONPrhy56IrwHcPUna5GatW9Oaxu0wwK8cPMDI8N5U9nJD34uied/6C8fQ73E3/6LCGHwYwk9vBIYEoJaHuzga+qfQLRBQbL8iNHqJm3Kq1iH2sCbcIchs/nyKuuTil+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLbuk1YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLbuk1YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7412C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784831433;
	bh=m/XlUoZn+jTvaN1dZIDqIqu3TNDujPZthhbbIff3pM8=;
	h=To:Subject:From:Date:From;
	b=YLbuk1YFXDCZT2bNFqySRF1gWq9dayK1qukYxgrpplwTC1/4lfWghKfnYT6j5SVaj
	 nX2T8TZXFLRsLW27xuUg0b5jkIuYWPszvle/g+M+RMav5rkJH8G+xt08pPeD3RJ23O
	 Xq7GdlnHtAz4a3NeolultTQAaguEsu4t949pC4MF4BnYZ/GGWYLAz5+8udZLBJ6sqf
	 eDR5PbSjOV1B9Wi4yee+843rId5WMUnhjF/V1nBEbK09laWNmv0EA2mYJP1/I3K9Lz
	 pGBY5hVKZ6Hj/PLrBUQ/1CTha3hQB2nHQW6tbsaG5VymcH6qgNKEKw4jbvL2cz47bL
	 avrOUJzEDXP5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1887C531D0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 18:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178483143369.1868.8366378067766647990.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8882990d1f61e08a234bdd3efb201b440133c9b7a4c51bbdb4429bbbe9039ae
Date: Thu, 23 Jul 2026 18:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784831433
