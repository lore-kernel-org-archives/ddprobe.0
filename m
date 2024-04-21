Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5096F1B974
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:20:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713738023; cv=none; b=JULwooch+QxJkWoKnGXDqoVDVjKuprLqda7wRiMlJTMPlbgMkSAvdNw99y6dzCrEVbZTBeetpEVQohZPDf2xSqumNuVWSPUOBvJUN150W506KFirNaEbLNavHPiSCedUw6xc0deYofgPN05fe+wWtYhJ4ccl7t8uIBJAxfodrDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713738023; c=relaxed/simple;
	bh=d5WrY9SIyP7OKZpnRv0Fb/6F6G7OWGnnU/FvekdQCNo=;
	h=To:Subject:From:Message-Id:Date; b=XcR0OIOkJQ+MtHN2lDUkQCu7+c0qo26S/1Ql40+fCJwUmrHy4moAOsMJADqEnCGCgb4EvONMTSuwUWl1LqFJfdcN11bcAMKdTy37OysP6xY6LFwsAY+5uVaZLYfZOGLnYGrp9a1XAL5piBg/FIHu+/Ccwuj4C/XSFHGV7vqsNFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=POx1jTEC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="POx1jTEC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1076C113CE
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713738022;
	bh=d5WrY9SIyP7OKZpnRv0Fb/6F6G7OWGnnU/FvekdQCNo=;
	h=To:Subject:From:Date:From;
	b=POx1jTECBblkf8DIuWlWChjibSpVwE5pOVix36SATX1cs7NXr1U7rwNc5zK+m6h6A
	 YmcQASAgKLtsJo7Jxs7mV1l4ByYfn8PLZ/F+kA4ysphGzqqhOXjVCxebG3jmb0+x62
	 O/YTQ5TeaXjNI+yKR771c6vFDnCl/iybYsw4cfimz8NGS7cw+lxa+Z6OYREl+rguAk
	 gOLF2BfzZ3FfxZfiTo3wOUyBrSq+1ffwQ3yD2cPHpC2uEa4nUMsfe0ZxfBXfgLRcJ8
	 Reiq2+CD5Y3L2IpwVFDp21OGDMChH9tyC1arshE0T2rHY7vRJUJXHzZzjh627rqBfs
	 AYTwNiHveZEAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE1F0C4345F
	for <ddprobe@lists.linux.dev>; Sun, 21 Apr 2024 22:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171373802276.20702.14548104379850749294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 909fed0d6721714018c2dcc8bb330ffd024a29ee8a0d85ca5014e675fae6cc97
Date: Sun, 21 Apr 2024 22:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713738022
