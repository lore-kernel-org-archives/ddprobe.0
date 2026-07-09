Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46AE739A04B
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783615714; cv=none; b=gHYstv3WZgJuhaA5UhLs2WAgg4Sjk9bI+3pzwpm4SVdwDv5XB9Qsdbw03s7d9GJKuIoMhqZ8KK6C415p8v5ABw4+P0RoQxpV59MBz8iTqed1R86l/Jiysgu0q1X+uHLPPMur0OpZUsoQAIpqGmuzzLPqIxrnA37BXZEjogxB7fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783615714; c=relaxed/simple;
	bh=ppIHLvC8sTIKc8UJyx4Jv6O1PCISLcm/skFZFmyjppE=;
	h=To:Subject:From:Message-Id:Date; b=k8FZMFFPOwN8P4eTJO2hYLnff/5mFitfMyJ9VCRVaEoSYwlTMou6IVIQtRUHOclvF+NpE/KWO8cVuBvoE0W6Hnt1jIv5A83VrmgCglSQBSIfGIS8b771jGFGuEkbho6EEDFHZ2XQEmacsXGWLwVaCSXE//yaqz1ZoXYi2BnxAPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3SJzHe0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3SJzHe0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C921FC2BCB7
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783615713;
	bh=ppIHLvC8sTIKc8UJyx4Jv6O1PCISLcm/skFZFmyjppE=;
	h=To:Subject:From:Date:From;
	b=f3SJzHe0BkPjTXLF4jxJdrGOKFbzhzFTcW8D12GY2saCTXlkJvLHZCAspmdvB1Fhj
	 sMIKZXgQoFPBvJ3dzIIlbY2XxyayICKpW/n/X+b7a1kEWU6KS8HP0LBE7lNWFp6bmC
	 mr9uc1nA3LHaoopisJb6kiT6Pc7AA3aFzb1pZQC2Pvi2qXfWJwwP/3xwoo7tzG0I1N
	 FTHwml6ZdHlQsmTAVLSjuFDkbb2fN33/n9Eo8rLxFVbn4suLLM1LHCZ60pARx3lvyh
	 nCqQOFa/XrWw0dmV+hxceGkk80PyZpUUxBXoLw7jNazsORv5UNNiD85X8MJJcTlOEn
	 FZjPvLi0iTKwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8354C43458
	for <ddprobe@lists.linux.dev>; Thu,  9 Jul 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178361571368.21921.400620806447278664.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ccefdae9e70eabee91167b35188fc05f2ccb6ba3f87d9755b6c0c25d29e2c73
Date: Thu, 09 Jul 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783615713
