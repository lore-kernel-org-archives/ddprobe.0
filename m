Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9E991586C2
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766795633; cv=none; b=WdIRz+D98Es5OI5VJJOk/3T07NO3EkLLcHNwmIWNq1QwffHibPSxbhPgtEEQF2S2XuZI4gM761fxkLv0nGNr4leJJM7LSv8lDlavAJbvV9PFf91lr9/qMnsenUDYOWhauBdW0mEIl9xVCkMD5XD2iMbtMYM/RaVCT20HNjZjol0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766795633; c=relaxed/simple;
	bh=WldqVJSZzy/39K6V04d99ggVU3879paA8DnFXZB0yuc=;
	h=To:Subject:From:Message-Id:Date; b=kLKbj1n+0NBCfEBZGcFYKXAx7wEGicOdZURPAZg7K225/3FcOp8jWySZ/5CyPooc83AhleFQiYFr9OyqnMjL2PipywT0wF2s/p3u4xEhKU6NQcN69LWgfF3eeHzU0AoT8rIMH+22ZZNeBFXC1Mljlnb63x9pcl+nB94lsU4Rsmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IjcgERvL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IjcgERvL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A982EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766795633;
	bh=WldqVJSZzy/39K6V04d99ggVU3879paA8DnFXZB0yuc=;
	h=To:Subject:From:Date:From;
	b=IjcgERvLrJWkdWsTalJnpH1/Xb9OR5Aea3g3pv5BRlfEPY7K0LwRGniGOIUcMF8Lh
	 N2iQLrivP3PQGn11QUe4cK9nzbO++/PlkrRNyosfs14mxFatXJZrQEHG6KeSoETNMf
	 KXWd9Ulhzfco92W4u3a2xnoXlbalUjsgodMOMEMh2CH/5XhZteI+IDcwNnXuzNoFB8
	 qBQk2MsyD1z8/RSph8Sf8IsG9PJ9n9ipTddRqPUNefXq4QO/8+asDU0cyhVNBTcmSA
	 ozm+3IIor69wFbGJAfuryrVqJW8bVuImYkd5wuPjlx/MSapzWPc9ziMYiHPEoOhcyY
	 SJ63qDDqsjV+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 958C6E8FDBE
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 00:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679563358.1773.4618771610650740209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 531a4da1e523cf9592606e1a759bc7249183fad822a63db1d691f50c9f270c1d
Date: Sat, 27 Dec 2025 00:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766795633
