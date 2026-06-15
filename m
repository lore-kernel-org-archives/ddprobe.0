Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47F5F2E7374
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781552794; cv=none; b=Nu9ZXMsSJ8OGyuF87Q8uyFy4qLyjwebj8VCIl3K+4ysJ7tsShT3Njh/s0n2nTwQ1zG7oU4TC8iFAaneoF5t+ugc056WIIMg100zdqEP1Rlgfa1rXO1kNehkVCKeEb3EAI3rawLJYS+bLonFihiZ09a5DnwKXgQdm+tP2eoqjbUw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781552794; c=relaxed/simple;
	bh=hiB26MkksOJiW5n5NV8hZTseCLSFeYOZnOtiNWystRw=;
	h=To:Subject:From:Message-Id:Date; b=p+I5lpJDiyovuHZmBfxD2JosKiwc5w1Zv3pS/pAIIW7gUNMIr8UO4cU2MZdDebknIkNCINI++Z1enyUcV6dvo12AsVQlvC23sHUBMVfDvHrOWlwIMWxgiDL/ykXZCQvsJf/lWw/y4NvxQ5VKfE5fYHlZ/uFDMB5uy9I1+vDFyJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lLNG9UuG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lLNG9UuG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D509AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781552793;
	bh=hiB26MkksOJiW5n5NV8hZTseCLSFeYOZnOtiNWystRw=;
	h=To:Subject:From:Date:From;
	b=lLNG9UuGYS28+3rlq5Bxw+CFCtL6jewLOO6isefoWP3dcogb2OInmH3NwRbsjb9gG
	 GPjfTwTsnR9Eua3Ntk9V57x0tBkDunVFQ/40wbfN4G6fyjFbVdk+U0fisg1m5V3nFM
	 8PWrVDcxogC/2PNBwtyddjwadJXzVnWBSfqzCYNsCrR/7MV/vFC1OZnSyNRHfl85Hh
	 soUXMq35+zIN/svQRDNG1nK6y3bIfT6/ZIE4qRq83ATAVad3ugEwNDVo2i/43Bp/cW
	 sH7b8MtcVpXqo5jE7pU3OrVTkcsp+Zlc/rLfphR34n4zA2yC5mH/++6CAU74fzXuWF
	 Lsr0IUEZkjMpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B58BACD98CF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 19:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178155279372.21599.11888549659031132830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1038a2081e7335ee2d8bf78df9cbddbdfcf7a1a7bab5e2153a9ed815a705a424
Date: Mon, 15 Jun 2026 19:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781552793
