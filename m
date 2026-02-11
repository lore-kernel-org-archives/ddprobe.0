Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AA5527E1C5
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770827094; cv=none; b=PJsDZNSdW8BE7y+Rql4CWo4/fX4DsSvgTGwY4L0UiaI/+wwwjyzNJxjIlIhz0QDRMgleHy3cvHMIXeRmdoMNZpuSYIW0/FAq1t81FfxpcfonVsZ7Xunm/xFy9GxuznoNCL4n5PZEvYEEQMmkdGiAuOlvjZbeB5JMoy3ImrqQhu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770827094; c=relaxed/simple;
	bh=YV2/X+4x3JMgxSGHI9DAjzMwX2lXMSg47l3iHpXjp1Q=;
	h=To:Subject:From:Message-Id:Date; b=KRG9+Kfe/t/eoKSuq5TMLqYV7Xe1/u+lRPT2t2WzpILwrrcShcFtHqnXh2MmsJoem7ZgCB2k/Dlu2VjsL3yh/3u5DOyLsze3s3+rC80orM7P9meaNVTxbZ6dj0VpZARJxC46PtQw/6SmzolhG4DulGAEnyEWy5MQ9ALHH8qvPeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gYUrerW+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gYUrerW+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6550C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770827093;
	bh=YV2/X+4x3JMgxSGHI9DAjzMwX2lXMSg47l3iHpXjp1Q=;
	h=To:Subject:From:Date:From;
	b=gYUrerW+fslSbX3tUN/SBwM2BWOWNUJkh0EtFtpoXHWzTy+9W2U+wcTcLzMvfb9hF
	 b6FkTJvYyTGw6hQXINFBojemmSddWKsgtJijB6YlKCU3vNdm9s38Sics8/+QwQ6wyk
	 AfoNDlwwGljfcuko9sOF43oiYtnaYRAshiVcZAegZoki76cKTIXEU8Y3Eq5Egdr8e5
	 2CXs12xOcxs7pgl399+x2aukisQ5INbP/bw1e88cUlPMDDha6A5s4To+WfXCejGO/K
	 gWQ02/W4Ks/zjYgsGdVXK7kqgWaMTZjRKYTehdp1RHaOWBo5HHouAFP8nWGLUiaqfw
	 eii86P2qerldw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984A7ECD6C6
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 16:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082709361.31456.17061716359425624825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff7078cda1ae5413152574edc42e78a8b53b922ec785d6adcebc666ea371cc1
Date: Wed, 11 Feb 2026 16:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770827093
