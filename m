Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 618EF17997
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714750943; cv=none; b=jShnS0g/DFCYx8qyfVQvf3tgqo8UFFbCXbUZGVwZR7KFetoHdezK8F0uDUgxW+FpuwyGdKXpXrr6AfceKfDvB8LwgE0QGH1xgi7aT9DR73Ii49tH124A9V2e3LkyyiGN+A9/px7OKBV/y669FaMQyW9tf+9xSZW17uMMwz32YGQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714750943; c=relaxed/simple;
	bh=2RRmwrIwStVVNHzPdmMWoTpBsBEXEVWdu/tjVfn28HM=;
	h=To:Subject:From:Message-Id:Date; b=bIxyZ+YwLakFChwFjnHD4QclatrYNsH/hJ3xorWr75DEvHIydeulT00Bej60Jm5ruA4Wa9v33Rf4dM0SyE59jgpX3KRaMs+l+LAFdCTMNBcYNkfyXd9wC6P9hxOaNx0i0PLnBsE8N0RQ1EAMGHDQ9uhmpsU7AVZovKIQUlweza8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oLUzJSAB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oLUzJSAB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9313C116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714750942;
	bh=2RRmwrIwStVVNHzPdmMWoTpBsBEXEVWdu/tjVfn28HM=;
	h=To:Subject:From:Date:From;
	b=oLUzJSAByr8KlRAXnKLd2++IYvCWb5NTCYQC8enmHWOGsswubxppIXfejlq5KcpIK
	 iMSjrtA+VZLutLKsbvyTR/08lDvtCxxQ/FsgVGzNSiNmrfOd+V5vw/BNfPa2uSrNHg
	 0ym0PEBMgikMEgdiv0twyqAl2QuAZDcBTI0d5gQRWkbq17PYTPJpg1tKD3x1Q4QSqi
	 qezs4psrXUNR/GL/o538p8PDr7MmIVl4ALa4IFG2gRDy03DnRpgVpzSUt4Lnkle34H
	 r9pLG2n8ikAcfyssfn7u9OZFp3nmOF2+8mFyo4j9F9jIcTSakiIF0jB6EuD4x5rf0G
	 fawXtuTTsPjZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5092C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171475094279.6502.15541504363646893991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5da2be827930d7c212cc795e9bea2a3edac4b4ef6cc58216e514f32add6ff032
Date: Fri, 03 May 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714750942
