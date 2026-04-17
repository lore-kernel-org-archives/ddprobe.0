Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300E62DCF74
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776398254; cv=none; b=vDZghr1Qym6LC42ulTB61A1jSQT97dU62zAiSAQBgWkoWw4FqOFeIi+nJc7oHWiA5344cIFG5nqk0ul10PGRyAw+r+0zoRz6+YBozJs75Zd28kbDBG09U3LTKHstAPmGq+VWyTBaE8G8aif38mJfpxu4Ut4u6tLcRS9BQpfhol0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776398254; c=relaxed/simple;
	bh=PV93LWiCX+lbXmfXPUIqXPr+NmSoVKXeUMFJ0ilxaTM=;
	h=To:Subject:From:Message-Id:Date; b=VHor8SfpK+6EMarCjbYZE9htWkF8nqfZeugJX1wLTxdnEVSdNba0k2EGuMsUwZrOg+0pk3Niso9zM5tjv6rYRWN7CgAm/xGcVZd56l48s818xPKkjIsyUI6iGoAwnNcbe01A/3rRYkg80nvNzn5/Aw5bk8BBbPQWFNCXkPyavMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RvXGaGQ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RvXGaGQ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F9DC19425
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776398253;
	bh=PV93LWiCX+lbXmfXPUIqXPr+NmSoVKXeUMFJ0ilxaTM=;
	h=To:Subject:From:Date:From;
	b=RvXGaGQ/KlaXqhtZhgVsvBpg0G9/eXow6Xo/F514aFBUvmOX04LNbgpqAITzsqQTG
	 OAscwSNB1ZLTZTtOrDtOk1YSnIB7XKvc2COjT+nyDyuj7iq8+mM/7e4FzqXydu8P87
	 EAOoTPxHe4FmJ/aytc+05el27RuWxs4gG47cL+jLDOHVpjeWjmfve1bBNQFmwjcRP/
	 kyZV6Zor2YCzaqpODo9w2NBRWi3bmNepd03h4/4vp/Q1UbLwPSKJ63jdDSw67+ajas
	 J6LoHvQ+LcqSbIeRaclZS/o4ULgypkxjba/ZiG2Qrd3KAJ7cuoqpe0oj2d3otroWTT
	 hIUHgJBPjlEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93C4F8E4A1
	for <ddprobe@lists.linux.dev>; Fri, 17 Apr 2026 03:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177639825368.2155.1525011572504695612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64ca71f98e085b3a36148a5e43aaeaa5a506c8318a64ba595066537aca52feaa
Date: Fri, 17 Apr 2026 03:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776398253
