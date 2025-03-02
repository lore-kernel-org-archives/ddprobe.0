Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3786123F396
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740958736; cv=none; b=p6QwEVGeiN2FW0/kJzxYbfUeskA8TdpgAmThg3tcHm0N03itMAqJeBa6gOp/MH59epV0hTO3q0Ng4Qdn0RSXDROsVKgXfMZ5Wjtl37DkhuH6r1eNK7sJU2PBgt9b5p4UWeO2QKq9jbNvbYfimolDDYU8ugqm77UPQoLY0oDc3Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740958736; c=relaxed/simple;
	bh=lc2O4ota2YxmmvwvSsxzJo+qHGiw+CIJcq3X3jFN80g=;
	h=To:Subject:From:Message-Id:Date; b=CfK0IYoOtJHtZp+UowhxTnnEt5PdukOir6Bp4xGxsZObZXmLH66PScFXRf0xOsdHlLJpqJ0bLn7ur7NuVWKgi/tMjwpFcbN6pkFbeCxu5+1Fpni/FIQuh+pmtsQ2WDsjr6+HELV++QEty4m51vMXIdHYWktrOanCIUoylhxsCR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A7S4qHO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A7S4qHO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4140C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740958733;
	bh=lc2O4ota2YxmmvwvSsxzJo+qHGiw+CIJcq3X3jFN80g=;
	h=To:Subject:From:Date:From;
	b=A7S4qHO1fAzkxpjeuwQAJv7j5oL71HCkl25SIXIDSB6g8XNpEUNS+1qeQatfCutOt
	 U2iH5qjTzOZQPGi2XyRw/RnGSLPYrtcyDZqNHYzzQzc07ymUEeYcSqVv9dRmVmNZQc
	 9m62+TftZ1ZmXpXg6LIL2Nn5U7ur8Li9IhMQKOtvRBNkKVc+niaCHfxWIBoStaa/f5
	 vVkIXNIBNJRfWPBGlJerMBsA/02KkxMTjsfuIro8y4YuFB13RDlntcmItCRtySjz+d
	 eXb0L7J+xgyj/W8DhbXrHAh0sops6VwM+vlgIiUcoJlZBsla7w7hfbNX7RPIMrsvhx
	 yw9KFGehINrMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916E8C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 23:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174095873358.21279.3450005582719941153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a2f4685da9a5fdb1663943f77b63704e3319a8a3fb8023f06ca11c3cd978eb9
Date: Sun, 02 Mar 2025 23:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740958733
