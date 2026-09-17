Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41E274AF67F
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789638035; cv=none; b=BmINlV5WTx3hlKY8cMmMQBZwwDGC0LrTS1BtDZgOsfUFZsgnngVURWcShQ0v8TQ+z7AXrKTWBoSAofJmyVRqsyAPTFI1lCK4V8W6YDom0bzl0tb7N4jxs4FMjwbbbwaQ97yiB+dXxQRU+Hlzrueq1NJ3RmKxMTkijN+I+906L+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789638035; c=relaxed/simple;
	bh=6ADRH/84yLMI6bDH0wv5IEn2t9PKukwHbDvAzc6WlbM=;
	h=To:Subject:From:Message-Id:Date; b=i9pODPkESptRoB+Y8rVB7etkguCH+5itY+LUpyfwwkwmGntMWPtUGpXSlhuN9TJjetyJCDl/PZKJDouEv6yBdrSDxAePTaLrFYYfTSfc5Slj5vwAz5AkUmQBYrhrkCZVbukAlUwtaK0b6iRZOVSIrxzJeVgGA9wVRmGiVLOQNcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zk583hCp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zk583hCp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43CEC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789638033;
	bh=6ADRH/84yLMI6bDH0wv5IEn2t9PKukwHbDvAzc6WlbM=;
	h=To:Subject:From:Date:From;
	b=Zk583hCpIThZ24xZEmmkbnl6xllYsmfrtfGgmopDOZcfurhYR3EM4f5FYaRSenYtr
	 gi92/TiIWTAFJG1Rklhkc3u4hmnM0jvRxeWx7ZFF0/Fw1zOUg6kyC//bEyc4J5QGOw
	 O/mGqeI0j3+8buLjv+BlWZVIr2QdmThgRy92hWmzRR2SkYaM6yNUA9q0EahgIrlqcU
	 EWvtu8JJa+8hRWOYpRHsRoka5zYaDagpK4jyU7TjGSX1dyxlbCoE3WN1O6VcTWSiCY
	 q/zdvdfwdr1G/dZ1J8Fl2bJANObnvZS+e29LvqpROoEJW63TjSFB3Be0/OXFc3DdDF
	 j6VKVwsTfRdxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA20C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 09:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178963803370.32184.14520673593109258721.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57ef546bc5c2a9cfc3cab4afbebdb786fa158ea7649d7effdd8db23ac03fdc05
Date: Thu, 17 Sep 2026 09:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789638033
