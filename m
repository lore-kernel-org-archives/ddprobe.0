Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F2CD572631
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768007634; cv=none; b=KKUZb/tBGFifGqg3aABiZ/LccqTV4n/+wfLZpMendzs8K/lh322VWBOW56YLL2Xwg4XGWiJ3WByIeCEgbF1q00qpGglq+LNnK+kaRnUjAckkf29FfhVY8tmAagwsNNH90baFkziQClcQRuwm/fmibM95NqE3X5GxIkaZtag2QEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768007634; c=relaxed/simple;
	bh=SF+6JPCXrVaiiFm7wt354ux3Vos3NpifvRa03KhTSls=;
	h=To:Subject:From:Message-Id:Date; b=bl2XpZV2Ju0Jyk5y1g9/Sv5aP5WuKX/4rfJvwqic22P7uxb2rVhRVyBIjepaDvfrVr55uz6kLm4thUKfB6o51UwKnYZ1karDpaukDQIURVAPrWdiQZ/Cjch3hWGVfB2fMYLGdiM6QuRtEoRM3W0UCpFScildOGDhEFZTBj///4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k43Nzbts; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k43Nzbts"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47DEC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768007633;
	bh=SF+6JPCXrVaiiFm7wt354ux3Vos3NpifvRa03KhTSls=;
	h=To:Subject:From:Date:From;
	b=k43Nzbts1PzTja36Ug/TCo5KlAtK8sh1gFwnsNvjf/96VZ19uLs6oPmSWAIQxs/Fq
	 AWc7E3jrWB3MPb6ApjO0cz4dSuo+7MKa6a21g5kSD9L1owjETazHxL0oMJSrkbU4vy
	 3qjI71BA5XxTlN4zbB+m6+Ooo7sI5OHjzMVsLhJLQnKS8y+LIBkMUY96gPYyn2A64t
	 u05s5oz69ZQB60BezjZTDRVVlMNq3ZVWAk7xbJIppoaEXo02j7miN0dISM2oDh6PyU
	 eWyigXKZHrim0OVTb6BwI1Ob96CZQWqryrHI1KY7Iz6PmB78yOz7Y3IkQaxY1hANnx
	 Csujnsl6uSYPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957BDD277C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176800763358.24749.18126071706858235657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16f5aecff12547c46075d86d09690b201799d71690c052c7b13dacb84bf9ec40
Date: Sat, 10 Jan 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768007633
