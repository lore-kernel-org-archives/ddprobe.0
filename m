Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B24B38E8DA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784737174; cv=none; b=TECqBDef0HT5OCBDygtt7xGh1J+4ilR+NiEcAYquMz34TjF64ByUegMnDG7StSfg1/bO5kfiPhD73xKWIpu4/J0do5OPjNul64fzP/bRqiD4sJEgj87FzlV+8h9yFS0SQUNWtE51ZhhQRuGw+uK6bFGWE9vumrqKQ2nLCPNKUeQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784737174; c=relaxed/simple;
	bh=psdLgYhhRgPmktmTh1pTtbvT+tCc068kx0ZtqOHeGr4=;
	h=To:Subject:From:Message-Id:Date; b=mytEJ9v6ePDCa6i+9o0t0FYwdGajzmmZYuN2WPLUCYn0KfRw1eRkqYcB4Xl3+afS7RLGTsRxUnXm4Kim4Nlx3wbuT3JI22dhGNRoP/jDnrZvzBmLGyyjn0BR/1L9GsHvoyq4di+vwC33LwiWO0Nuot30NjmKiRWblHriEMtP2gw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nm9UhiOO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nm9UhiOO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 49129C19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:19:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784737174;
	bh=psdLgYhhRgPmktmTh1pTtbvT+tCc068kx0ZtqOHeGr4=;
	h=To:Subject:From:Date:From;
	b=nm9UhiOOIA1gxATYmc+/G2VsSyAcvfxgpn9ZQb81d4Yzxp3mZ+6h7K+2fPerkoOMM
	 2RIgrsLQ6gw3gkA5yDr+N6kX2H/lBjU61DjiX1+u8edx5vhQEZp/xKQ/UTbfFttc2j
	 GyFQJz+zPsTTZ+Y/8PKUqiH6mGej7J2EIU9pq9c6e6V23E0zjVVtiJ0hO5Hi5INhQQ
	 mMpM9gY7kHGARb1P6N+roNrrX5azi8mvuNAAT3iN5vc9Z8Gzdj3L/72rfVoBjnDCAf
	 jHI0ruIOzdoVO4nhEegeIG6CZmw1C+XkA0OyYRLB7hO963qa3SXkfIAh44ukqIHjvg
	 PIiX4OLcFcMLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E84D1C44532
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 16:19:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473717392.28367.5702982999562954726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71c61ee64a13931d3a44789c751b620173174561b3df744d5b42c9f2d649dc43
Date: Wed, 22 Jul 2026 16:19:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784737173
