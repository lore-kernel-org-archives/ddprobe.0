Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3439428AAF1
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746632394; cv=none; b=O5P+NltTe0hnyP7e7Nz+/qrNxbam7Mfu6TXCoUK3hrgkIlv6Il+ZCtn2WxKTfwtrG+lqUm3FMPH5sVoqPqtcqGZ6SAo8mPTgHFslcpprtc1L5RHIBcP8Zql5R/KZL8L06E+ujR+KhYZ2Ha57NChueETbCawVhOdjRYexwNlFmh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746632394; c=relaxed/simple;
	bh=ogGGJsGIXy9aN1vMI7x1rSBN39VRKavxJ/wBFK5asYY=;
	h=To:Subject:From:Message-Id:Date; b=NgQq0NbXHoYMkiiaRdVmBFdYNK5n0TXqZBwp65BpEKy7RJYLr8ZpNs/XrNkTz/6hsv2tCUHKcMnjLwK0WKGTbSJLsb1MguzxIm/7eQu/79DQZl1Pt2dEpSIG0U8Nh3SCz3k2dUKG1949LdBx1hx2R0DImd60bG3cgTsJrYwR3N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uiK9Kc3P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uiK9Kc3P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CCCEC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746632393;
	bh=ogGGJsGIXy9aN1vMI7x1rSBN39VRKavxJ/wBFK5asYY=;
	h=To:Subject:From:Date:From;
	b=uiK9Kc3PTVoiEdKFNbIc7nwWSkP5BevPHerlR1NKJ6tdCzeNarfmw+KoyFC22XHT8
	 hI2V3p70o1EAfb10Fsm1QQ5DN21v2uqLmyw37cJB//lRleVS/oI1w7p4PAOs61eMG7
	 VpVgSBCxZuTjFA76wujm016oowJKK794q7chSwH1h+Ortm/UbAQMeBP370TKZC8IiR
	 kfFDbIz+KlFnLBw7lVQxA+632Ok0L0daeo/Up7novPaf+I0Z807puFgvD0N8DVJ3ML
	 +YPxAItcwAdVKw1s1DYK17pEZCfH4ZD8bszDMipqhTyNXcPEzYcYYsDijiAHkE75aT
	 YivzWyVUa5sOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE41C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663239357.7155.7470355493511679232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49e3bc7788181ee1849f2cb89be5258b8f8673d24b5a54884f18eed33f85cc13
Date: Wed, 07 May 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746632393
