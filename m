Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F789156678
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759715394; cv=none; b=F+Z0ZsI/EAIIJ6JNwGL2cMHWfD3i9Zx5E/8S5mmvOyhR5fqoQxGYztL6RcUcEfPweK7zRUnc3USAIp8KNjVNDFF6p5wE8AOcMkbPWxythRfLV/vNe6jBkrGMhdnHtgDX5DQ7xLSwnGe0ii5YNeMWnFRnYKWmZLG8r/ogmtDzick=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759715394; c=relaxed/simple;
	bh=6Tgf2jGWxOpLmKXiiBMsWHCU1dvjjspLQEOF8F3bxc8=;
	h=To:Subject:From:Message-Id:Date; b=G1FRX62FfV/MoZkIyM6rBG4R9CDv5OfnoEk5xGigonVmvCJQeSDxxIPmCR4jQybLURRdvFR0aFjjns1YzocWNmua08ZcZU872uC1oSNlLviZ/rqLiubbXES6hIbHxOEfd/5P6ftoTqMxI6tHlmSOUOQRYbzAGIdE9Dzmnhv2meY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YRPm9Xu9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YRPm9Xu9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FE1C4CEF4
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759715393;
	bh=6Tgf2jGWxOpLmKXiiBMsWHCU1dvjjspLQEOF8F3bxc8=;
	h=To:Subject:From:Date:From;
	b=YRPm9Xu998hqDqdjwcpiwOUcbnrzVrqxgKpQ9OHxbp2AOTDjpypYzdXlt1YXYIlak
	 n3KzgFTeRz0RF8pLNVZULHAk9MMm0scm0ZsNs4L1aRd4xyuqtL5hzaGKwkzAAjwrsx
	 sruyb6H73wRfrM/b2bO1wvdShkA0Oe6eklftCDFlpq4y4+LEWtPADaJmDfuxx4dIPH
	 Z1uMFbC3NtLKgwEUPLMX1oXNKX4Tu+/Ni2f17m9aw5iODFKfqT3w4HW1EhUe+gSfGl
	 dWiAiQC9Ckcg1/abARq+DJ4pTRjXPGr7fSbQtxYxOv8Zheg1K7z0jgCoqJqVReGoEr
	 kLc18RY+nIVgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA3FCAC5BB
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175971539357.17728.8255347742340105867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a84cf6739db86220f660718256da1167189827d105495c683edcc15633653a
Date: Mon, 06 Oct 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759715393
