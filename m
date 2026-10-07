Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5F7347C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791333034; cv=none; b=mUhPycwo/zD30M44jNAw9EcucEgvsAuoKr0l5Qjjjg/nkpDkEpp7bhMjYoscFMq8iwmjJmiOBt3d6vsppBO6c3u340DVQT+yqX31YliYMSkouSk8G5KmgTfyKpVmebviHqOd3glGkrPhmX6/di5TiaQzRYZTu2v07HYpO7tokyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791333034; c=relaxed/simple;
	bh=CIRTBs93Fmv1pFZF+uEt85kseGW9BjkxusQK9unATiY=;
	h=To:Subject:From:Message-Id:Date; b=hOVkzfndLu8HzrKUj6o/iRfEqNXOW479c8MQEY03j0X3tBo05dO+Xt/ryB++N4VjcpkJSQMQBXUVgG17CGY4qPbazZYOuoTkfpP9eeTQxtmqh1rvIVn/ldjQTabgCh7BbfhsRSDE6cLEs99Dkd3lryHpi9aacl1holT7GKxqVYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPLyf8ec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPLyf8ec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B09C2BCF4
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791333033;
	bh=CIRTBs93Fmv1pFZF+uEt85kseGW9BjkxusQK9unATiY=;
	h=To:Subject:From:Date:From;
	b=jPLyf8ecApioKkODkNNM3yWyfl9U55xnuVhXxTYhy+a3PeCKCX3TbYe6lKzfivVW3
	 N9Wb5fiuYiEcGMGZ+dX8BGKeSzqMOawhlkDHhG/utVbSCrWxlXmK1pOS9QNXd+aPJK
	 DgQ30vmQoK6c+JwLBFRVuxMJB4C0QXyWzoimwptNaxj289d9W/k5uUjOSoPTkBqKhu
	 ggHJli9DAa6/ha7RydxpJm43awt0gz4DTHbyi8lXsASHzyzt+MeACPQrUqvPR7eO4c
	 LSfpUJ8AcFbWzZV8rP+cn9RyxA1QJdnqDlKkj1+g/C+Fg246pWrB1yGrWcfK340Xkm
	 l+IQ8mlkHTqAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4E0CA5FFC
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179133303369.18511.6887699546690772657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92b1bfef47d6c02cccd5ebfd1da4bbfca286e637770bf5c1b3a3a06af117b4c
Date: Wed, 07 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791333033
