Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06F2A2ED870
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777998454; cv=none; b=CXtBiNDnecR5xH/Moa0sQpzJ1UfmD56lhgfDiXSwnVUgVo0bOMOB8cqFdJld9DZgVHGz9t82JD607Ap+x7kC51RC9Ae6uxN69NlD5V1qFTsRd8XPhfb40bWz+sZmp3YT9speq/z0wtzDhkMW2Ob3y0awnpRysbA4DImo6K5C3wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777998454; c=relaxed/simple;
	bh=l4eLdhU8My+/KLx+E6yL3IJyjptIltvQz11ewsmkw8g=;
	h=To:Subject:From:Message-Id:Date; b=H9CShP+CIwNsbqXO/3+EqtMWCsg6q8cxYoYQ8fP6pIHu7iofAUlICokZaXSo4iEXlboLlx85IRRXsfdGtgCFBKSPKkWRTH8OGpGPqdgdzkd4qSd7NVbxEDCGG+xa0Peat+W3P0geaoAxwW7bqq+Vuux6fAJ+qOssJv4u7dI7v9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ip1ZMh3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ip1ZMh3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B91B0C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777998453;
	bh=l4eLdhU8My+/KLx+E6yL3IJyjptIltvQz11ewsmkw8g=;
	h=To:Subject:From:Date:From;
	b=Ip1ZMh3VskEu59lfcBzPq/UXtkU+GgpCydoUGnXHRtR82tx2D5tc2YRfHMU0HgMCZ
	 JY2DbuyHWUmGTmwTdxORtHNj+7jpr2FAPnq/SrhQNYdFrbYjYCG+61hdgIO8PNdsic
	 uU+oCGf+tLjbG+io8Ky6FighdkgcXXJKKPc/0xB/PoRc4M0qJMoHiO9cekkbXkQ/9N
	 n8l94i3hWXPiQYYKrhMFs+kkPCkvt1NG11LHriDwVfyy7hzPsD0qiJYw07adBOreuW
	 EYUOq3e2QMvune1LEpTDE+PkYz6ornBDPFb/JqrdmZGbGNzxHrh8/2m497SdD1/FjY
	 2llm78DEfq7ng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB241CD3427
	for <ddprobe@lists.linux.dev>; Tue,  5 May 2026 16:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177799845369.25582.15016207728278768005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 361030d7b03f078b471784fbc12272b5cfef8397167cd8334fe24c359c7cb285
Date: Tue, 05 May 2026 16:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777998453
