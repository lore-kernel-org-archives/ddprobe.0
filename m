Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2828128819
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751215193; cv=none; b=Dged6b08HqVcJX3x2QuQO69lyRAISwh9snGi+jzODvLMyIIsIWS21raPCPt4cwdx6V5Hd4q5+nRQ/LFYaz1fUILSdF08XCTLAkbGgvAVABDyEfOHZQwTHKKGi9ouf+TfHGwwd4L7qiWBazbVRCEmreqQFG2cB9ADK3Z9h6tWIP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751215193; c=relaxed/simple;
	bh=2pKwdV9Zc96hr7z3bJrRvrqT4SJH79YCl39tTF3wv7A=;
	h=To:Subject:From:Message-Id:Date; b=h4AdS9Lw2gt4ciWomN2F0xO8T3ZU3T9OOhdIH4y18h3aNkx52vbaMluLabHrjAM9zsgx+Bb64xbnQ5W9N3GQAFDwXo30QKdpv/lL1npV9kWDPKYSx3ls7zrwYr3soA1q6+Zeg6UU5Ck2cFdbGz3+wFtGTU/yYcDYEsWm9rP53rs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j2bafrpN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j2bafrpN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751215193;
	bh=2pKwdV9Zc96hr7z3bJrRvrqT4SJH79YCl39tTF3wv7A=;
	h=To:Subject:From:Date:From;
	b=j2bafrpNZWKo4po0tYarG43HvcvgM72nCU4jO/l6jqt2r1cvPp8mn5AG+fXHQUlFg
	 CQSka7E8bYafFaJxPFv0rWo6VYdsLy6uWAOyqIrgGfTuPmH23aUScbmrDAKle794K+
	 bLcyXhit4xBIWNqcNQwlQQibHBqL3bAGDB43CDSANEp1TzzcIzExhygUqCAPmfVg4/
	 Acfp1LkSDtUk45folo9u5z2kFfEvkhY8Tz4jJ00o+/WUtkJPh2/b/tMin1MN8+OlYp
	 Z+mXppDPuXmuMfH28DCpZrkfywuDtB+8fo7HjGhD24Yiv0FHcWSoXqAKGilBVBOyA5
	 Acm5UfaEdj48A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94028C7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175121519357.21452.4083108887205872588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7201a5875a57a1ac609ab28ce7284aa7b0a9b37b04032c52ab1f9376717fead2
Date: Sun, 29 Jun 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751215193
