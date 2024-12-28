Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35900382
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735407954; cv=none; b=Rui6gdHIxIxqclezpR8InKp7Q5gnix32bKDCd7ktf5/zc4XFSnvdIyvEZx0QYho/y78rLprB5ayT9eUIffooYhAyDe5DRrYUW+ztrr8aRN4TDxfSogkPAtNNZt5o+Frkb0tH75H3pUfRzYQD7U9lWLYRs8dVbvB41QnA0OkW1JM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735407954; c=relaxed/simple;
	bh=SQBCOl3UR8YAijriY3APibMp2oT93aoRij0eruB2HjI=;
	h=To:Subject:From:Message-Id:Date; b=RKrlSChSMCz35ev8N7QtxbN++S45MKO+2uk/e3vKudhyrfrYjzFuPfh23fYMUzDBiaU/j7yzA298WdgSi8ng0nIMyM3QacAhWELUIyivAx5ZNq6omeW85nQtpP2ecUmksPhybko61kM3izLXSmzOlBJXdhkfLGg9hGtvjNgR1GE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUuyo+zH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUuyo+zH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B24A3C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735407953;
	bh=SQBCOl3UR8YAijriY3APibMp2oT93aoRij0eruB2HjI=;
	h=To:Subject:From:Date:From;
	b=kUuyo+zHwU/igryERhrD7os/PMZBn2fMXKd2N0GnEITzTOCXjJcL/LCCqsVRRhyox
	 JZ/sOTKLS7MLNSmPK7J1du5npOpqZxgjhGl3AP4aC+9m+z1vMiCzuJzpfE8tpkX8Nd
	 6zI9YNWC2xYruQErJITF8fIZoDaDK+7jY9/nNv1gQ+2jjFLUix/F0KmXCPUkFb32rn
	 nS9MWLsewVDCspiZfvuts2D23EMM/WftRPf6IwmS0RWyQWRffNgjK+Y8/EsyNwmteH
	 WF7ujGABvC33qk8RwPwygBCoYzD5IZDJRU9oWxSErasXOZgeRpkfAL/h5mycd4R/7G
	 DInhTJmu4OnSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98CDEE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173540795360.4360.10250675260706939529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfd194e94e67a540ae29d53781d1e8484e82685b75e5a5e1ea95424d02186264
Date: Sat, 28 Dec 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735407953
