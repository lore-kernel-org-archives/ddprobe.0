Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9A835A95E
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:05:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728115554; cv=none; b=tAKw1dkpe1PIBQNZzZwCb3Z562A6gPOhka5xBgF4b9rQtPUx7ZrkYAgChLR6NHdKIig/WM4+QD5AITP/bMxLwS2zchFmEYTF1FRzy+c/PMvTH6IM5HhWycMC2eYO19GvFGiQEybscyZKJIxym7ds9hT8UV7cK8laQLf3jgA/u3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728115554; c=relaxed/simple;
	bh=it+XY7nTmYnZtTe6c/Ud23OYIHChtoVA3y7H13exR/0=;
	h=To:Subject:From:Message-Id:Date; b=a6awgjm69L80Qw4W7DKJM6UgeC7xyCpFVMV03L3a4Csdk7Lle5qrXPAnO8b3MOFld5t/Tc/yyK5KJfYqFhD226D5HGq//VmjbvLEuzYsIBaQeEk7JAGqCZHkUuN2R361MdYce1sioaaRKfvZzMe+oKZVLo7BUfH0s/dlw4aSfjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jzppmc92; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jzppmc92"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE5DAC4CED1
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728115553;
	bh=it+XY7nTmYnZtTe6c/Ud23OYIHChtoVA3y7H13exR/0=;
	h=To:Subject:From:Date:From;
	b=Jzppmc92aSE9+/P1vCWkECkrn40In4FfKUM2rDeAYSRf8DkCV3uGHu+t7C9djzFWJ
	 xRwqBgPTY92YiVVlGaAsp8t554vgH9OMH2ql/YP8/XxsX41msNb5IC5y2x8pZBZxxJ
	 RY3C96Rq+N/OPlIFMYfAIxhyJQMzs+F3uHCDksRnD9FTu1jms0NFU9VOrEaNP1Yo+l
	 /fA3RveAEMrXyFnsiW1eyzEKAikba3VdBnt9iMCkKi27olZv45YBjQJXKiZYrsAq/P
	 b/nkJTYsHOdgOo6enLV5J3HfOjphnP69z1erT2ZTLnobl2bAs117fpIwrEhBJ+UVS6
	 jtncsR4IOXnjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CCAFCF8873
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 08:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811555363.15347.3062602448876957747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0205943d9562240cbf02c49289a0109bee26d426a17c5381de9c02b6c8c002f8
Date: Sat, 05 Oct 2024 08:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728115553
