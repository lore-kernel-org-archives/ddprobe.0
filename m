Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DF912CCDB
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752476394; cv=none; b=n96HQ72lfuqin+oPU8KU0roDR15raCUTuWFyipfFRVq/s9WOKbHI/3AqtAIbFMk4Ff2x2V/6OWV4RMzpJIRXMfC4x4CWOGZN/s23L4Re8IYSK+m5mCWglwNX6T5vH29ibc2K3o2Eie4qjgRgSqDdStXfJEAiPRogNRxLRzljry4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752476394; c=relaxed/simple;
	bh=X2tjzxHnryz4ixrDivxvLVdHdSa948G4cJHUSX5iENY=;
	h=To:Subject:From:Message-Id:Date; b=Nn1ORQm9e2SC1xHlu3+A8dWI5f/P11yHMfJr6EpakXmPXRT8VEywq2HxN50UYHwnfLYkdJTNmXxUhHSueWg+lK4yqZIBGImtJUPLralnUGUcIcHiBCWjQg7hHnVj8RpuvbzIi0Ws/ufRTs0BelNvtw7EWtI0RM7DdSsWr2WWaYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=te2bxbPK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="te2bxbPK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB53AC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752476393;
	bh=X2tjzxHnryz4ixrDivxvLVdHdSa948G4cJHUSX5iENY=;
	h=To:Subject:From:Date:From;
	b=te2bxbPKyRxk2GtDLdPD15liB6SQA3yrLRx5/Rzi3LA40P3RdXc2Q2FFTTvr3rkhZ
	 gPxfJ5FCQExEelYzj5G9atKQ99qiMTs00ML7K8qWeBzQy826t/1aADFk2nUwMKDYTz
	 /CZZQ26lg5D6NayaLVSj28Ykk98nETXeeIP0G/zQqJAR9ngZxLPTYhGpICgp5yq8E9
	 hUscBEwwvazvXSKCRTSXtyn/OEz2cOB+ms93pB4hJVq9FObfLQeIKL4LRp0rdc8DMc
	 T7CL3+0uSq4wMd2Mi/k3TV8IBw0WrSEpg603HGFV6VhpX2tGVR3fD0veqPWWkCQwrO
	 zolg16EWodDnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C2CFC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247639362.12078.14861927841652124866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4298d326fc1572118d899e0c9cdc45db400e2b42087fd3955f391b7c4128ceb1
Date: Mon, 14 Jul 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752476393
