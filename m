Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E4522045B5
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748017194; cv=none; b=nXOOiEPWFF2sBDZoji77DZ8FfFLWneE2viQlCP4T/INzk/vWZl65GYW/HymevsOQGO10Y0u9wD3fHWHdDraJy/ZzVe7neK/l4j9HtOt9yKVR9V9v96uE1b96RyO+ZjHcEY9S4EL702hfoLBk4B08K7CGaAQ8SWFBhY5FmdIY2Ww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748017194; c=relaxed/simple;
	bh=9TYVmaJkmSci+fQeGDCBVlXnrLeBdh022tUYCBgm8oU=;
	h=To:Subject:From:Message-Id:Date; b=lboC9MgXskSe7aLHkX0/IfbcDF11ycwcYWmElOSywewZZc86qihvi+5Qi2IdIkrqUs0I/QMIp7qCp1r15kEHbKmYGUYpfSweg9aLQmc1MzWhlydCfF2YpY+UKA5mL3QBhpLZ4x4DW67/m66/BJDC9n4t9HW8Dh8sJNV1AG0hnn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cYT4qG9y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cYT4qG9y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00AEC4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748017193;
	bh=9TYVmaJkmSci+fQeGDCBVlXnrLeBdh022tUYCBgm8oU=;
	h=To:Subject:From:Date:From;
	b=cYT4qG9yx+cRIf9ErOJPaPRTarz5qWAm9wYCfwfVpWwM0Fd1e31TVRv8n8FUUIvqW
	 VRwGkrbUYYCY3MbPduPRZHw5IQKlbWYHTXOo+tfb8g8yUrQKY1G7bEYIoAkV9KMfa7
	 Ycf987HUiJQHvVBBc6Krk2FDsOyt19nfjec01HwO7XOtkoBkZe/HyeqDOBCdt9IQD6
	 OfmnuQw80OBlyWClSTMz+kYlgeTxs6WmdE0HhFpe4YpmaPbAevjsoDjbmiGP0CoCAO
	 +V4thdG1qTQ3fr/j0KCfWA2njS4GQ6JmSsSbj4mB+WdzcqwQshapslKKlpZ2tdSVsD
	 SUzChoJJpbVHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62DC54ED1
	for <ddprobe@lists.linux.dev>; Fri, 23 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174801719357.19048.4022371817415752074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6024de7e0fa9d858b33cfd20870b7bfdd02e1cbfa278ecee8cbb756f43fc0512
Date: Fri, 23 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748017193
