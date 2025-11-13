Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10E4223D7D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763053794; cv=none; b=uNpQXlOUP/TLO4YlQ4n1457m73UNo9PsLHW7jBAarvEBz8OJJnq6DbqsnojPhoKiACGOhc5t0HtgUKHF8wbT+DWtnWHC0GBgOm5vA0Df3s49nRnfudH14yDQ6nXzWcM6ZQ9uSnlgK1p8cVpL2ju8tr89+IZlOeFanqU+gPU4TLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763053794; c=relaxed/simple;
	bh=6WxW80C5vPJGF/JHTLjbBn67eLjGJNDcyYsj/5kTftQ=;
	h=To:Subject:From:Message-Id:Date; b=amgG/ZBW4WYQQgO/cDez1xMJDaCUHfYt5ZxYxrJFx/eYtkKDXR03gMQk3J/HWNeWCVI2fQaVM1VRfwt2NFLIjikyVM9CdlWfDUW7oB/KKwanR0qec68SBn/h3skzTL3zaenxNCyXXkEyTqltPAnGKwU5XEcQE5xYbWT5TUN5L9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y6ST7oEN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y6ST7oEN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C9CC113D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763053793;
	bh=6WxW80C5vPJGF/JHTLjbBn67eLjGJNDcyYsj/5kTftQ=;
	h=To:Subject:From:Date:From;
	b=Y6ST7oENRKCaIwz4dLgoUqdfBEVew4ctlmVt1eDu1ln9Ogkygh5I+EvzCpxtuymA4
	 qjpKLn2cf2jfnJdvcgU0CfHv/iwyzXHXSZAtNRKhm7gJmZwybcehCnyOYGlAMRg7hJ
	 7907+uoiZAGoYaGemUfTZ8hBX+4SlPEYVAdTp9gzzWjtEmwsJEXW+C6QD+3BwtYpNI
	 S5q5vdL3mAycqh0p/s4nsRw+agjhxradwP2hBPaMzMxLeXN/m0CzKyHzkO/sr3Vgt2
	 YfLqURSuUFQeFi/zgVwWvwAIJpIzzSZMvN2SzYbJclo4lI7cMMPsHaT+qQPIM8WuBc
	 1SE8tIegGtxIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9327FCD8CA4
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176305379358.7100.7418658087902751161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 776cfe29253edad67edf32e1e8418f542c54a75fc59f24c28cd2292719c0aabd
Date: Thu, 13 Nov 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763053793
