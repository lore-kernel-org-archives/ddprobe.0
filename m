Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D888F2E8DFC
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774499093; cv=none; b=mOmauy+1+eSO/lGbvGgudZ4ScMgAii5z9O3D87chh7CBDIsuqZIp1CoRRglNNNCIKAP5yUoMKwFz1OQ29OQgizRguZsXKbZAI7gMVNQVlI7E/5mxL2C8hNfxo94Os40LYsU8Py+LWq7utSMUmhR+29EK2SUeEHZA/hx82LvQhco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774499093; c=relaxed/simple;
	bh=vobAVBChJp2sgEiMhtbCwESDrsxtZnn34OYDUKCbS/Y=;
	h=To:Subject:From:Message-Id:Date; b=fiq6FP3f1yg7sAl9EQFFk5oBBeE8wxLs6UXbJOIxOFUIUR86GNbo/rfbkWXPaRUcibvQN8JpIGrydlD3AmESVjZuAieVH8YGoxMA9kk2kunxVffvEwrNAuxgsCgYhsMFNRdmi+bYsFjYn++pw/C+e0ajC5fL59S/lUWHr3vgles=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d68m06U+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d68m06U+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B07C3C19424
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774499093;
	bh=vobAVBChJp2sgEiMhtbCwESDrsxtZnn34OYDUKCbS/Y=;
	h=To:Subject:From:Date:From;
	b=d68m06U+6T3RYaKEhFC6D5Wi5jZVHZIVGcgyBiuAkIc2L6IHBDM19mQnSS8yG+5XQ
	 gUb1x/ntUTMWCRNZh5NVwmyrN3jOS/uU6K3V/aGAngTNQDDIHVUpBEHCX3KAXRgNL/
	 NUdGhmAOnJ4a6amDwPq8QljxMlmcpgOUSoCWvncy5rhLB+FApEXA5jyaJmDnuAa3FS
	 4+qsOuyxX3Cveil3m7CuGscqtAzJa1M1b8RmeunYO+/qojIGbdzmcWer1oPgS9aV18
	 KTP2wOaTE1iHN0ZcFC5KyujeEkHtKPti0L/Lakox0e+ttFbE6EEtYrH7VjJOHJdEjm
	 DqehLx0k8Oe4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D02109E546
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 04:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177449909361.11583.9380216084251622262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 546d131b3e298074751abe29c7d7fbfe532ea6b993e4ea6832a81145ccd2114f
Date: Thu, 26 Mar 2026 04:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774499093
