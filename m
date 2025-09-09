Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F6135E4E5
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757437194; cv=none; b=QO1AE7PdWOAX4oc1sMN9YL5Dzl0+e9gP6poG+mkLQmSnX90hT0G7D/rIPRxvUg2QakSLGMJ1pVyv0/S35gqEqaDnJnxhsdhZ0qTWFGD+Hoogihxz9MY6HZhz12cJAak6KgAEpwvPDygdDzh8KiOTA/h+fkOPtcwAjVpjuT5XIUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757437194; c=relaxed/simple;
	bh=GUycSMPgw1TNKd4MePd6AlvGUgwz4CFdx/q7205rHGw=;
	h=To:Subject:From:Message-Id:Date; b=aZ48ZTImybpx9LmzUv+YtQ8bi5M/EnHRn3esVBUoHBevu+xIaiMR+78Te8yu1jMPh6W3AKfTvGzYb4qGILhtQf39lvM/3QT4kUoGVxpbMpqgCwVQbW3Z9y2sosyFrQp8wIkAYSYEMIjV2UsGECj0uexM64GA59RzE6p4VVE+taI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=edqh1DGd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="edqh1DGd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31E3C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757437193;
	bh=GUycSMPgw1TNKd4MePd6AlvGUgwz4CFdx/q7205rHGw=;
	h=To:Subject:From:Date:From;
	b=edqh1DGdigmxMRzTPiSjzL1Y0nCvl9mAsh+OruS+asAKvntBKre6cxfWTVJCpIUXK
	 ZDEfcircLwHpELMCrt60KdmpB3AvKtq1F0jKITvVeYCGKjUMepCnQc1zntjU1I9zpE
	 Vnmz6gBBOrBJ12AlqiuusxL8z5orkmKZM0mA+qggnh907s+L8zPI+TqASj/ooBhiq+
	 +fwPFbGVjweVFto4Hf4LdF+weiRjpiaxNmHxJpg7kfWyDhki9aPotiMUn4fPoF73i/
	 w1k6f4mbj4PwKYpZdcFWd3ImspCU35GiTe7RKy29Kz65X2KXVSgfe5J2GOcrDqbnHl
	 aQegMydAFkt8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A9CAC58C
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743719359.22987.9360355619267450751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5f23c2eeb27a98a44585ed1d36067b1fc277bc243f208b5eef0353144511082
Date: Tue, 09 Sep 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757437193
