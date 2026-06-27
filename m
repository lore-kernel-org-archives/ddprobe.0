Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63867318BB5
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782571114; cv=none; b=jKeMC307Glc3Qqr5H+rRp7zXHke4owgDlcsWYSnKTU14tDwyvw6Yk6YDeBoC7TmIWWTsNxFQ8staxn9pErMnCdB25dBTpMZXnw6HMCPCvpnJzHpm13dKuyGMkcrZXQ3+aCXfGc8wdd0hCDgxldoSG2mEm1Br4Ss1sFjIkkukcfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782571114; c=relaxed/simple;
	bh=gcoYyihe9x0S2aZ7tcxIxte6pMnqcxlgqTcOkn7DTxs=;
	h=To:Subject:From:Message-Id:Date; b=oTeOJ/nd5wZE2RvEdzIuPlsCt3IBNnpWYtM2NOYU/AGv0h0PM0LVPa44JeDisDRFmVjRxk1CYHMC6DTAuKkjL0mYWQPnUnLspLGRyQDIMJGXbs1nZlcnXoIEGGO3mHZI/yjz1qNtcqQkcemRfF+Mfe1k2xVhKycbddcbT9+jtAM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SU7SMw7y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SU7SMw7y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9D44C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782571113;
	bh=gcoYyihe9x0S2aZ7tcxIxte6pMnqcxlgqTcOkn7DTxs=;
	h=To:Subject:From:Date:From;
	b=SU7SMw7ytdcy7ZwfrSdScyysC3an0q9f3raso+HGarn4sUjRH7RMYpu7GvxzQEdNm
	 bblrFQubgXEBhjCkTBBloLcH8K2H7Hwvje4zso3PiaqxinUu39cM63HsHkryIR1c80
	 BD17m63nR3xRCurO5yesqf5Hrc51eTE9GHOY4F4zji2IfK2HWxzJYjavK8sLGvZdMo
	 sJLd57KopXGEgoUdaerRg/GOkyArj/lKGhMm8niEVu56EwSupEmaCwvv0EYyZ3Tds4
	 81ue8h5/KS1Iu84UQyy7aUhPTDdi1WFBsZdzEb/DB+ZDKK3E/ex9sMC7e1n73u9MKw
	 bYtvw81/iC9Zw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C176CC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 14:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178257111374.23162.11658426805293614013.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58e649b083b3f5ef9ef8eda6d814ac39ca9594513c2e0af921d0215a685d732c
Date: Sat, 27 Jun 2026 14:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782571113
