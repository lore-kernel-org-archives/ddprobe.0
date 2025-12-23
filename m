Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B612CDA5
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766497434; cv=none; b=duAhR2q4uBTwq+pL5/TMF/rig3pWSJHKf6FM3AqadRsFeLxVHTwNDQxwm7pUst4X+ynKhykAWydot7VT3v9kWXDVQiNNPjZSBva2Yrd+AThArSdzvzk9LuV+pha2Y70sFLq8+uUbfW6sP/2c3ikVrqWTFvuErxd0fYH7W4OUE1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766497434; c=relaxed/simple;
	bh=1fuavlaFmlGGpI9OVHWdmjl8laUsgEvqd9BCvoT1hsM=;
	h=To:Subject:From:Message-Id:Date; b=juhLOpUkZd9c/Y0VY8zMP6/wICZk97fhsOLoAe0FksjgHXHffv9h5k5FR18isEcLN1r557nF+0tlOIL5T9r4Hv2XBblN+bVLMxV31vPugmyaXxl9+2KOie1DJos0TkLLYszaiYESryZr1Py4IEWiyko5GoGLGm/3LMMlsxOxl0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nUyiGnDa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nUyiGnDa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49FFC113D0
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766497433;
	bh=1fuavlaFmlGGpI9OVHWdmjl8laUsgEvqd9BCvoT1hsM=;
	h=To:Subject:From:Date:From;
	b=nUyiGnDaz6Fw4qhOJO6xxhAeVkCoW1b6ulUrDNb+3DBoRGh26cHxuWUhUESHQHEf+
	 qcIu5HYTHbr3NfNweTqF1z5hR7FrYBZXIIzgMLohW25+GJsgJiXcsVP1Ph6iM7wsVN
	 LYW2hqF6Y7AhjB3fNwF8YNHiGH3CBSvsicZQWVrCl1S/JIJlMJJILKnoZPqxIjRv9f
	 jGCr+KfXrCTXkMeSHdyslXIPmuKv6rvm6Cl8B7GUfCFXVTQgTq2zMUBwRo4/Oiv/cg
	 kVa4pQhRNuRr8c8y47saQz6Z7Ww5xWKNCyafjKbJ2VDbXjGlSZEDrjG3qTBO+/KMUl
	 wPKolM7eRPUKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9554DE6F090
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176649743358.25514.9045710362704974381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51171f65827c0071aae6b275897b99d11b974aec7327df99ee26e02ccfa6f778
Date: Tue, 23 Dec 2025 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766497433
