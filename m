Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8873D3C09FB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791574234; cv=none; b=ef08o9whXzGS3r53kb6ST1lwWZU8wJWamwWIAIAiQzw3Ij6qA1uRb34OGqFhNBjq/2aYiSecj7UmJxXD9TeMqigrlqa69ZVyzaNDbEbp0yZ5L3yZBxsL+LF981ChzANDoJ0zXjhkAgPoNXS9UhgY/ddXvu90/+yTDJU3jawMJns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791574234; c=relaxed/simple;
	bh=mJNn3TP5XkqLx+H8CCIggdbKX8rRtHSzs/S4K7Lgbg4=;
	h=To:Subject:From:Message-Id:Date; b=bLz0ZgjrlGZOniDUQd5tDgf+ADOgba5A77GdlGfBeDRoNGHkmGIL3+FFL+HbTlz1y9dB86DmHTh2AQQtc8xHxuTRTuFP+pU+GNtBzZIc0TePoS6csgE7BS8Eep7H9+uF7h2UQfj8O0MPKt/AHValHrtUCDSAijmyyrYe9tJNBXI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RducqyQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RducqyQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7ECEC2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791574233;
	bh=mJNn3TP5XkqLx+H8CCIggdbKX8rRtHSzs/S4K7Lgbg4=;
	h=To:Subject:From:Date:From;
	b=RducqyQ70nO5DuyTiGLA9MXACF9t001evv2tdMOhCBSqcXBjZ33h8d30zgA68NNDZ
	 JOTi99DMi5+NsnSek+/WZVoCsxnQC1M8nvAZCvcr7ORlxeAWzpEz7w/PIhCmLxq9Dg
	 JtOJ8GEx4cWmsd3h+jAVfamcI7pW9btVmJ3WgI95FALswlTGCN5xnXGKTM5y12h1Rh
	 HngNzktDiQA95VAKR2smiwnJ7CwlHW+1RRwiVLR1U2+65zQxPbG+HSKu2ocXpn+vq7
	 P60nGmkEVc1lxv4kN5feORzj0LZEPJDgdNMOF6EWxguNkJ2zHxrttYw2p8+kdefpFS
	 KKcOgmOP/ll1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC488CA601E
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 19:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179157423369.19724.8728959875633253639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56fd0a934aaf60bbc29795e4857d6b8980567c200b7499d792843f6ca5be1317
Date: Fri, 09 Oct 2026 19:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791574233
