Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 131032FB61D
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761166194; cv=none; b=B2U+G9bIM7QMvoXSyrzySoZXZKIRX8vxTzR569aPFrI2pcx98+yZqsqsBqJN+4b/U65B4UOe0rOjUd3LSe3qwCVjB9ov5hSJyjooumDAaG2lfLPaqV7/cDxNjD1DQa6dDB2Bu7EbDNmBV5QwyXWBOEW8/c+YDvZwNeeHLdWDOzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761166194; c=relaxed/simple;
	bh=bULrJ/qLcv592+M/k6qZf6dszWh4NRcyr6gJAbzFo80=;
	h=To:Subject:From:Message-Id:Date; b=rGOUS7/xN2IyiTrJpbC4jshXsAwtZhQNC4xUS6Pi0BTeMpbO10zhpXmB3FZ6dK7CG4eL98Qn2UGU4ZaECSRrs+L80wDsMf2/VU7QtBdrZ0lmVgqzyrg56+AinG8dTOh0JKOzzAH4LFd0FdFijPwfWzvDPiwJVwlG1dafr96gA7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=svHigBaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="svHigBaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A02C1C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761166193;
	bh=bULrJ/qLcv592+M/k6qZf6dszWh4NRcyr6gJAbzFo80=;
	h=To:Subject:From:Date:From;
	b=svHigBaRg0jaSbJ/3DozfM3RAUEivKnlXotQvW6Cs8CCAMCd1lRUD7pNj5FAF55Tw
	 wA5RBEhPL92jj0Ml7f1qJDGzHK2KUgmxDOt7JRYXOYYcXiP30OTOkTBqmjMqiv9kit
	 a0MI/BxiPsg4cD334RJHw7VSWaOQpNG9MBAlXiIG7JqWjXATSs1vBWB2HizjX1imdo
	 jhYcuLA0ODFSvDehUGgl9arjEipZPUpITBWnO9dPVj+65CPwF37/qM4bqkSd3ac/Ws
	 dmRs6n9enI0fvB9z64yHJBpmIsPRvtS1oVLNqd74K/8/bgKN9QxEVeWkw2jbbH5GIc
	 GTgq1sSC6RoDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5EECCD1AB
	for <ddprobe@lists.linux.dev>; Wed, 22 Oct 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176116619357.5436.10647986482063981097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0da7d9040355648639506d7b5c1f87eb1162eedf1e3335ddd132f462ed009d42
Date: Wed, 22 Oct 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761166193
