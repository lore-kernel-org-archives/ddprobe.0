Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8497379972
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774143293; cv=none; b=Ee9wO+eApkfKSGRsBEnGw3Gr0axFGxGDrzIzOIx/zzkLAY9VLIW5F0KxEZsKPbItgdUDgmrl1aS6/zxBlFLr5xosdO0oFzeN1dShbHF0xmoqj+CW+QAnoQ53up9yDnHzo7qKi0AZrr/Kww14XXkvHwdv/KgPSB/7XMmWf16UYJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774143293; c=relaxed/simple;
	bh=06xpFHHS64UpIxoPccOJIHOVtPsGSoQf/g8/J259t/4=;
	h=To:Subject:From:Message-Id:Date; b=EuC/TaLhjdvNful5SXuojlPewBCmUCihBgcYG21CirZEKoBpiK8xvmIK8ojFQ/B11oNRgYmvYzQccvH0byk2HGmRHQ24A4th4KgcCDJ5L/O1GaGRc/mDYHXsE6KJJ+UO7+XfuNDocXqWR/hTt0HCJX7rSXmtl33XoN6J2Jq8Pjo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OKjL6r3G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OKjL6r3G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE1AEC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774143293;
	bh=06xpFHHS64UpIxoPccOJIHOVtPsGSoQf/g8/J259t/4=;
	h=To:Subject:From:Date:From;
	b=OKjL6r3GnkFOSd0NtAQvSLWdv1m//vlt6BkdNkAFIjjJm2KWm815mD3QtYI3iON99
	 RQsFkCq73lk6s1ozDhAND6EJOAsT5mjyKvb82VQFVZVk9cVZIOCUbX0okC7Zf9cYFA
	 cc2M8NF5zpeJirdI0TPwQBDaByokLLXu3eVD8j080FOG2V5CNKUZxc9oERFgM49Izo
	 94UVsAKk/kiZt0MmI3ovA/DeNMeSy+pRnX58NE30zFtXG4wL9AXOYcoS6sYuXVo5Ts
	 PV3lvbS1QGT630SF+UgfhdU1RXu1KSltcPu76digOlslusWC5YvBxgETYpCTZ07dQF
	 AOiDRwvzeKxPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D782109448C
	for <ddprobe@lists.linux.dev>; Sun, 22 Mar 2026 01:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177414329362.3295.15808223345887605747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62eb3b76cb8bc4f13425164c2784bcc2f5418e7ecbadb0c18bea77566ab8197e
Date: Sun, 22 Mar 2026 01:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774143293
