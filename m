Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27BB11624C0
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775184934; cv=none; b=MXiYHr4RR5mulhPjGGFsN2QwxRm44kmXvL/6djyt4SBvcrt+YMwCkOY6TLc2k2xSHZcaayMlaZ3kEHcXPnOmBWkWLVXss3SL828g45JCg+MhcjmmD/msE2ZPDBKs2BcNrMnzINNxdzqRwerj9v9/qkO2evGKFOTzEnTNJPdbUtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775184934; c=relaxed/simple;
	bh=JYwWIgmStvZoxKe3Y/6DWWXnU4j11j2munNg29RcAPM=;
	h=To:Subject:From:Message-Id:Date; b=GUuQARAj4yH+HSq90SgY0JgOtq/3VtYXv2dyrwN0VOmrHtiPMPG80VPRt929TCtkjDGWQiUbn9N6yjojZfafGTLgBWWdrxMHd3usYQ0sd0hyU2TZoKnnJ5eYFHwxzJK8JCOJEClxTri6oRCzXhC+Fu64vhdEPJyYNKELNa7V4vQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WmXcOiNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WmXcOiNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7B4C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775184933;
	bh=JYwWIgmStvZoxKe3Y/6DWWXnU4j11j2munNg29RcAPM=;
	h=To:Subject:From:Date:From;
	b=WmXcOiNyWd7MbCoGhry0Oe/OCVtmBw13kMnTxBsQ4lHtG2iIdW0jkG4hmxB0e7uY2
	 x5jSRRlIYFlRXwRWBtIYwCUtSSHql2aJr64EYm8vyfkx8M55S9jkjVedzvcuapzA73
	 pMX3EIt3nQTCAVDZuBPKCpSxhds6QJcv+vA8V/rodbOKsYSBzLKvMfcbPtFUE3wtnU
	 zRWoHQOnOvOQjC1lb3Qfnv7osNm6E9l2JB10rvcTj38CaWNSt1t+efsiz3ZAByKFk+
	 9RyOsd09WsUewne/yLs6quCFpgC3pw9qa5QMkJW/KT/6DnP7Lu7YeBI+po0WKNe5SQ
	 lbQZxYr1j7yxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEE7D7308A
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 02:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177518493369.4987.6556626370842671199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d6e4a205b8ea564816e85bd018dad52a53b887b51b97ec3e0d9f3db2b123e5f
Date: Fri, 03 Apr 2026 02:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775184933
