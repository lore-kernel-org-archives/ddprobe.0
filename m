Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4888F3033C6
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775516734; cv=none; b=FKmq9BqlQXm/JRE1hZEbvlXX39zPlF46EK9o1thTtHvnKYX0joMtwTjnSsO7rsKv8XKp7N56wK2c7g8IvRfOFY/bO4jcsRkoAOW54FW+S22jn5J3utyLmN5yoNswrVCUI2CEpCWZSw1253vKUcr0VBuBca82nhJ89vwY77Qo4ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775516734; c=relaxed/simple;
	bh=d8iNdPxUiZNxWLFMcyTMVa1iaWwFm3k6gGdqYTUdceE=;
	h=To:Subject:From:Message-Id:Date; b=P4BsCJEp4ruwTb7g8WetknC6fCXADDxTWsz6674NgoQHTfOKCVkoo+cT2nADDt0fg5MmXPNel65oiWi7XnTOJ3ICNX1ucb4hatE5xDr9hJe9mBiENSzItrJQ9X3joUFGj1SQHewy7gPr6LZeP0PFIxknzfG5Z0A1m+Qc9B9GUM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PmEPgNup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PmEPgNup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C625FC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775516733;
	bh=d8iNdPxUiZNxWLFMcyTMVa1iaWwFm3k6gGdqYTUdceE=;
	h=To:Subject:From:Date:From;
	b=PmEPgNup1DFoEVESQ/lMTwvBI7BgPdZAfnpwiHPSVARjPxvxIAzTlizaRTG4toZS2
	 zOKmmI7TFmCKX9VunCo6KTtuYEOgCihYrdBBBDG9ZcTTcyHLCmQwfgxlPD6j+sBjBe
	 xLWQjbzUEykXM533Lrkz9Vp8KgTyxEouLMM46oaSOd4eFJCeFkstMAIiR9Cd9xjxNO
	 9NqfB8T3F/XmApvIddiuBI8cEohlCoI+TCWbHNMB4wHRykm9Hwejn6p3wUJK42l7Ll
	 EUHVAMg0GiP4kHm8XTjzakPal/70BBafEJ8dklVJsBi+SSSLQKAEeVQKu5Ovi1atb9
	 LKiE9xtnRj1jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF2AFFB5175
	for <ddprobe@lists.linux.dev>; Mon,  6 Apr 2026 23:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177551673369.14193.4426050611511917148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707bc1613b4bd61479715e6540ab52b64df98dfa94e8b881f56e9472480823a0
Date: Mon, 06 Apr 2026 23:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775516733
