Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5963FD13E
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783501114; cv=none; b=cpC5CywPSjZoKVzPUdLyumLfBemcr1G/bA/TV7uC0H4sx0VsGSC+/iDmICo1Eqicmp1e7Jc7mxL30ODk2qptsZdJwYVIrpKXCLUiCwXsoYmtzVLNEiJYQ1sGd60+hqkicZLf3XHISEGiJqVRqdMx/iTWb3D3Qr60He2u6hwGgYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783501114; c=relaxed/simple;
	bh=3+pUFQaadzwj8WzrIAnXKl5HsTmsXKB1lHCqyzXWm8g=;
	h=To:Subject:From:Message-Id:Date; b=kKE/918CPK8QFURiyxp76NF7s7o/lB7zHv/CrPEjgvahWaHWbW8/66ogUu7vLqMBQYHdQvR8DFC+oLB4TXONHGixGiPbngbzdPf5/6cRZO3jj2AHGrRgGx51nOurBIn+QE1vUMnv+BOWI3DF1LcD2fAkx2EoUmCHrjxkAYh0B4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CtLZSv6P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CtLZSv6P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF812C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783501113;
	bh=3+pUFQaadzwj8WzrIAnXKl5HsTmsXKB1lHCqyzXWm8g=;
	h=To:Subject:From:Date:From;
	b=CtLZSv6PPazJMCV6V2rteg1HWXENzPMOwRpwTJ6KP9JVcAS+JmdXwXntvtpp3t/Fu
	 3tIsku/DRsdkFZWdxX9Falxc2YPiyRegRKG11/Xy/CFzztAxvSlbFZ713ZcnBrui9+
	 SjxCLOZGDrq45Rs6CvlOdea4odKR0+uMVFmp1cUAtG03LrZ0Vagf9h9IQGTNeqPP4t
	 kyuJJj8mzWTXYgeLcyBg8YbcGmafpUafaaN49NiFr5y4226hIOcRI7qfJyJ19OhsIT
	 dTJjUccDgxeqTzoJlR2/Qp741X7T5ZrwwU41RVJGrqPGt4dqidehzcHuQYqkYpG+Bn
	 hNrXw2RRZschw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBBBC43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178350111368.24892.10365686541930985037.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ff5bb247f83c00cbf3192fc00e3fa641c5a3552ec175d737f8410f5c814272e
Date: Wed, 08 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783501113
