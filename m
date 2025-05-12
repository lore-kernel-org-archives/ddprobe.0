Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1DC4218AC4
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747067393; cv=none; b=cV93d1LRCtCpFmscZLybfCS1CkggMPxcW77LjhqaQD40yp7uM9Pi5Zak0kJG7d7kgwl2CUWLhdG1jCkmWlNqFxJcixXaIX6KlJ5lXsZDcjkYw6871rqFGPOy9NMa755xXsta86CxmMe2rA7dlpcZsuMMLTycVj8rabjNACvg2UI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747067393; c=relaxed/simple;
	bh=gkmW5/FbLLF4MTPRaIrZMwryq1mHAcueDMcAfwx/hCk=;
	h=To:Subject:From:Message-Id:Date; b=U6Swb1YFNnYMlRqQnO2Hgcag2Gc5DPXZy4jIZ/03cvhRb4lcwd+Qr3eYGTPqy0V6Ek/DprKaWMCJe6FZ3wGsnW7OUDoS2gBlyuQTSZlMDvtcYnQP0qnW9intUartycLyXNicpUxmBa/3ZGyPCA5ridmVxUJFaZaYynSM2SknjzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lwyLIqoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lwyLIqoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F024C4CEEE
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747067393;
	bh=gkmW5/FbLLF4MTPRaIrZMwryq1mHAcueDMcAfwx/hCk=;
	h=To:Subject:From:Date:From;
	b=lwyLIqoVi/lW5LUncfTreMc7AVF/GgjrfoKCBHvthvP0Xtw2ueTfnBQUCVNwIv1Ru
	 N9jzj/OHxN7Gtjl8vx6nyB+xbDnJES2bsfPuvQINxMxbbd2+vHTRUATW/KyxNC68hP
	 Q/LV04U8OVHQXWdKprtOM5ewfGWD9+OM/xB7Iaebfc/SAgFKJsrIv2/aH6l58WrV0M
	 J7yqmenOmtJiMvGuJVgAQ/sIT7Bj5JDslLUEEggC9Tg0XX8nzuCsoxujzg4sw1AUJU
	 fDnfl7yBHvfjEa4dKy2b8xyO0c0J9ECZ/gKa3NoC782VdoGuYPgO3/oA4bMaX7siGx
	 fzNcekNomhutw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD8EC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174706739358.476.3916441862104995525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 204aa20f02b60091cf627e6db0507b64025434b4c954a90dc69ee5011b6b390b
Date: Mon, 12 May 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747067393
