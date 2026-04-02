Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 605263CF687
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:55:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775123734; cv=none; b=ZYdPspnTkQIG3t1MmyTdozBykWEZk+8HxYdBvn248c60WVwReXXnxZ789RTtBilP+d4U9ucrS8w0SduXL8g9vBosL1/iOqr7Vn1MryUxRRI83n/GsN1VZJjR9lnBvvll6RVnonJb4LysC7uvPoDkVDMA9MMDapVnfX6rYGWOO6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775123734; c=relaxed/simple;
	bh=hiRkEN08Dz5TPxsNTYBGkWLxFC8BWPpNkMSnzkKfqHU=;
	h=To:Subject:From:Message-Id:Date; b=O1Zd/zcu3PbAdQPxGe53fcuisRF0gN7WjlY4PmgUytLvnPBqL9y7CBnDPTeRmOWR9nGkWIvMPDdIapF2f7o48ADwM2I8aUort9h+LX7K4Aa/qYYVc0kaoIB5ZvvIxHe+jns0qXwHRR/9fhK50ZiKxNaHabu/tqGKILcnEq6mWBk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EiXzJzd3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EiXzJzd3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3629C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775123733;
	bh=hiRkEN08Dz5TPxsNTYBGkWLxFC8BWPpNkMSnzkKfqHU=;
	h=To:Subject:From:Date:From;
	b=EiXzJzd3w3BLfvaJniloY4AT9FG8qff8hA0KvIlvWszVsLHYNfOObXXbCM6aULYhV
	 MeowHXUwsiifdjZsrjIPmGBwe3nVCYY2YLNMTLcnwD1NCA/DqTQXmoAv3zkjslFSha
	 AddiLofV+uJdQXnfT8cTdW6ukyfIjbG432e7+Z4WjMXAAdc8nKYexT6Acs2Fcf/7xM
	 4MawPZDPK1LGvagJnIKg3hKxm2CEaidVzWVyQGSeu7CWnSL4/oZpRK3wAb8qy9KxVr
	 Cz5GpMUBIOPLFycEMcZy/dz5NBDCDqnf46Pu85pA/xBKWdDWJqQXJkXHhJF7AHlos8
	 XyK7Ne+LtVczg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAAC1D39406
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512373368.845.510161406322494699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e2e6649cd454ae2ad1d8b5639b65a3b6347b58bf844e661672fa295817d7304
Date: Thu, 02 Apr 2026 09:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775123733
