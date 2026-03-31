Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AD2428C009
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774929294; cv=none; b=AIWi7mO08vNo+1zwKNsV42z6b8eRmLKKlxQd4ZZTBYsxX5+F6olVz5u+9ofPjYhCE4AP/9VJOC9P2LImzAgESuA2zhWzT1IO+1E82tSEykEoEpQsA/SUJmC09SFuZf4Owlu5pm3fZoaz49Eem/hlFkNCEadgKRqCuklZ6rmpzwI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774929294; c=relaxed/simple;
	bh=SvLyecGyAqMcW4/QFtr/0D24wc6RoHzIaN5BdRAiT8k=;
	h=To:Subject:From:Message-Id:Date; b=j6FfZ0X9vGH/ayx8T86E1KD1wUcM1yMDEHgr9OUEwx+rxuZnEocW4d2rmh14OXsvLTecupzL4Y4HDzdatcE/Daw23cggmoIBzNygytHuccDCxqfLAp38q6zdqUmbgXe/uC3lYrvCsv/EIE09HTUJZc3Uc1OjpSgw0LSvn+/gwr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fCVfmm9M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fCVfmm9M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A252AC19423
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774929293;
	bh=SvLyecGyAqMcW4/QFtr/0D24wc6RoHzIaN5BdRAiT8k=;
	h=To:Subject:From:Date:From;
	b=fCVfmm9MUPwwcV9s6IgRiXf6O6ez73mRdopIBYxOm+F6UN4iwPKHoRsoZixCoNa9z
	 cGlE2BlBA+1sGflX3w2zfXpX8R/Xa99dhTXE34GLjxaLL9wR6U1SpNo2JURlXPVFIi
	 vnTDXcf2RZRsXWqU5E3WdcPloH4oZ3Pg1A/CnaUT1n+LSkDUF1paftndWf0W4Jqhc7
	 XgTQ4RHL0vewBBBqP4KflqXGVX6va3FrCgXF/H/B/ZhxTWT29O/6g7yO6x+lEQ0qW7
	 JV4F7trQLQXx9yVHUciUApbVm+0xuihMXeB5XsN52NxOnm4h7v/9/NM3ChozZt0ucY
	 lNK3TnXSIjaWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92580FF60C0
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177492929359.17849.12631135429255007381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c79d68384dd88db5582686f6ee4719afd30a5c83251e4f442ac5c1617ebfd81
Date: Tue, 31 Mar 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774929293
