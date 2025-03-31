Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A95A1DF75A
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743437394; cv=none; b=M+B+WkOq/Ic7YJCm+EE02mxJv5mlKUY7n6YADp+r1d26YEGusmOigx2XA9FwNMEmCg1diEBGnzJTCYsnOHcHmTtKpxW/2OpKAHp6eIgL6NNVHvFxd7qNxovGb7i13JSM5MhMGpHMFQd65fOPb84n6jtvIdrl93TwLgwUnf4qHmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743437394; c=relaxed/simple;
	bh=prvQhVC9ldlGtfKMt/7BwHdEvo7RJnlZRraO6frUJL8=;
	h=To:Subject:From:Message-Id:Date; b=jW57Mkgl8sGu3dEQNO3lRG2pSAMfYVr07cWWsscdJ7qd70ABIaNJvfE2XWZ+rczwOWIz89QjqcvftQ92Cfiq2HhGOeBfr2fPvlO+dNInOs8vsO4Qxx9pa5MzYmmWD1uCdg/FjSZZKwOSJ6+r+iNGPFs5GOWWHLlqjdu0XimrHAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E88MEOiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E88MEOiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA443C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743437393;
	bh=prvQhVC9ldlGtfKMt/7BwHdEvo7RJnlZRraO6frUJL8=;
	h=To:Subject:From:Date:From;
	b=E88MEOiINdjQQl0/2dos0JsjGM8CT7zbC41DAJAN74SE15nYztSlw44syHps4awe3
	 cQuaS5vV3V6pG9VrsCYWrrTlefcJkcSc70aRRq3aUcAdfvVPQq61yNIaorxNRgcpJ5
	 SzF3kxtuJQfXv1VUFr6bZZpJk8CIA3rjDLtzQmRXPMZYuDmtYjR0xSVlj8TlGPQykv
	 z54Zb99pZxebsfmt+XVUFpUg4w9Upi6Jshs277Sm6f5f7r6pqnoMTGTBM7fy292jWQ
	 P+aGSMWlB843s+INBS1/0DPpqJ5LAJoNBow2ibB4Hisrh6DYR0PaDnPjgyZzXplMPm
	 vZrSzhSBNp9KA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A190DC36010
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174343739364.753.13953031131047257383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f222a1cfbb9cbb92e21bc3f5908eca851a708dd64e953bbcfd590cdb5d89ac
Date: Mon, 31 Mar 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743437393
