Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E86936EA8E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779249035; cv=none; b=SvdekrV9JChp66GVcxW14dxnuhB5rbhoPQJmIcNYpkV5KHiKFZHy0PmuLzlkv6BHTxO4Uc1TBwksfUh/UHrlKKj4FQNQZnPsPx0JcjeDfHdRcumXkkhbc5oL1fxGaaP6ozpcakA7W7kxWtabCOo2vYbsXNhlNvUhbQFTratOC5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779249035; c=relaxed/simple;
	bh=/DoSioHwwQ8vBWutUrWFsgZjuWXZDAFI+Di7Xk/yfeY=;
	h=To:Subject:From:Message-Id:Date; b=SIQGPtRTt6h3aJwbj+45LN2quyjgGyYZSCOGZMS8sIIZInHdjzlHT57pBY7/H9QKBBahrGS4WGfBEc2g0jRddLKRbBmcfliIPfYD1V1e9/0iczYNL/18oz8vS0r+JNSEQVEefkDO5IzBnjJ8BMD+Nje+1gbQ2V7Hao5kfm4nufQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oZiH8Fof; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oZiH8Fof"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3A67C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779249033;
	bh=/DoSioHwwQ8vBWutUrWFsgZjuWXZDAFI+Di7Xk/yfeY=;
	h=To:Subject:From:Date:From;
	b=oZiH8Fof4AGH/galXV0tQ08GdM8NKCU/Gsy9ASfWdVvgjAzoXWMDKHmhG2V2N5Jbb
	 4PewqVIWMLu4L2vpPyztXqtCvyn0usQDchOKzqjKwiAEJmstpNvSX9bhbQCmapd0v7
	 EeI2XzENMbeaVGcV//JyRAOePNsTKRE7h3p/C7IpMXK/7Hznnj1RQG2MZKbgD6JkAK
	 KTHwaYSKhlRR1bJZYiT3NBjRLCPXqIVjIgvK9Cm/42c3RFR1EQrC5dVgP2NaPILK5M
	 KXgvhefOHolvjfBYo/8byf07Es8YokOozSURVLfIHIXtnDW1kfBEppX97TBoGkvU2T
	 fZ1nlIu780YCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4AACD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177924903368.4924.13983751078987329643.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 124e45f9e909192322e51956049aa0c409ae05b3694f6a57f3f1f6fd8c51b52d
Date: Wed, 20 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779249033
