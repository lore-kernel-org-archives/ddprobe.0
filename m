Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6EA225771
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733418954; cv=none; b=kQ19RLAd+54TPT2Gtc7ZYpid6p6P2NTDNhkulzkoGBorU8V4MSMFAREuokSswLozB4qy6C2aA/Npyih1MGIBmI0OTgiDiCGQnUxH1uVq5+HjWIzhrMcNVpNu6zlKpSYrMH9osxTLMmBtXKOvhVrwJo0Bt/4mT7PouaBioP62FV8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733418954; c=relaxed/simple;
	bh=vi2AFfVYi1pBEtf6d+knS0bz35IRdsRItfh8AQuwCTs=;
	h=To:Subject:From:Message-Id:Date; b=KTcwEJ1P4PFmylla7JbRn8ElspKpUzBG2j4NamZrMD1Sf/VIgOK41imd9teIpT45pXB68QJOSIPGrV7r5R3tEhEPMv6b7qSLry6ttM6Gm4A9mS+bqnijFT9+omj64iCRrZPt2EuqoigIMCTU+XgOtihRc4GYT9S0jE95Tq1L1iY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9Ii9Yyk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9Ii9Yyk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC78BC4CED1
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733418953;
	bh=vi2AFfVYi1pBEtf6d+knS0bz35IRdsRItfh8AQuwCTs=;
	h=To:Subject:From:Date:From;
	b=d9Ii9YykOuY3h58bicDLI4zuSMmn7JOzyubPtc7CWzQ/Laprb1PlHw9Y/uzylSPtV
	 0MzmWsAM+5wbXfrvFYGqqvwsZeP1dIkgwyBWiqbP78zteIGxiTRhygcZwcNvuy/VqY
	 5m821LCg9XmbPy0KT/sJ0timLTp0w/D3GieAVCNldGOlGl8N5jPaBcFOI39EfkuLPv
	 Kh3oA8a5MEAAfeIvKFpBHD/GQoH3NtcICzpXJUw1UKPVUs+T4fXqf7kdtGhIevphIj
	 aoFf2RxLHxy60jFCtj2vziJNtgG6RIjo61WTjqUCKtxQ4MIsgG3Oa0K/DOO+s7CNk0
	 5scGB8iMmCJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99498E77170
	for <ddprobe@lists.linux.dev>; Thu,  5 Dec 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173341895361.21241.7239416380467945458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb0406f3dbb6749e576e83ea45620c62bd9425cc99146cc27903d580282fbabb
Date: Thu, 05 Dec 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733418953
