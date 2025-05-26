Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB3220311
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748293194; cv=none; b=rBEnjLF4/w/Tw4EWfT2z73ARbiX2BiiMgwzP2AKTkQ3AAxgPg9GCjGFptCJaju1x/MoJB6mfxbijaIklLAKekfoZxH5pEOhn9gamTpk3T1/mLLS6HFnvoptk5kgTgDMndfYnHrGwnz7C/IlRNPTf/TKRUByPhy0h791dZJEE1gE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748293194; c=relaxed/simple;
	bh=g7rXqeqhnw9HijpAk3SiBvdKPFbutTjWiPSQgw19Yrc=;
	h=To:Subject:From:Message-Id:Date; b=HlAzGkX6iaAqpu9dCKZ3oBq1wwhFrqu2ZVSYXhYWVFmsHauY5HvfRI2uuJhVVslnVpGLZ5+tXrvJkHyNpF2fxqN0zkCDLbexlRfXRGVcrJgyjYwMNXLZnWotDUZD1rGZd5ycLEhNAQ2m9mQRxTZHZUXGSbJyuednNzZ4SLoJIRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ibOgg190; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ibOgg190"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0739C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748293193;
	bh=g7rXqeqhnw9HijpAk3SiBvdKPFbutTjWiPSQgw19Yrc=;
	h=To:Subject:From:Date:From;
	b=ibOgg190068MseVk6H1zY9wMiWAjgbVS9GgBjouylO0wbeCDHiZYHCCZ5olo8rG6S
	 KpQqYxOZyL2VT+UAmwp2lE8V/J2/qjYoVJGTtKWk5hhDUu9V3VpR3OL8mlw0KMCUkd
	 h8l7uroDRtr+OTAhSNNmLFWkFrNLN5uChXaXHOBQ/nI8VZQR2uzUlv2kN9L2DXErcZ
	 zGIvw6myD6AIBU0f6nJQwPAq76thlWDjXve+co4BOB5PwczQj1rjkeqfMbJstlG8FZ
	 3QEkordBao5q3eVGNyIM+edwmIx7zrWu1r+AwCwDwxf43MLuXv9cmDEPGiCHUa+YAd
	 NoVwHCSN/IUaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E3A8C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174829319357.2577.3667734433481573143.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2fae0a63b5c3f7fe92877c7aaa580008f7a1937a16cf83d3f3a876c9a497701
Date: Mon, 26 May 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748293193
