Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2748721146B
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746599994; cv=none; b=ep48sm8p/KxL673DbVMuOXVozfWWRV49MkfkIcPsPY7rwUuzYLVK40Y1RR4cGHZwafUa98pFyFTb20pZ9JChml9TXzSMrGLLa6cpLhxnijlB3SNQw+y21RWL+MjVZGD/TI963iKqxGbW1bk8xrEd8/9LS2N1QaN85BkAplDd1yE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746599994; c=relaxed/simple;
	bh=EhVZBaw86Vgjt+Z4J6V4sgJ+Is5hF7UPrm//7G9UB0Q=;
	h=To:Subject:From:Message-Id:Date; b=Ew0CgXM9IRUZKlXV+Mr4HJP4Jt7zpi1ZxBmMmBfrxLAmNZO8rO00ApnZrV6CFdIetpv3ueNiBru3ZNVrG1IGlo7BWc5EoxwqP38IrKjfvqE5lLm05xe/pCACAAFuoqPfEjA45W8bUEsPLz8DKmon423x/Kg7C2kozzplmyc7sXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GQO5Of3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GQO5Of3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DCFBC4CEE9
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746599993;
	bh=EhVZBaw86Vgjt+Z4J6V4sgJ+Is5hF7UPrm//7G9UB0Q=;
	h=To:Subject:From:Date:From;
	b=GQO5Of3mT3xIx1Srf6yQksPDAGDCso/pMX/pNOSuQLiRM6GncfEaPWjJZaZFqBEAq
	 yWhXRLmMkIfythWOXmL5jLr5J/cUfemnrSYtVJHQjtduF9dtsLA+7RZwZzVwjysRyl
	 po4jjBxF8XCpSY6VLSfILJC1fff+5lqGtS0ME6FxOvRCd4EXGtBEnDoITcGB5fAvYE
	 dUqlzyS1hJKESjFSo7Cn99FdS2AHDMQuycn84y9FSoh/65PYtsUaj0Uc3QZFYn4HgR
	 AegC6qpDSu0azkbRxAnTV7nDTrhOrTtWQYlSPMJC9YxdlBVigi19uP4E8Gx1jwAYPR
	 8Tdd2o7hib8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90782C3ABB6
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174659999358.20329.18441135572614523881.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b972ef4a557a23876c476a06a98c26df9f99ef04c6827395fc1147be99765ee
Date: Wed, 07 May 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746599993
