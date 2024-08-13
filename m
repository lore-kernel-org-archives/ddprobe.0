Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 460BD2033A
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723569354; cv=none; b=B0q0Vvfm9OPrvTBT+fAsKYJnsge19hdYVk5gLOnK1pGY/ZY2h3atQHih5/Z56QLz7WuWxlDlEsplSkuYfRVoFzObMG+4/PztGkF+mXxzo7zeRvXPwNgOUaKVXqgRFgSiaTxRMhyzjUMgCFqEhO9T5IMBtD+DjCs2yWB4YXi2IBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723569354; c=relaxed/simple;
	bh=BhDEGVeqxs4hFSaSY+yUvPcfGs9WjmOqmrmDq1qMbsU=;
	h=To:Subject:From:Message-Id:Date; b=GCNiwKkEI/PPQI8nH/qc6dZKARa65z0hRhFZu2fZ0Hc2dYNWGS5TywhE0HOlrf7mQ/Q5W7TsYV9VTwUi62L8tJhzwpoI6K1ti2B3pvorzqTAmoSwTzxfll12Pntrfu+mg1dAGAeL/iUyJD+vtzBZug7G9oliDdfbc8ldFkXrPew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rl8+KCaH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rl8+KCaH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C159DC4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723569353;
	bh=BhDEGVeqxs4hFSaSY+yUvPcfGs9WjmOqmrmDq1qMbsU=;
	h=To:Subject:From:Date:From;
	b=Rl8+KCaH+6Kgko++/ITwW5kdVgVJQAv/D17m7masNZ6GuC4bGBljVqK42pouvz6/s
	 pmhrqdkORyMVV3PWMLuyJHOGF95HH5nFJtyDBQntzAX24Yb+9MctRqxFwvCuOlb1Vy
	 l4/wsjVFb+HbkC5YyC/ARiehod6DsemiafVx7r2VE6nEE3TjzsMCpJJ8tSpDL1OHpV
	 JKpk9aU1AbnZwOM6iGJV59+gUcCS0We7bz12sfnkAjJXAZVGaj1KLiqH7BeMms1j4E
	 +64ESNCxl4/7khO1FBYPpnhH8OEYQ7dHvilk4/a+UDmwycrX2ekFNSx229y5WFNaxa
	 LnJgNbTBEOQTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA0FBC52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172356935367.28137.15747295402993449706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1532c77999b1451eb682b4ca64305e663b55d6974f8695103011929259e55255
Date: Tue, 13 Aug 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723569353
