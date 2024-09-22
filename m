Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12291176AC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726995954; cv=none; b=MHh2Ci1aTaDQEOJowuFvrhKlvg6WZ5EokkdnbvJ6ps/RCorEVne9pqjejOUpUfsb+fIzHb2yWh/eTHyyQi9AEJxaIoDseWQtLYh4ypTAqwdD8E8pyxlqR2GctkZOXdsHuAUti9iHi5gDmcbhZduHaPbWQVIS51aoa3xiOl7O9QM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726995954; c=relaxed/simple;
	bh=PY988AfzTVn3nTH2JecBnumKfGNO06RHcQW+ZCYyJMg=;
	h=To:Subject:From:Message-Id:Date; b=pN7WW2JoVkt3jKYbFeOPq5eddxPlPGBOpvzErzBO3YIRCsYTHx6tXr5ljiZj0HCS6cffHVTz24QdbeapVwq92dslLiuFAyo5mK3VL1j7UaZ/gFCDodbT2PKeO+4t5powul+vU3a1QJ/q6dPLscpxxWIW0aH+PK/bFxNzUnpZj70=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3FZBYPD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3FZBYPD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF56C4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726995953;
	bh=PY988AfzTVn3nTH2JecBnumKfGNO06RHcQW+ZCYyJMg=;
	h=To:Subject:From:Date:From;
	b=r3FZBYPDPid9Jv1q270LJIc8M/gTzpNjKMy7hfgWvT9VnXRnVRJropZT5xzOCZaDj
	 AdwUAE4OFa7YsKbqOR0T8POdCOQmUBdy7c8cCGgNZEyMSW2KD4wSK2HUQw3NnaFx+o
	 GHVSveBIqOU8KsvfzzoOc2iAZCWdL8TyvXiKyCy4vc6LjPunaE+hJADTJqQotSZFrL
	 mEL7gMd42v/KV4MXMf82WqekLrnvRKeyhkPKryDTDclyYnOYAy7qvhSF64EVueYaDZ
	 Gcqf2Sf4ShNeA9xwSJN2aObNKnEhEX43NY4YDjDjsKW6NrvIcmS5tfAH1ngs2pb26s
	 6G0H7hoMXGQag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA4ACF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172699595357.518.12374033536471064307.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e67c76a1da9f08c1917d5197a3b14021f0f9b90bb2f3033505861b43db7e9f0
Date: Sun, 22 Sep 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726995953
