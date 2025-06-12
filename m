Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43C482F430D
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749746994; cv=none; b=oXnkW00RaSzYCdvuH9rqf/NU5PZVon+Y5kuLrq1wUR+p2YTEibcpI2tjV74CtZyGh8bzE4ikw8+mneObOQrA7FTsgVF9LSltXMNdN59UvyWo8A8JFhI288UXj+8F26KKS8UPr9+wwqZAMuqM1eruKDjgrl2aJmX2N0EOyVwyJak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749746994; c=relaxed/simple;
	bh=aYCViLOmJWzBNTzfx/aeOo8MiIBVkEdCfCeAgTHZ8T8=;
	h=To:Subject:From:Message-Id:Date; b=UFC1AOLQ1vukSw1J/JOQc7GUF9qTTTeiJh9XBD7JOaGp+Mzz2Ksa/Vs67UOKNsC6/8DNt3MekbcUZ3PAlpbnK72ae1bLLw+QEI0cKUkwqoigIToPxuydUufbI2GvS+2hdT0SMBwKKWyKpFxvEu1RceAdK+QcsqtWn4kxiz5ATYw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLAMMi+M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLAMMi+M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADC66C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749746993;
	bh=aYCViLOmJWzBNTzfx/aeOo8MiIBVkEdCfCeAgTHZ8T8=;
	h=To:Subject:From:Date:From;
	b=YLAMMi+ME/7GDk3ULdSTFqSlR0pdwyBM8J+A0dUZic2VfXI5oVi5nBasbbl1lFG2G
	 X9uk5bYP/u43QbqOpG7jWJbMlUMeySK5G4mtVgVM7qMuyZBOz8VaBz7+v5xRP+b4r7
	 hKyBUJhthuVzJKKhwDqsxbkSXi6EEO4Vpi8Dnq5A1hscMh/pmJnoA6joTFpNU7+Fq5
	 717EdDNmj/paWQwfgmudVjmLyFGWZInMC4UOLEtZGcI27xxJ83NCroRIb+s+UhLQeE
	 SCXKSj68cguvg/0GfjZJxflLt7hzR0YPHf/xyz0ktLeIn2gmjYBXpwbPmRpWRlfWUR
	 CnOMI8XuCZxOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C287C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174974699362.11791.16061891481849027957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50bfc8e5c060a6172e301765caf9f73720f9169fa2d63087b1812d931a07f2ca
Date: Thu, 12 Jun 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749746993
