Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24C002FF664
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766346834; cv=none; b=tJT0W2v7hBfDBn4+L/yX5YICe8nnihlsdUqfYQVNXbZ9VLcXi/ij8ujUotMlxQG4ye2mVVaCj2fdco27n01P4UBypPvv+Sl0L3IffDZIu5K/sR0nlot0q4XljFYoOfKQ0wHU5moPCfBlVOXVZATGIPM6gBPzGBqpY7DXEY4xxf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766346834; c=relaxed/simple;
	bh=ZLRwr+pFbT078C980J6bBIAZzpMCWjq3N8ofGa5VDRc=;
	h=To:Subject:From:Message-Id:Date; b=dEJs+9m+gjhWs1nPGdbnEnQ63uWuFXbLdl6IWBB0IwNjPgtn+w01in4C01a3JXf/9aaECdUFu2rTFQ0myDaNrYklI+3/ZDr1LsZ5WMROAnvCI+wNur32devofBQ/eOStJmqxSu2RNXzsdTDiGrEsWQ+bjVymiUGxxXRs3s8rxQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LkIDnZfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LkIDnZfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D13C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766346833;
	bh=ZLRwr+pFbT078C980J6bBIAZzpMCWjq3N8ofGa5VDRc=;
	h=To:Subject:From:Date:From;
	b=LkIDnZfSLEDL9rvze7SxloLY1YuTIRbF9VmQ65FApHGwhNK6ulMqFHCdpVtyPYOCG
	 oG+CD9KmGkF3WIqaI4a1Wys9vz5ZhggsuYm0K67Huc/uVduj4J+9oLsPYV1ZUQsJma
	 Au69GTWJLdcpBUOCXWNuwvNEKlHAqgmDuSgRpD+4qMo5VX8LqfRBpIKnr2VgOYaC8/
	 fbGI3FLSdNaEMFXGE20Ii3fS2pk7metCAlZo+tXH7XDoDMgbSD9Apv1Zu59PiVYoXw
	 zzF1ElFnKSQ/pokk0VyOHmh0IPkcsg9YLZx2VfzKM9QmDEALiAkq6obH9Ihpcb3TNF
	 fyfJvB0tAPLkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3CE67482
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 19:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176634683358.13883.16228291197544098300.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ada9e72dfa90e6f235f9b1dd293583a30660bbadc0d5c5a14d04395d09adf5b
Date: Sun, 21 Dec 2025 19:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766346833
