Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8FA39A4C4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778592034; cv=none; b=JXaA5jl70x1MyEb0ZASbSECzEKqy7b4lExn/xUU34CDrSKtxFrWbhh00e4OoOdhDkS7+j4X/cBBzoRm0Ozazw1SwBc3DgTx7BI5/BkP174CZ+kPM559R5FzAIOwrErvv76OKbXQfF7F5nlGc6xYD0AsJk08M5jy3jwHlSf/ZEv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778592034; c=relaxed/simple;
	bh=DKryBmW2phGJ0MgWSEjG/Pl7Eu0g0n6A9GlNAr385bw=;
	h=To:Subject:From:Message-Id:Date; b=LMSh8raNlPNuS+FyANuVqZ205Owem8HV1fI4OQ3QcewubbnWLR3lnNS0neX+8Wc0uccm5qKFcWxzteQr1PoqrL6p40g3gC0BTFddMzVsS8cgLx6mcgiXj68w2f/E/72w2rySBokLLU0cTuXJX1nV53tdRwXRY2DeBJxZbvMXq5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FUvRJHdF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FUvRJHdF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBE8C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778592033;
	bh=DKryBmW2phGJ0MgWSEjG/Pl7Eu0g0n6A9GlNAr385bw=;
	h=To:Subject:From:Date:From;
	b=FUvRJHdFJr2thIyp4EPQASlnaHzvGzQ9KHU6iOitxGX0m/ZEAP5QzRWrMaj4IXcAh
	 +Twvr71krG8lvDp48FyiK1Y36pi6HNHbKO9RuPkeuBSq6Tl2P2HsfOfeyvdYQZ2uQu
	 tAvX3e18hFUFmQcRALSijrZVPNCbFm7saQuvLyE92WtXEpFZV2PnC9Qab2hBMJ62Dp
	 MZM8OMuEsFBuBGL0g4BbmjE/zq7DOSQrgJtpVlPp4kaTNt8gsJR1cQ4YvLGVL7Jjj0
	 g7LWj2MwRrXddIVoFnNUXdrp8391kKKiaszeVU2XwHTqwJA6ELLmDd6LIqBbJjhWXi
	 YKEyNEsEOdbOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2FCD4851
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859203368.21366.8551818602400306597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fc7bef0c5e91494e0052f461bf9adf71e96393926db752998fc3e353939c8c9
Date: Tue, 12 May 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778592033
