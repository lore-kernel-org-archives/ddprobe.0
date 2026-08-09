Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CE723393E
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786264234; cv=none; b=oZQjVcOL11bqiqb1CnKAS8wr/Er806yTo2FQJ4LOULS7pJNCLupq4/rggPeAU4Kynk9Ftea4cel9kWJjexrPKeU4V2edWQD9FBew1d2jzFrbT7EJloHdBnXkKszxxaJJog3Dv5rDpAF9O0g9lnidlUctfbDskqdv1XrDrFmgb8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786264234; c=relaxed/simple;
	bh=+ckknNq11dXmvqcL/qf34G7XYJNRe11emXz4ziFynlc=;
	h=To:Subject:From:Message-Id:Date; b=OkaV5p3KWTEOaKQ9TL5VXetbHvioiuUdTlNOXoPODVYW2vHRR8nHbkN3pLjxGm8PDzX/WHIWudxuv+GvZsrHIfI/IiAxeWtuUfKvnPopy+mWGhzeP+wcJQ+ERlduKkzg0Sd0gs1YM8iGbUgCElEDKnne6PzGfAAy6t/VNzzF9rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Olwxgxp6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Olwxgxp6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C719FC2BCF5
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786264233;
	bh=+ckknNq11dXmvqcL/qf34G7XYJNRe11emXz4ziFynlc=;
	h=To:Subject:From:Date:From;
	b=Olwxgxp6OdRgeeT/G2GKFX3/WBGbLB6K+n6HPBGQOyXZHoykM3THzLJJyvCg+Z9IJ
	 LBMH59nvDD/U9NffYsjBHHEc23pV+wLBXtgAXe1aF4ZUv6dUKBdRcQsyyLY+cayYlQ
	 1kKo9r5D8xLDGu8e4Y6jYvq5hzjMuSc0dW69msYZceC36gJFfRn7nfWA+/WYbQGgdM
	 TcLJaY/Eqga+ACI+3xm9gdw/ksv6cyhP96hK2+qG0/WKB9lsMp/90EhfpUFHfxmCli
	 u6OY9TwIpaoB41ciVRKMkagKrixbSIY0BarZnZc3XUj5RIuC3cZCI7QzgW9Q2DY+zw
	 ILG0qik75DFug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC845C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178626423369.32414.13569980784011041672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cd25c476f80d13f4c09aae08839a07a7eb6a6a9709db0d83f61b839747ec1df
Date: Sun, 09 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786264233
