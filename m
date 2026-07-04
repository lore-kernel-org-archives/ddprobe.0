Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A90BA37F8C4
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:58:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783137515; cv=none; b=srBl45gOoyt/dS4qlGtgX9er79VDIt0ZPD7sAsB9H4De/C7pSWVGNSJK9VyxuL5gvl449VFVaUcO9N4GWlWixyYAKykbJDlEwP0ka81lQptxWg+4MMyqCHXvdIV5TLkF5gtvLWWJvnP9uds3S5ZwBC2TRE+XHVyrPAErYA1gtfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783137515; c=relaxed/simple;
	bh=9x/ISw8C6S5LAZzxeSdBycqJF8dzgj4ugNMYQyEBZbo=;
	h=To:Subject:From:Message-Id:Date; b=lAdX9rJox5jw5iXr/M5C0a81mUg5vocdlSJRGGx62yfe7WYs3StDFyovV3Sf92NKwI9JFNSEbtqL0oj6mnPHCao5v6XTyrAXIphgLcB8lTddgyWRB9qMVkC+b2rbWaj33WdZN2DfPFaK4y9qu2BZ7tgzJQLDyRSopgM87gnuqSY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FsAyf1zZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FsAyf1zZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE4F9C2BCC9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783137513;
	bh=9x/ISw8C6S5LAZzxeSdBycqJF8dzgj4ugNMYQyEBZbo=;
	h=To:Subject:From:Date:From;
	b=FsAyf1zZIzANjbmrEy0JIl08BiwNPf4UVVxpmo5+mebwN8574zFYA0J9XgCXcOice
	 GxP8i6bzAgcnr9qoe9CXsTXcGx5e3vrnTTwlIS64aeN7fOH0Yq8xTEmvD9W+6Ua0D0
	 8Z1uEkPWsXljlpnCWN9U5w4Tca770pZk1kEk2rx7k3EPjLflrHToLz24nEI8vpRax7
	 3AmzSOgHDKWYTPbwch8fThgO8OmJ0D+TP4uG2dz5vNDbUsSZ7OYr3pBI47PakEZ7CB
	 Q3AbaNfSFd/f78xhkEAI8lcqrc0iM2KnXSDMGJRG7wmAron7JdCRACR9z1Smp2e47/
	 eLOzabuQAkaFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB83AC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 03:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178313751368.7903.8663720906542698809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb21da12ce677fb344d3f8b7c9db0ccd4acf98f9ee1a605aad58e3ccf3696993
Date: Sat, 04 Jul 2026 03:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783137513
