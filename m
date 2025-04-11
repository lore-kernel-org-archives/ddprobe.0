Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4530320AF66
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744370394; cv=none; b=Cej2WdxdZCYYi+3g/6GhNGj3u/3w/Gjz5lNCfEWIIqtDi8jmXCBVqx5mw0VvtwZLrtjLQ1LKiQZjKur1Z2bZCF2oOvjEa8cuFgtK1yYEpsPaz3fsPOWRwslbB/CEc/JUym3Mqxn06x3aR+lkYP54qffqVEuDP5MwY2HdcGdKrOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744370394; c=relaxed/simple;
	bh=XcxghMpDwUBoEg66p0SEIf307zgzQew+0maruHIy8D8=;
	h=To:Subject:From:Message-Id:Date; b=SJYVzcGqBpRtPceDSlQkFHRfCva1Ci8+NJypsMD+c0VrZJLekgUOm5B0+MM8l55juclH5FBfmmYjCflO4F43Te0QFK4gOP7ndJ/pCHcdGS/7TZN4k0Wl6QN4tGA5Xho6EGLq/w2PgOQLc5M51xUlhsYGPgvIHPSXWHBc+8Ap6zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=diXIPpH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="diXIPpH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6BCC4CEE7
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744370393;
	bh=XcxghMpDwUBoEg66p0SEIf307zgzQew+0maruHIy8D8=;
	h=To:Subject:From:Date:From;
	b=diXIPpH/yQKiy0pAnwRvzb6TPyCyq8fuLv4wd1u4Msa3ypBrW0Ey/LeKubPgaCI3M
	 YicTJtRcbhE/z0AywDllPdZCKsJ+MEc5oSncecNp8F1XtlEYtiOVFAjb3UXnsfVvJL
	 KNc0Ody40GoQEnz4M4UL4SkgXV/DM+o+/O7T14Nwmnh/Yq4+5bpLWt/pDFmQqJhpfk
	 mRNPxHW0eGjDK7v8wkdl38Xxu7dwfg9MXfBKvIQ8G6/QY2aqRjqtaO71lpD/q8rOt2
	 lIxdm2okH3JXxDViqM7G2W5/5U4PLF5B2ywE39nNyrey/gf8LuTcFxZE65M3blkneD
	 XLkfI4bz8zxqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C754C36010
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174437039362.1564.4123257340954758787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b123551722c9b9991274282a66624a6c37e2481333f02f2305e478f37d07cd6
Date: Fri, 11 Apr 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744370393
