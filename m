Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A62C10F1
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778213854; cv=none; b=fgAHcMnOBlPuwoMWoXJsp/heAKpzBiQQdsm+7zSpwdiYufxE360lm/XWN8oWTa4QWMXPq/23tZehbyNt7yIqnTiJbbF8ApItd6iZvOylMRadN/HtxWVX/t+tSPw4aEGVMDXd28KeknTjF4zJXTrHKvNoYHNwx6ExxjOWHFHqaRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778213854; c=relaxed/simple;
	bh=extOUsopTw0l6X4OeV4fm1Wvsh52t/74qo4eT1heO3U=;
	h=To:Subject:From:Message-Id:Date; b=rquai15An9OSVGju/BX7KIBt9iSt4c0uM2g+xtysoQMxMi/dTIjw4oO5UXVuhGqnNtGrBvvb7tTFBgp25BcOea26a+n3hRkId4M01gJdFpm6sZlyWdE2K3SxSugBB9Lw4UWJxQo44qoUzn4JitJYdUqlFpVRJ3VXJ8JhKFNPgxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hgGz7FTB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hgGz7FTB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BF6C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778213853;
	bh=extOUsopTw0l6X4OeV4fm1Wvsh52t/74qo4eT1heO3U=;
	h=To:Subject:From:Date:From;
	b=hgGz7FTBc03RutmganZQritinR/dIdaxbANaZcc+KtJdM9KrzmSEVR4k3emLkUJF7
	 TvpXYogeDphs21h3XiNPQPKsIboh1xcC1sQ3u5upuSPyaygeT2/qmTfO8FssNXMB/B
	 as1Cr7sbEHSIxL8S2R42JxH532M/3aXvLkvQ3TbFxhSCOh53MXdoK2DCFfj9APm1pA
	 05QLrPQuMmHMmZFuKp+D2JuEuwdOFyjAzToKgshcTcbZYpOn/2vt4WVb9osnj8bRsC
	 h5wLMzlmixGEZCGeCHz2Gkc3uAf44uMEvhVVMNhwb6m7lrww/ryNxWH1MXacvcSKzy
	 71ki46RsYGy4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0D5CD342F
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 04:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177821385369.30525.15477219944266771602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e6213a8735db96dde3e32b1b330f72c6eddda9eb70ba62c5456a284375b304
Date: Fri, 08 May 2026 04:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778213853
