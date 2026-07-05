Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B53F175A93
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783214314; cv=none; b=sMxFNh6pzx9gig3uXM4kEipOyZ4SIXRIWN3pPbRmTTN4Zn1n6an4ZDQQV/ZRwHzRsfcnfkVk+66g59q2SCYTbPCB3c1qBE5AqAX0aOmPUvzBnkqunnf349KwOYtRHRyx/nO7J3eykbXeKbGSL5kBlhg+63o1unn28DGJeRlWg24=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783214314; c=relaxed/simple;
	bh=XJNB6d+w8GBnRUtzWTykIbyGdU0SPmoBVsx6El1+yF8=;
	h=To:Subject:From:Message-Id:Date; b=EzSHbFrnIsDamL2VrH8mBG0shg3SDoPHGNKBOip1ny9wEirBsCo0mL0B+gxymbkWTeagMWPvQNzI4p2swAKJfB7KjL1Ma3HVvZ22YAgF3wDiPRlljwzJIaptLtT1fDX7x2RTOKFJm+1fQaypFpolQ2tpOm3Znbdf2V0TtYIQ4oI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HN83DyR5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HN83DyR5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0761C19425
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783214313;
	bh=XJNB6d+w8GBnRUtzWTykIbyGdU0SPmoBVsx6El1+yF8=;
	h=To:Subject:From:Date:From;
	b=HN83DyR5rHHuWS9/e+GPl+tMyry+QMb0/zzCc+HV1Mfv69O+vi0UOm65HqTXBzTgt
	 mM9zh+DCgdkfRUHmek3RI2/GHddsNm4gfhf7RX5+oeQZEc4kLif2Fmk97lkAWkGYQI
	 C5nFP13IIIroihwQm7j3VxyCAxP6pekOmEhMVQXIlGx9iAen7JoNQ+a70XGblRlvLc
	 jLyYx6xnvwoM6teqiDmZczhF9Ukl/b/IfHAGHs1jN0J3OXIwC1o3+aeG4b4A0Glp27
	 bgZPx8wcy/juDqJgOfpMwqW3yVYHKIUdlnnhddjxCoOaWzQa15qw1plVCmWReV2BTP
	 3DofBjt44MRIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACA02C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178321431369.23363.6527678018013504878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 876d82dd31d3e0bf2d1f968d82f9f8b0b12297387e8d3f68a82ce4157be34206
Date: Sun, 05 Jul 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783214313
