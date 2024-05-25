Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6353C8F66
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716634463; cv=none; b=EVGgENNL6JwE8i2/5+ks5uiXa3pXi4DtbMdTQYchbUxoYdfBR7TAmCCBwn5qdFBMok8BjkP5Dk1GhlqoK59uTlRuKTJ543Q0etKUhNSP0Ga3tcVH/RuITOKCY8UsD91YvueaxL1zwZ/sec845cwdFy4dCmSmAkhzHZcuyka2low=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716634463; c=relaxed/simple;
	bh=SEqiB6H5pV9WQWlEb3cPfJluVszqhRH2P/7PJ7KkFlg=;
	h=To:Subject:From:Message-Id:Date; b=CPxpvJVc1FXHuxF2KWseTmDUxee1KDwWGAZG1XD1/gEyfIrJk3pSDwgpft9uWkNQLTqRKwcH3af4JFACuj9BLsyL1JRGJHXPoYlsa78+nPVXYIz2Glo5P/12R+OaFmckH59wEvUYh0BLOh19WI0ONEWWvLWq+JO2p3nHfq7lBJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lj1UsIup; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lj1UsIup"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D889EC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716634462;
	bh=SEqiB6H5pV9WQWlEb3cPfJluVszqhRH2P/7PJ7KkFlg=;
	h=To:Subject:From:Date:From;
	b=Lj1UsIupFvvIDwqxlJH3KjB8j0DtjCvE2LmxXxLrcB680VEWx/+hbDvkBS6Q9pMYS
	 94CzOa+R/2+SIT3j64xOJTVEZSD6EWilxSrwSSI1SpZ5Omzm8kFw+nzCpiQQ8YawYW
	 FK0LkqCUHwO1YlUmiVspQxA7mezUMlGJGpFbT95HdCDIsu2eJa/8/z9UV/mcvHQIPO
	 22DnR9yL2j2niMrB2MbRRFxtf6d2kiZcrB05k3YRSx9xMF7VEzj8Fb8JFIZcrgkD6f
	 GR51sJfrdVmvk3XWc4qYvUGPsF9ABrK+/Pyb3X6LqtSps1S6EWQMjMFYbyWi/uYI/l
	 e3JY3UPVXTIdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE9B2C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663446276.15311.17303018497074116456.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7e9f1ef278d860c06a7594951e664e65ddc51a9ccbad3c4809cb9a424055dee
Date: Sat, 25 May 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716634462
