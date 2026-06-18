Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD204227B94
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781756194; cv=none; b=W+UVn0la1Y4Ei1I1G1T+y0KlPA3dFZcQLAaWJtDLOUFI8p+LB9fTMgbnNv2x7wZOA7kSARb2OJou5umJ/FusWDvoenU77gtbBB9J/P78H0WxWDM/XhEIWPFclwTunXs1KpWUZEjXaOkezQ7U8iI2sulbvDYs17HygMiGTrOvPSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781756194; c=relaxed/simple;
	bh=rlqDrWpAYpz3nR5PelsUyJU5j3oICpmP1AZz3VB3B9U=;
	h=To:Subject:From:Message-Id:Date; b=U0uTqeJChiuUhhouopxg+Q6LEXO4qJl80tISnP3EVo863qxta5AsdC9cbr1axVQZ4GPd4qkw6Q9ZLupm8WJrAu7TL+/DHG3Ps4bt1vy9DdS/rkR49toNQFKZJ4RKEUG4jH/nev4Z2LezAKTS55lhmGgZIazD1tytjMh0hEv0eHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tje7LjSm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tje7LjSm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 42E35C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:16:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781756194;
	bh=rlqDrWpAYpz3nR5PelsUyJU5j3oICpmP1AZz3VB3B9U=;
	h=To:Subject:From:Date:From;
	b=tje7LjSmVOBJj3iYETMB1zVBxlEJtBlehSvNtVs9VWblWwvEI212bKs8rQMiQOoZz
	 TrXq7sHv6hQqIj6pyXXbZHxfu/O7r3AKmoY0YWTC5/zYg9DFanZu2m22el3yZsRf0m
	 sRiBN53et+jyZwCXMEa8+e/dpMgIKD4X2lq2RvoGmyu4rfYKym00c113bxYWnsvY4b
	 s1YfC+hIJaDaA/bZz6w/uD/bTFMyKnNmxxzk1MpyrQCjRfQCbsqAEI0tnu+jyyGp91
	 Hl8IS6Xjis62HOfxdz+RGKTELydWfuCjUs6UkqxYus+QcjVW84HFYaQLUHTMTQfCbA
	 xoE1NMdR+HQSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6D84CD98F9
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 04:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178175619384.23774.17107979939104193906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 842b47af33c43abfa495040900397eb78e3bc224b654176a6afd2fafa39bfb29
Date: Thu, 18 Jun 2026 04:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781756193
