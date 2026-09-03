Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50351360ED1
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788406234; cv=none; b=sAez/YSaCLpeJOWLjXdQ1BOdlaZWa4D1Zyw3nATmsQtBxv/pPUkzeMwxd/aqgEuYoH0ORHXbRESt5FlfbL5o//jcNeuaLv992DyFkAbQo8bt3/qCDiXQ453Y/ctQFbpO32SWAcYxcw3fpOh9ctMRqsWBQTi81WhIJJYzwkV7Nog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788406234; c=relaxed/simple;
	bh=50Xzhs8kK/jUHuA34Eh+mInCTC9PdcYe9KtDUVBfgbw=;
	h=To:Subject:From:Message-Id:Date; b=ZJZ+Mo17NaeQFk4LzLSwN5U9O7///b+b1d5j1e3i+y0mHsI+P66jl473Pm3tDBFD+X5vJPJgnhC3o1cZMaPjD9z1dN4QPhJF1t8RL3Sj/tGBSMkjJBqDjKGZdGyLF14LhGcmsgwaboFn9QN9ElT2q00UWw4pOFPathCKRmLLUY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTHt3i+j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTHt3i+j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF6ABC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788406233;
	bh=50Xzhs8kK/jUHuA34Eh+mInCTC9PdcYe9KtDUVBfgbw=;
	h=To:Subject:From:Date:From;
	b=YTHt3i+je7iZG5gb6ZaRtZPOIXbvxgnKSfZWhvcQIfiiwgb/90JH7icFz2cGEzU5g
	 OC9QaED3C5ve0RO8uu4pUxyE4SxH96ReR6fxrMqXF2wL+B7utMdjqyHzXYnvcTLlCV
	 PHTxFRvTL7eRNTxpPcaigfc895BJMxM/1J25he/IeSNmJuaPRCBLUjfPVUpk3doJL0
	 WQa1aaBeoi5Orr+jAoT4ywwxtHQoJHQmP+mBSyvT5RkM2s+4eZFkTyo9TmtScrdZ6O
	 A8wpoYDATgKDPiAxNU53BLM5G1475+PUuNcCG4lGmo+h3aMGguc9fepvHki6t5yFvg
	 AdQtOl452tluA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA500C61DD6
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178840623368.3466.14244599637839307290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306a68f6e8bce9511f15996897161b7fd6ff92f6eb1458ef562d35f260ac1f67
Date: Thu, 03 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788406233
