Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270A1372B45
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784013514; cv=none; b=llTp5OqO+nXrZsm3+83jVt+h/ZqSsCmC5yAlufgk0tXHCqb5Hfe242zHoNiGO5BXoyC6f6IT0AWsvd/AQNOe5DLuqFbBBc15CPtPJ6XrnbFiMRhFNQgm2Lpbxa2jthnUbhv80XNv4JX6SsXGVRaLMhco4lbh3KFLqbru3slOC30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784013514; c=relaxed/simple;
	bh=d1ix6uMr1SrYKzGsfiUPcNqRHCfLZs0Irs+yMMDCQhQ=;
	h=To:Subject:From:Message-Id:Date; b=pWHae0C2UI1GQk6pkau1RQVMacqFuuEzhpivoTdd4EO5XVv2oxog5sCTPF3aaEncXnSAg4FzNTvM3DQdG8wpn6ahmHMQ+mw3O7X9Z9StjVaRR2l1s28lPTv8f/t/o9jiKnIfBXPVBN4AdQZl7hv3XCnijP3qwucwWpNolkgXAWY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TbnE0569; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TbnE0569"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0459C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784013513;
	bh=d1ix6uMr1SrYKzGsfiUPcNqRHCfLZs0Irs+yMMDCQhQ=;
	h=To:Subject:From:Date:From;
	b=TbnE0569OYnilIorbrxq6UKTmDNsR7xJykCBIF0DUa2DRoF2ONpfzmohMTfP83vOf
	 QI38/FJsVLQBr8hXIATO20gCVIHSwvQspOKzEOHWD9V2RmgY9LNK0SzyTFNRBk2/zS
	 4H6uxanFecQsIpD5OqyAZq6j+IGyqXHmcFa6G8skX8zxFZRrHvjU+V6M44yD12/jiM
	 btlU3AXHXNr7r1CGW5YqUJQMoybw6lEoxlEkW047NQi1GPrhv2jnM8ncs73WmQqExi
	 ZD5aORgFgauePCZfXIXYoutUU26h4KYmwlAnXBGfHw7qrAk2fFjsbRHIomnDvgHw5B
	 ALgRmiXlDgC/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC04AC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 07:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401351368.27997.7937778218510267296.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69844be16bffcb36ebb664929fc2b8d023d25d0c266226359183158eaed2b9de
Date: Tue, 14 Jul 2026 07:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784013513
