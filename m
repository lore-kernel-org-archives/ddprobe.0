Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15E2314B977
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766622234; cv=none; b=DWOVzhPxL4YJmwC/rlbaxOhn8eeF5Axck760ITfpTnG+nz7fyl032BWm6WzOn0x7ictIFos0Wr7XCzsy6H+Ocuqo80wP4L8eBPUAO95PBKYAHgpGCPn4x5W7terBFU8dwywkVowjIHUztXFMSxaUVlw5DRlFxO8zWjf++aXIAIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766622234; c=relaxed/simple;
	bh=3HrZbCX/xY143zJAss7ttONgo/azDyt84EXJdG9U12Q=;
	h=To:Subject:From:Message-Id:Date; b=hAAOMA+dIokTFpqnxka6ZbWejXPIB+cdq4LEy+uoUI7eDZ/RecnYAMWH5J/a/R//4EL5lVFHuDqSVjCBciUoDDfoijsWIzUj2xYjh8deKGb5UGnvt1/LimAKjapx9uUZKVL1nYyrd5eAUXpO1GrPvKSlKkDxnaBVw4Sr8yZ9s7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PnXzMIrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PnXzMIrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55F7C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766622233;
	bh=3HrZbCX/xY143zJAss7ttONgo/azDyt84EXJdG9U12Q=;
	h=To:Subject:From:Date:From;
	b=PnXzMIrs967e9dQ0mSAvWMamFzLk6STLaWreKQhNWbflDKHjroiqpra5eH1m2pGTy
	 IfU/1196BEbUrnSYIG8vuwm6b++8NpZJmk6SarECGX9JJnymLnK5BWGnmNKuveqVaH
	 g0R2p1W3nyElqfevZbrk0YDMJ9pcY2sJFi2nagwu60yF0vCXsPR6ODLSuCXsgBMjut
	 MzMjJ8bKR42V25zE7ZTnDRBxKNhM1Bn6m3xjV5nrRBYhbZB2m5hfVwW0F/zmx1pt6d
	 WofEDbF4+zMACo4buspY4Z1dxZrrCckczcjVm0OJsr5AhpFFTAhTN/3uep47w6veyF
	 9uSPoOLOaIN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BE5E7849C
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176662223358.22078.11884197365157284618.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c1095efa6f5ef2c58e396fda7f4f5c99611bb9b884e75112ce00353558c2bf2
Date: Thu, 25 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766622233
