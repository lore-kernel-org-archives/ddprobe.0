Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510B242DA36
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788197434; cv=none; b=tcB0Wakxq6m4CBJjb8spxJ85ET3l56LU3ERwRecTU7PRSKgTbcYPqxiiVAbj66eRUQX3Ibmd6sxqlFLyz+ZDAyeGkOLHrkCP5ZsdiriWccugAdks3XWtpdS9rOPTvtgeLPUbYCxbWMpUHhoje039QWFd14yyXdHUbuEqS1y2a9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788197434; c=relaxed/simple;
	bh=JZkCDhlDhBKi7li+DhslLqGwJIplfZNutBLJo57ippQ=;
	h=To:Subject:From:Message-Id:Date; b=R0H6kKqUME3LxjE4zb+0xUBUGRD6RgFT4VWde/2HkxHytoPqX1WRABcI5uJe+VuQ7TFp1kOBJotYND40VS+TQQ8Qm+Gr6dto2bJwVYXltIJOxNPwGtpLspdInkh18NOVhMl/jSLaOaj1EcuwFJLNKPfV++K5t+4wQYG6hWLJ+XM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJVN5Vk7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJVN5Vk7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD7F3C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788197433;
	bh=JZkCDhlDhBKi7li+DhslLqGwJIplfZNutBLJo57ippQ=;
	h=To:Subject:From:Date:From;
	b=NJVN5Vk7DGbxWlwXGRsI3BICRYTIbSPdTxFvrZzX0UauhcRX+DL6t4BGmBWgk2FDw
	 olrc2sNt6S/SXi6QXQZUNQz43VO6DDAvXEu5Vw2yvwhpzZmIMxWjVXY5EeTEDdyH/L
	 SXrTZhLXnCC/p/BGjVsY1dzM9SsCY/lvbb33JHHrvSz0/nvzvXviHTnsBvCLvEy6kD
	 bYbMpgC6uiTLuE1NW5gxe83H53pkEBUe/sN+YVRq+Q5P2r36Vr7fk0cXtEtOEwfWEy
	 oD/xrI72jOXGYH3dR8lzVchY9lKSE3SeQwUiMAB/oTqgP4e4yn9EJJM+CidQ0PyPSC
	 5HKvjTwyWr3ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9B4C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178819743369.336.12973435074369830833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f80f8a46299cfc2dc3592a9c4a53ca78f3874f6dd0f60fa96fc5ac3875d2f2ae
Date: Mon, 31 Aug 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788197433
