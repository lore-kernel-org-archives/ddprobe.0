Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F91233D88
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760207993; cv=none; b=f7Qi+LG83qQGEMH+Voqqs0OAbRvyfuA9SVDUIpsvDDOAQgqzVbxvq5kabMr556FxHn504sEAWeO//7paMpnbeenzRSWSljCvLEB7Q5MslTbYMj8jxVo7J+6ha031sXPexH/tw1AOutxuaRJrTjzhezxetC6d68CeVhgikxcHt4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760207993; c=relaxed/simple;
	bh=030+HYIN559OOUzITxlBEbgWghxcbz7irIY7RZ9QItM=;
	h=To:Subject:From:Message-Id:Date; b=YXygNTiBsux8saBDYvsbnEUFRF6ogESIdY2i2rejFhxYR8qD2Bc0+GzfE+OmDqpWjVmi0hWI5a9uX2jpCKoICgX2cTyi0cZtPYt3yQEGXA5Pm0g6GX6xlpYOtPpXbJzgO7guVSsLprZO9flI9Vl40JlcemD7rQqjrsPl3JFxCfY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q5u//lAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q5u//lAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A412AC4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760207993;
	bh=030+HYIN559OOUzITxlBEbgWghxcbz7irIY7RZ9QItM=;
	h=To:Subject:From:Date:From;
	b=q5u//lAR646ONBoVJYAYJ/+sJwOibZvy+yeV9F3l5Ue52WgZr/ta9ke0L7K5kGi1n
	 lzLtz6NTPfoKbsSmHnF2o9qa/Zi4xAV3ZPRJ1SmHqLrATk187RA+MyrZFoZKVnxQa+
	 Q1oUdtPHYDwA7EQS0Ws9qyEqF0HAIJYO9fK7N6DQFtUqVF2Gc5VtEZXf8GC3KTGpr5
	 jkkoqeWO0WGzJ7K1SqNDy+neva//eFDr97RTYr3Nig8MDsJP+ohTYTtbu6DZmAHvGI
	 9PCgoLD9Hx47AckCFpm1kHClQz9CJ4ftw4EO+dI1BKcukbLNaDY81Q5dm2a2bJQNyH
	 yLYVphEHEJKXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F54DCCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176020799357.23942.7869005127602573056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac2f93468f84a3f7b19d3c892f60267b8c2d5fc2a7d36aeca22b6f3a2ddb4e53
Date: Sat, 11 Oct 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760207993
