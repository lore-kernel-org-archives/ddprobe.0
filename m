Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44018323D
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741402134; cv=none; b=CM7v2w1COQgRPGobvhQluzYSDyqAS38TTcHizuxWTOMgiPCFPjtttgRQgMby+2e6Yy6cHkeoaX7ZUXm6qHLZApAxcSooJ7+fHVmEQoa4kCY7AHOMps4QVSrG1us4Lb9P/Kd310uzZFgoHATdmxjBd4LEjAZuIKAzAu5XwYlied0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741402134; c=relaxed/simple;
	bh=gRT0a9sBRmkTC51l0OOIlLWhc2JWAfT0g9vO5t2IS7Q=;
	h=To:Subject:From:Message-Id:Date; b=Mm3Vd08V4g6z8Tr6wFxwv2S9Vdrf7+NRVBUMiIYwQJAMhJViaCBofdlDIsrnvtP1QPIZ6yo1n+zJPdIHog7+Pv/gNSeKdopJ44ZPxjKaJ3gdjc42S2anr38pi10NLAmg6y6rfAUtI1Tqm3hufM47Yy+U6FlkO0kcvlSF2948JE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oOIvySty; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oOIvySty"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B109CC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741402133;
	bh=gRT0a9sBRmkTC51l0OOIlLWhc2JWAfT0g9vO5t2IS7Q=;
	h=To:Subject:From:Date:From;
	b=oOIvyStyXN6m0W1JqBjJtH2Tn0d9jkXuK9q9vMAIO/lAKxZ/r4T0D9sdOdBcbMfni
	 oY7Ogc0UJYEYTVQuSwz3F+QIvOBEqz7LuOArU5nile7ukPs78+si2TN4xbZMYvrJMk
	 1JWq9lmXxxaxIWKluDlmVaOO4DyaY7p1FWTMLAL2qQxL6Ye69nVAL35pl+OALRCDsn
	 i5H5fzVOggGqu8rvXxIaltAhA2Aip4Luxh8dhhwrwX1p8VVGEeev2OXTt3uhpSASxu
	 fR4pfJuwA5JGHeP+E9AsVFnWo+7rjLkeiOrhsMXMKAQ1OwMweCWeYK/tv9qibIdl4t
	 2inTN4M1XMPYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97424C282DE
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 02:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174140213360.1989.7209614691935158689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98efa78d0f57b7c4e9c6fdc47d5ba18c424fbcb1684eb26663b2b9cef8cc06df
Date: Sat, 08 Mar 2025 02:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741402133
