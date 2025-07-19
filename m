Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D1C82877F4
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752929994; cv=none; b=sRYbengKLWpXHEa9NM8k9Okyhohba6nAe87ENp1hwbAMpvL5j45EHoTDagxZNLCjlHZR0bgkAinhFI7JJI+CLyZEJwHkU3T/9545Mry+LZyx7Y/KimOvQSYbEha+paZ5Q3wi2fMfyMfpuSGbl3yHLpXIilZDZKPtdk6fhPBRn9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752929994; c=relaxed/simple;
	bh=pOzo9zYlf3ImTG642C/dOTGoxrp9O4XhyClPlSK/GLc=;
	h=To:Subject:From:Message-Id:Date; b=WxTSn6RGaqpTk9GKjUhhXuxcCqL5LdlfnvPluVGB5mgWxSp7bL4DHchfX0h5GO7myjcX5V6NQhCkV3zdq5y581ca0DwT7QnygYSC6dhqPntmhfeB6JLrRpEpoygr0fiyHPoir7X6Isn/iRvOhwLyf4dNvYyvjZ3qQGw0yhMrce8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwn4XJPc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwn4XJPc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCF1C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752929993;
	bh=pOzo9zYlf3ImTG642C/dOTGoxrp9O4XhyClPlSK/GLc=;
	h=To:Subject:From:Date:From;
	b=qwn4XJPcPUoUGBiSB1woxLAEYs6KtLjiIGjBsNQaHm/ccV7m241PnTJTmUKgGB7FU
	 UutnQ7RkHQ+DJtopr/bpQgJYRg9RYhmmWaJnylnfV5Td9XiB7li+jViYSE/jzMB0by
	 NyCz684/3OxogBfiIZE/m1+gEf+qJ7fYwSOZP2hw6yMlsdoXtW3yhttbgSrVbqL/qB
	 agQq78f1zkfRTqKHgOlitbdsoOHwc8YvS0a2NN1v56l3syxysajq5ghNTpkhHH/ijs
	 m1/DuMGkE8f14EpwztX0wgaJaI8PzCLnTN5luG6+bpUCoG3Xdlp7uYoEbJ6FKyV+Xv
	 0g2v3yIodKI/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EECCC83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292999357.10106.11682480508329790549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f435631ba64376996fe1aa713a1b05a1d17ac6b9ee39127df57f6013f96c21
Date: Sat, 19 Jul 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752929993
