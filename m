Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E24411FBA
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:39:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784741974; cv=none; b=cArX9cJfEG+lr09PwVas/lWxnMmm61o4Hk7QsaFsOm7rcNnABO/wN4Xg4IaurPRXAe79SyAiAw/c7Nc2a6uQri9aAmVO93LjUNL+KxtFrP/5fJcbakmIgiKG3JOMYk4rrYkc3x1Cncf3V9kqvrxU+m0g15HHJRzXAq+80at2HVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784741974; c=relaxed/simple;
	bh=6ZmtCF/oQei9+0Jhy6cMSNpBKP7buoVMfDTDVbWWVBA=;
	h=To:Subject:From:Message-Id:Date; b=cuAYNvkHZJc1j4DltFgr78KfuR69tfBAvTzb7+/TYchaPUJn2FVoQmqucPr6L8ljLiHc16Oorb/0hj3BXMh4V1fhqzmR1O3unyMy2BxRivncVc4AazsQ+VrOBg4L6ojG5Lq9hmkWSK1TW1TFHXYrBNNdgoN0VbQzhBKawoJ94bk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4Z34/sj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4Z34/sj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6DCC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:39:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784741973;
	bh=6ZmtCF/oQei9+0Jhy6cMSNpBKP7buoVMfDTDVbWWVBA=;
	h=To:Subject:From:Date:From;
	b=V4Z34/sj9UYLDfSQbLlvY0klvl8sM6FtQRd3+CTmBgKJuYxAqw98Ofz+TgiSmyMd6
	 yw64PeycQcsvBBLMGWfTh+Ap8sfgqYpu1JOq1MJ3iuftqyAiYSysjtrxm5xLEYs9Of
	 RckNzFcET0bAmaQc31z5JUdny8daBpPu/6J0N/Gxphaxf1x/BT5cpptTMzR8h6TLwJ
	 Q847dk8Lw4CtEcBHXh//ntvXIdrKsTs5xjkqCsmaRzo1H71DcTXNCH8CEEcA18V9cF
	 2kO8XKc1188RQWOOQaZhBQ4f8k7fnXJhQS7hpFhnPGpj6Dxwu60LmMWIUXyL/kUkOS
	 850gsWuU3PIZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90FAC4453A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 17:39:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178474197368.19439.16129378098407847207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2df294dfbaba35d54e720b0839960bbee0a3bf79334ed41d8ccaf81dc6ac2d38
Date: Wed, 22 Jul 2026 17:39:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784741973
