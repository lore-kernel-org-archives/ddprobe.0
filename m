Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56D17FD
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 00:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706401697; cv=none; b=BEDTBMIS26+cMcfrYVxtHdvBmLtOba4LM84vMDordWGfKHPnHzsWsa3hNlWWH9RF14TkdzL59Xdh03aW6k36x00eJ6JolsfCgP0aeVWN+5sA3oF8z0uwR9UExJ6oAAraSrRZ3Yx7q/oDZefBcaSX9rkSRQUhikRsakYeitdb0z8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706401697; c=relaxed/simple;
	bh=DU31r4df1ZkspmId2swL+4G59k2FlyAnbsKk6LeKQAg=;
	h=To:Subject:From:Message-Id:Date; b=oygjEQtpUiZDyyHUTiYmWSKz/CQsubwa2666PdZIMF1rRNzwvyzhCyoYkNVc/P09tvYCOn9Vswm1JG0TKgaBTF4RER45zDhQoLl1FaoX8uZbmZJsLFjIJ+UavO3cf+59FHmsFnzjEpf8x+JJuCe8t99SufNqyMFZYFsYno/el3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+EFfAVN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+EFfAVN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78194C433C7
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 00:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706401696;
	bh=DU31r4df1ZkspmId2swL+4G59k2FlyAnbsKk6LeKQAg=;
	h=To:Subject:From:Date:From;
	b=I+EFfAVNhWe3SkUHXxcf20Q7qbFBs/Py19QdwgseYatq3YQTuNrl1nO1SfuS4u0SV
	 mD7y/Qfhe5rVR8n/Q16cWEODOndcLnUE1F+l/gShGsI1M8v4rH/NativhYwlDiCn5c
	 aZIc77IklmoM9Zyxa3+SsAmTstMAsndAAad1xTO8ozw2nYRHbHvY0xwhpwnAbjJshf
	 w8413tGEN9wwJOH4UdbILDLvVpcIYj8+Wshyj/zjkAaxlFnOTvVmYcrApzMlLNt7yb
	 ZPi9nMGT1bQKkSu5rVsqrjXHk4GuG8RXisu/fXGEq8ljPLwhOQRHndm+S/ADS3S2th
	 XRukvM+Dk1E8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C319C47DDB
	for <ddprobe@lists.linux.dev>; Sun, 28 Jan 2024 00:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170640169637.32727.9542121362427011893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b71e70abb92e483ffae0707e79817749b3223f4b10356864dd20f615f3901c92
Date: Sun, 28 Jan 2024 00:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706401696
