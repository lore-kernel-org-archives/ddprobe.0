Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E920548EE
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761716994; cv=none; b=PEboXCMBXoMaWlDzfP+73qTJPjJ4Qr+VM5dYRjui6U/QWLBquu9qhf4BNWZrhNsWeHyr7yu+PULMnuPwfuHw18aK+aBHKBaWnqPG//gSFjotcJtGt/9ftRm23avH82aaLZe+7+m9tmkGkVeGTCqo6sfkPoWesrK8Vf3P2iawYfU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761716994; c=relaxed/simple;
	bh=igQCBTKtFkJg3gkgbSM/zBG+COEJgUwJUZYc++hxWOs=;
	h=To:Subject:From:Message-Id:Date; b=D3KH4XlTcB6CJJfC0psgO/hMdNbgd4bQ00bh7agLtZXt0oS07rPJZjDnoL0fEkjmW5O/mW+FvUwwgc1NQBEXqtt4nA4/IaXzChi4jpFc5Fs6I9QLEoOF2mtGIHxR+/N4MX4dTXGCfPKcE7Slzsp/kHU1FWj43TicPXrBxqClR0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbu8e3du; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbu8e3du"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5276C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761716993;
	bh=igQCBTKtFkJg3gkgbSM/zBG+COEJgUwJUZYc++hxWOs=;
	h=To:Subject:From:Date:From;
	b=jbu8e3dusSWmFHdoSQIa5xpNi/S7wzk/ad33WW4VdMw8t69npblW92BtHlMxdKZRX
	 a8/3un/u4p4SOzx/8kCRsRDpvInsuKTjdlw18FBO3srhi7y1Y/UncpBZGqSxL9eFrV
	 /ZJ7Pd9JgYQMyW/+cTb8rux68Hc7gPVt6XGAXil4Y5JKLBDObdp7sNjSSgFgsVyeT7
	 UJHb2TIKLrj9NdJgpG5YJklpou9mSqjChBfoiRsI8wr1hLUWn2mkx8T4zG3ofa2kdL
	 /PJXY+Hj99IZ/m3iadVG04zU2KNlX//5Zak6siCL4XA2O9BWxGonmBSdqPMX5Ywuqa
	 Pubzbw7J7XSFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3ACCD1BF
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176171699358.5017.16704138323958008874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed8110e292ced2940eae50baea8d31b181fa286bf3fed08d0a3566075204adf2
Date: Wed, 29 Oct 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761716993
