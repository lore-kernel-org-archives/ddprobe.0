Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 408631494CC
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760074194; cv=none; b=imralDwKTCyd8q4J56QCB3p8ggez4DzU4t34nwyo7I2fnCs9a1dLPLba1qG/D1iowdk/sDrE+V/CtAF+iRWRQS8GDEtmAXBpVtRKHt99xHSU6qRQ8e+hTRMtRlxZkwoK6aSVexEQe5YlWT28/72TxCtAtQlEScW4UoDIzOX3DGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760074194; c=relaxed/simple;
	bh=Ts/aBMUtwl2IjpmztcmmVpgPFYD4IlCwrN6BcSPkngQ=;
	h=To:Subject:From:Message-Id:Date; b=NCKOaIPpU0sB0Ac/DURSJx/bWgU+OY7OS/nLo/UB1wgJgXL/ZD1I7Ocmrufh52890UBDeBo2d1Cn9Hvq3Loes+QTR7vVZ0KL3EyLMUsFH+2g+b5YNuiGU2LPuQItbWmqYcfKwSJkH7qi1b5Eu18V6stMGcW62B9ODl+U+QSHZJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=REvkLJ1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="REvkLJ1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0586C4CEFE
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760074193;
	bh=Ts/aBMUtwl2IjpmztcmmVpgPFYD4IlCwrN6BcSPkngQ=;
	h=To:Subject:From:Date:From;
	b=REvkLJ1ZEPU7dtTvz3g9CzDNqRoT666zHMtuGuiYS1HabVh+PCO7HKFprVx9zQDdx
	 fsPA8SZuRUpg5JhsUtmXodMby6+nBM3B8ai1xfKhIzbWFLgts/OUMFAbW+/N8YXzre
	 UT0kbPu+WeKH52kIcgxVJlRe1LRYBCxjUEIagpwDagQ4X+B/6OiYPmXF/bPHPNkwBa
	 ETn1N7mC3bD0bvvijNLlfCt2dfZJ4MW71HSm8RfuvB0WYcCaDp40jDYtD4QlX0/Umh
	 8l9NiR3HrsJZxqH/RBqzjmDASzCReOf5ctwFV3q096Yj7xDGs9cd3WpAT2aJK9ECOq
	 0Pbn5ndRZv84Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF2CAC5BB
	for <ddprobe@lists.linux.dev>; Fri, 10 Oct 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176007419357.21467.4046305498738620201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b189ac25370b9e801bb5095d4853f9595327bb6a13445adc7f8fe13548760896
Date: Fri, 10 Oct 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760074193
