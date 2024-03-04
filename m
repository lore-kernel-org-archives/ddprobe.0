Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121D11378
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 06:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709535497; cv=none; b=r40fXFCNWm3SoCS9kKCY3hRFgFzloPNAynaluPyexRxbInt+mC2LMZMqPK+QDAAXMMAiUCPmZirgrxqB1rwxKmOB3Co7KHheIyq4XMHt3jwzH06g/wR7dKIKx8wymrDVLMZBr9PYzQ9T3o1w8FAfgJmSnl8jCbeJeKF/lKsC6G0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709535497; c=relaxed/simple;
	bh=eQyuLopym29Ga7jQgugiXbs7HNvylvZrckNzbNeBlLA=;
	h=To:Subject:From:Message-Id:Date; b=D1H8Sl2Y7P1gad2LuJAA7nucLCnrWp6NA3EiIxhw+3VAqC+WlU8SxBINXtRbBrtB/QiSylaPhQieLm82mXGvl5wEimAYkdTnMAOrf0YAApU3bWiYErR1MmyDUcLoU7EmvODxbYiOVUGMQYv+Bcp9bsBLtMDJLrdQUhKQnd2d+iU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EqVYPSgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EqVYPSgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE9BC43390
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 06:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709535496;
	bh=eQyuLopym29Ga7jQgugiXbs7HNvylvZrckNzbNeBlLA=;
	h=To:Subject:From:Date:From;
	b=EqVYPSgVLEmOeA3O11nX37FwY6VApE31Pha89oJEQs2g3/be9dBIDcsqh5Ry8A1Tg
	 oiUO7tu6z61/XPW2+xxHY/KK7rnUsQRpmxdTcwgRmGcqhEjZ61gWpi8aSWoPaCFTdr
	 Iuhm4/wGKcMfNt3CDDNO/nA96iIrpCMsOKV1kTZXTtqkG5wW4xlCVRBzrLSpWgAKmG
	 WY48lPUBRwbzlSaSl092V9/7EOiXuP75LKcn1s3ZpRSIP811QoYeg/6hLeEq9HEPrv
	 bAVKgTtBO+VSLQkV3cspPkwyVB60PnfiGksyMrenr9BtaozQrJDzbk9RJZ+6eTWiss
	 SVvPaJeyz9ucA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7DD70C48BF6
	for <ddprobe@lists.linux.dev>; Mon,  4 Mar 2024 06:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170953549650.10393.7100614806353675591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a306d6453b9638b23d6395ca90889f51b8b1bb9b2980245200831cd47fa8872
Date: Mon, 04 Mar 2024 06:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709535496
