Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F18221545
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764484974; cv=none; b=SEbd28naqKiuBEtu5P9+ixJYY5lKKJ5F27JKNL5cFOyTD8WclvsFOZOZCNyDjbOZO5NVjFAcMVuZZV6fMzk4hHWO7jOYX220CJNfvo/RE/cLFgCt38PAnV5DMWPHh0pxi7WCfYosJYcqaKrgZd4gNc0ihXR9tLSD0fQxHWGVuQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764484974; c=relaxed/simple;
	bh=y02F77djcuEdwabvmwVItWH+t5JefbILKxl/mrzjsek=;
	h=To:Subject:From:Message-Id:Date; b=aB3Mv0RDgG8iHf7KVpv7BM2NZdGfXGZCQKja2F1PJTdvvjb8BoroSKbePQ3ahU8nQD/rZL94SBOnozecYnkshcYx1Kl3lZ2AO4Q6oKpsI8SiZPoIKC/rQ+ZHODOxRSbXQUIUIZ+t0HNzlSzGz8jMcukcfIUYeHcLlcBlMQdPv7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4HPC5TB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4HPC5TB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA341C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764484973;
	bh=y02F77djcuEdwabvmwVItWH+t5JefbILKxl/mrzjsek=;
	h=To:Subject:From:Date:From;
	b=D4HPC5TBIKYhO3/cHfqfEqqdW+WBOcJu4BU556xgOhT/SA/XjnbmrO30TVMDZV3c7
	 EIUWrhJxSuNbLzo8p15ZcDCrRLekXIdIcU+Z5Fo0ZLTI4CpGfAEEIygpOSQR3U92Mz
	 HK2312PU3QgtEBtARvcUTQLgbTJfNXjYjG0/PEcOKpuSkVdRJ4VcAUo02NFrR6zEwp
	 gZUpY2W8iyhxZrdfmQFKDJtBEEJTsMgtIsKcH7lhwrfvfUQW0ryoJu0+VLoAIQF0Sp
	 OTDHwsphWCibYizkY63ZhUTX3kUbAB8qzlpQv1i2hdp6LcufIjsv33P8qlM3/vU/6z
	 sxNad8D2qrr3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FD0CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 06:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176448497358.9000.4754241943436492945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b78de635cd2b8920e1bece96ae93a6f5f5b15f0a8caa7fb42f13a4f73700368e
Date: Sun, 30 Nov 2025 06:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764484973
