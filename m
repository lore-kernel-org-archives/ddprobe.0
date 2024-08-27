Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2977638C
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724721955; cv=none; b=ZHmq/h/wagRIv2p0TnVcLciRUM5lRo3jB+FcDd+m05tYvbGv+gzTT206CiXiHTm/pnnYtGjIg6k62pLLRwFlHcaXi2cEr7CwvK/xHF36S1MTN5n7Hp7SfxIexWEm51juab787F+azr+yQkFcxqnnG+SfB1DIfyd8JiNcYwI70xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724721955; c=relaxed/simple;
	bh=qd2vw6MDUfcWC5RP1LDMT4vf/zPmu8FJTP/RqgvfpRw=;
	h=To:Subject:From:Message-Id:Date; b=I2OHhdJsENJJj79KFMa4YTzahiCyE7zNSyGcIUi1XMbCguBMrPndJ5bTkZ6KderrDcnNSPc72KHBBjETDJSGtNvV2B4T8tslf5hML82i9lS6iqBCKwe1Cj5AmJRaHo4mnNLp46PDAnctQX9B36gdxCrWfgq6ULonlyMS4LzAnvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn9MQl77; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn9MQl77"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60CCC8B7B3
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:25:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724721954;
	bh=qd2vw6MDUfcWC5RP1LDMT4vf/zPmu8FJTP/RqgvfpRw=;
	h=To:Subject:From:Date:From;
	b=Nn9MQl77hRezZPmqQaWDF43Gv2Aeu/Nd2451gsB4Sv/sbSpXfhG72YL7iabK2MC0e
	 Mmkxc6XJFJq9CwzYD8x97PDeES3p3K76CILe7num9zQhHGqNQoSExQmlCyenpNYgJg
	 iFmCCJ0gBd8pPCfWNgUvsdMwx7wGO5zep6rKndGxIEhMBRJIOVV58MJf2HIr0g7dje
	 FtRpahmEfV0YPQNCEDfD/bKNdegM82ddISySxOmroip6bK36kOvJsJnrXGwfGkKeJ9
	 TiZT+UuoJJ6WzDf4oMbHMW/3X7QL+QXxXCUZg2n6zFD+ie4NY7giUBlW6CKx3CfUaj
	 PZ/upnjHPvIBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FC1C5321D
	for <ddprobe@lists.linux.dev>; Tue, 27 Aug 2024 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172472195359.16618.17676377593586620830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95d20314af5d1dc1998c4eb29f53e4958fb7669a7fc0e3d683a6fce39e6aa3c
Date: Tue, 27 Aug 2024 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724721953
