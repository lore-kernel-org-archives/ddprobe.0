Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8253644A4
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773703494; cv=none; b=q2a6j5poFZEzvSuv16q2jJ7jluWo9ATHYTpMV7AnThMcJ4YkkH1ypePCraCRZLes6OJyzXYciBrXH6ukflKq4UNrgTWBZmhbXvu9xllOeiAnLJhG0xQkuumEtin3cc0oWt93rTx2IFBGuHB8EncbTHYryThEndi3T9P/JJ0cBig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773703494; c=relaxed/simple;
	bh=0CsSmKItIMd3qmlSrrYYAEwA3i0L72X/D8L2OwligKI=;
	h=To:Subject:From:Message-Id:Date; b=EhKs8BYlHNgcwlVMmiBLyN3dnLRoKidcjtqDRHZAYDgdtiAb8DuteG/rKUXXHr1Qmy3MWjagFennIfhG+jxWwzYx4aObA4Xi1TXZ5C5NGXVGK6pWR9f5ZbozIKOn2Xyt2qQ6XcqMAIOJYKLKVP/Q9CG81tEC/aMJOVEsmKk8RcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X1msRxWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X1msRxWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F299C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773703493;
	bh=0CsSmKItIMd3qmlSrrYYAEwA3i0L72X/D8L2OwligKI=;
	h=To:Subject:From:Date:From;
	b=X1msRxWZ0Za3ZhmIHeAtUwOyFsNlGVzSTdRSC4MdG0CEMTUsJq1wsVJ5PkAyYqYVc
	 TigjRLqqOVkx6+3DP8YDS4YZ2xRjxzygljajD1oYQ1tq6DDK9F0VEDVJ1vfvfNWAKY
	 P3Kp0brL7ebaqlv/VJJLzwM0qLsLBmJ0RhA+hmAeH9YSSxOEz+9CnJNUVQDUr0vMbW
	 sLXrxyW2+A48x1UqnwL3lhEE+kYtwUr8Wv1syXBxMFuTjGDpULe3HCulxKMpzqjWXn
	 uiJcVlnUGRM/87GNvKbgZR42MIyXpQ53b0kxx0DMiNFL5KMOagAnMD6VUJURGbGjhy
	 M0WRdLnLqsjsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1E4FB5E88
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177370349357.4302.1889922080040459642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 808e5cbb00d119c8178e23e6fb50cca2bbeb828cbeae881af237ba426f6c1a2a
Date: Mon, 16 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773703493
