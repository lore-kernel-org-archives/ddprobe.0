Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15CEB1DFF0
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773779094; cv=none; b=pGsTruqduF30dUDFNDwIBEF6j0DOZu9NgvLi1U4mxcGy6KHltTdgwBnRwMSOZb4Te8fxW7Kdgo7LKPB7mt+HZLJe25RE9FYqzn7W+jc9p8eVvLUjaRcSwfPqI5ZG6zqni/XcWwoETZIiPURHrQGWZCdL9zeMd8w0ZkoA0XAcC+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773779094; c=relaxed/simple;
	bh=8DhI2XSY8Dk+vbGLuwte5mFdRM2blRsWV8rvaSbGkc0=;
	h=To:Subject:From:Message-Id:Date; b=f7sxIXBwAmOwEK3Dy7LGe01w48fKmLWCt8KqpEN6sjnFJq5ZehochKCByqbkLuv4i1dem8k16WMloe2U7FZjKVNxui8+qmISO69HmWq3GY3hblkOibKN/Kjx67gXP/rycTq6mUBEvDJFbO+lxpmupRUcu5RluK8sDItDFytvJ58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V8qlmmUp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V8qlmmUp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0506C19425
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773779093;
	bh=8DhI2XSY8Dk+vbGLuwte5mFdRM2blRsWV8rvaSbGkc0=;
	h=To:Subject:From:Date:From;
	b=V8qlmmUpJkDwTXspW92HFAdzDJMqfypaZGryjNt/fKRI3lCXQ1GZBhV/lNRUXXR8W
	 7+/2wnlCPYz7FfEsUtovgoUFi3lMQ1lZkawFGT5IkwDeRIYeSDYCS/r+S0EW381koU
	 76Aez8RKUWnnlnaKuamEbo8MMOOKyjVrf79WaxHcKnK1pUUJWMrndLKWrSZWAbfQuX
	 DUrvyHn/BuEGPaz6g4YdvKkJyh8u5vTdYIVNArRGCg/ynqidKdFWfiiGxuRMd0vLWl
	 yKkkTwPvOjhNK5ugkxQalG9UYKHED43R4JMKviJXe3Mt9nZfnDSTytyZeHhOlx/SQI
	 YA8STiPG4SpKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917EEFD7099
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 20:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377909358.7889.9411848504554589459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9caacb7dabfd3321e9fcf21fe1fc93d740515f4e6c1722ddd296861636e6b8d8
Date: Tue, 17 Mar 2026 20:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773779093
