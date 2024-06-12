Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 584808C1E
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718158703; cv=none; b=oGhuMfsJGkBMoU+w+uL+UFsyLuJUZsbftJM5/aQgMtK63YUzqVOuTSm+gF96y+zXVUs2b3qxubp0JUyaMhpqCseBGS8Oz6AhwSrB4XMq1sGCWEmjdTIVDWR6oWVTl3pSyJlTd+5FFzBFVFAFP8620fMm/M5sPX0Gk96rbzViO1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718158703; c=relaxed/simple;
	bh=9dNP2Yl4qpBQ7yaVbxDpryQMsEDeY5QVnsBSdUFP3Zk=;
	h=To:Subject:From:Message-Id:Date; b=FdbfvswBj3fzVyFj+ufVssHD7xdU6gAJ+1tPHRCCDvZJzqGcQkEBkAskkHhgY90dSZDa8e3jFiXh2Jb5QvJ1f0RdXQCULYccYlgdVt3JnWWRrAstIw+F15TAdddn8/vOVC4JQd4hiM8E355cQpqJJ+ScySSoR/uP1k4iYQHcH+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JWrH+V7n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JWrH+V7n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC461C2BD10
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718158702;
	bh=9dNP2Yl4qpBQ7yaVbxDpryQMsEDeY5QVnsBSdUFP3Zk=;
	h=To:Subject:From:Date:From;
	b=JWrH+V7nRaAi2cyN9MRSZkJsO/P8B60kaOXmPZgLaCCA8COvg8OEnWwinbFyF9Gwh
	 nJebicQaRp9HMPThs37YfT870kiPdq83FP35J9afG2HLJoY1el90h50Qp1utB4jcMU
	 3h2orZA4S0ij/+/0biZu7kMtw6mO+SOFel2ZANTkRCOpqgRXWGWQ4DHsakluXB2j40
	 yv/SCBoH9FqPrtYwaB6vNSBiTaFo2/R9GbCLROZzWjrJRcgAxeYiM7ZdfCU/7dtITQ
	 D79La4zrXsfHBiglf4qu72l+/ICoihYLDOESN+qT2SgoZBKRPrplGyuiY97y21LcyA
	 pWl1VIRZf3X3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9560C27C78
	for <ddprobe@lists.linux.dev>; Wed, 12 Jun 2024 02:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171815870281.4718.2349800226032145894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9356c283a2097b46b9d8920039610726ccb630c305024c6244dc2dd0ec0cc02a
Date: Wed, 12 Jun 2024 02:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718158702
