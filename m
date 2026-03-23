Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C39B3932EA
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774263894; cv=none; b=j7cRrxdJMrk3Ai9puKrik46MA3Z/5hdOquovnUo4UInxusSZY576MbpiFdX184eeSl3wayNCBw/eH7hOQ98wWv58pNfg5tsusB5DfdQrxl5z4BOGb++/TQiltWftaMmQKElNtvYosawLxpUHjs7fgDw14mlRQG4yJaKRQwfwFM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774263894; c=relaxed/simple;
	bh=8DztqLBJFLfpmx0GuS8fkqvsBM4CyL1BA21kAvyOHDc=;
	h=To:Subject:From:Message-Id:Date; b=ivqiXmlwr6NtbP5XUed6/DS1OstH7KoggUsAYv654GJjWy7gV3xzt/+Gh8CqDMgVOIz/7p1vnJwv7So/a0bAlI2Zq5nxisWJeOK5x5/IhE8IPi5WVL7uZcGkImRRAhjCB0TyUKURQ2m8IB1WuEwXnYk0sv58ZIKDQzgWkQxkHc0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f+jV/65N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f+jV/65N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2478C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774263893;
	bh=8DztqLBJFLfpmx0GuS8fkqvsBM4CyL1BA21kAvyOHDc=;
	h=To:Subject:From:Date:From;
	b=f+jV/65NpQd8QbAhgVQpLbNzvXXZSGpHQw505pmYBskf2q5+hDwXpRsci5Zvy7Ift
	 x0Q7N4dkanf8dpfTIXPRz3s/5lDzALZA2jGmHIY+9w17KaAwp4zqAlKyjFQLDQv4Mr
	 sukBdFAaW4EoLTImcKbKtQVQQYtP6ZA6et12pIoNuIOO4IvpPcenY3bWLiJe3IXG0R
	 PIDCbpbLqgLxV+1C4jZSNVw3fsr5Q4twTPeiQT6+b34UHuEH964GK0qcjjF1qeibaN
	 Rsy9N+gPGzxw3ApLEOqbTsWhjMP0UPiPxqptzMMCJXaMKJn6DHplrOeOvwqqLYJROJ
	 45GPYBtZ6E3hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DEBEC01C8
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426389359.29239.16452527384320883544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a3c92b0bb52fbe204edef50bf185508c1fa2dfb40acfecd41ea28342da5d65
Date: Mon, 23 Mar 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774263893
