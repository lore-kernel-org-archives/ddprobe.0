Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7523B1DFC5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:00:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720897223; cv=none; b=oWPkriEbwtpZLiNXsP0/nlqQ+AsTNEzSkBm5Jpmo6h0YiRHF3UAdhxpKm7GvJ7MARrAAJhQ6CD7s/zw8PPZpBCWuI/T76uAmxhBRnKL+EvsVMhlOzExUG32OF0/vDrK/cVEpfUhsg0pB+UQB8DoVJfCj2Lv0T9soqWc4AHmPM80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720897223; c=relaxed/simple;
	bh=M4380GsSwCu3hA01zBzqj7dry+65QIJ9MpRq5HlW9ek=;
	h=To:Subject:From:Message-Id:Date; b=Oi8F/S2jbSjFeKGJpdTWBDEcHL+gDPaMexJn799EEhMTwsnxfx/Q/nbWezxD6xLDr4qn8cK8ERQMMcwOrieyT4lAG7mrvtDmnC9c2j4Zd1ImbQgycnk46HpaOtRZBxk5DCeKIMZdvigFDiSniK7z24q88MOAfs8bs/hNUbemEcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rw23tT7T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rw23tT7T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 021FEC32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720897223;
	bh=M4380GsSwCu3hA01zBzqj7dry+65QIJ9MpRq5HlW9ek=;
	h=To:Subject:From:Date:From;
	b=rw23tT7TmArZUPzSH9vO9yOpsQo6MTRl3PElTCKhXmv5yWowQRrkh3bRBXxo61/KV
	 UcQycgd9KkLHErDMuITr8dM3305HxHCCkpxEmdztVTdPi3ttMZcjjDAw2RRVLDkVYP
	 tyVffYN0YC0U8Z/E9JmPx7R4CX2TR2GYvqwWZ6Q5tfWFgAy3xS9n3jx4mezN7Yxfj8
	 ajSUsUJZ2ST0/hhTHw30WnSUpgeMbmrOcsh/ulLKlK7ugoCEKvuXOWtgwtTmLTR/ne
	 kriog5pvJYCMQZBUF/SjiGWHY/Kxa3IBupAQH/0qag3+L1aaLq1+/fG2gS0NS7s90B
	 SY5mCwuvMcP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C079FC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 19:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172089722277.7802.9329280198219579922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f34559f2f323291a37fe2b231e5ca277f7e84223b13e57543383903750e5f3c2
Date: Sat, 13 Jul 2024 19:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720897222
