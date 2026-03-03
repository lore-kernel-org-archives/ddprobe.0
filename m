Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF69C253958
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772553894; cv=none; b=HRtI/WtZkTjokhPCanMuE7g/2Aq3UT8fTIyWJF7ibTJ1W3rmhB3irG6xCYNA+PjpOchX6WLPm5l40CfUvve1HPutUSQYe9pSu3E4voGS0Rp2u9QYr9fz6OK39WIGI5zb13AHlUnl9gpEWnUarg2YHBeCHChnNkWuxX9kc0YVHJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772553894; c=relaxed/simple;
	bh=RDyxrCCbhrNVivW4aGA+F/x6CojRF2UabNmY9jFkjR4=;
	h=To:Subject:From:Message-Id:Date; b=tb5IQr2d4WLNcCr0lowy3L/sfH25OfVJV/iU3l6asqsdgEbfCGXOhO7D031E3UU4sfzJsCoO7xz3+T1Xdwrc7xGWoNJ+5B9+2X2RJ/+d53hx+iqfyDOUCQCMyKzzAX33ypLVSZcdPz8UkVepS9ulZSiihNXtWXeblDPPEkNj09Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOgsd05x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOgsd05x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2445C116C6
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772553893;
	bh=RDyxrCCbhrNVivW4aGA+F/x6CojRF2UabNmY9jFkjR4=;
	h=To:Subject:From:Date:From;
	b=JOgsd05x9ZjERpjxhcxVxicHblzUH3eW8rwmPDqCiNX2CvKRDK1SaVe9cCw3oK/ee
	 U4BqWRvkCJyhvaQ4msZcNnygUHmexmMMKe9mJVvtxl9WT1QGDt3KNa/RLeKWzz73FM
	 4/FPWdWrirk7OMjnrrdSPWyqZXYaA2zTitrUvBwOEGE8QQUwuV6Ad6GEz98fkAf2OW
	 v0lrWnFLN3QFdWqU0myp/ME7HvXrZYcwT7jpO4vZgAhMocZcwpNZhxpYX4Lt3f3Dbr
	 FBtFyonLXn0BLWg/s3bVwmc8epP8aLptutl0rHeE7xYKKXyViNf0b2tB1qjYfCaiTZ
	 /n/tHzvTHqeWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1F3EDA693
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 16:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177255389361.14725.12891132240216888927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00350d3e214fcb8853584628e6e6afe9eac001b530aebacbdbb28552ec4a66ff
Date: Tue, 03 Mar 2026 16:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772553893
