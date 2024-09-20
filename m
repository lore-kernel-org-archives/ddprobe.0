Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CBE6EBE
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726811154; cv=none; b=CbWsEC3XlDk3co6Ba0LLX6yEu+gG+/s4lRDxKWInEGATPpn0KvlyBf6r90bnWdHnEeMaSo5pyPztUnOt9zIXAsuxvM8zMXif57POV3KGhnlDb+BWjbwYPgR/n5W0yhZfWlrZOp2Ef/u7tMOtRRVFzIoqJlnPHQVuOWriUgfGEJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726811154; c=relaxed/simple;
	bh=6fARkkZC7aYSVxzKi6RNFnDaeEbLF6pTxI0z7dyaKhE=;
	h=To:Subject:From:Message-Id:Date; b=UOkRUrypo96NbDM8/viXp8P1JA/aqhzsFRuf9EAUR/ZDK8Oj5rlg7x36OAEXCmY/+UV5MAnyq8b9mkUSaDBqKNYr1VyHhHYS5hWIo1YnK38ZmRffrQoa/kVONewLGjHMTHRwyy0cR08DDBumE9hxW1Iu/1HNpBz4pChEBxHPc9g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b3f8oH62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b3f8oH62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8CD7C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726811153;
	bh=6fARkkZC7aYSVxzKi6RNFnDaeEbLF6pTxI0z7dyaKhE=;
	h=To:Subject:From:Date:From;
	b=b3f8oH62hXIQPOWDmcEOumBuOOM3sh3LzbQw4/x+lAIYSyMgeFjynolWGruiAJzJS
	 Et+Di3IR0szOstISHk4LYvDdPjeaMWIWKOTRuDKuxTEYzMtK9xdS1wtvX7gwNi8UEy
	 3bjthjooXkTuo+/KF3RmyRU6QZ4TTNU8gqFg8mxYRlFPI6ZCrKxfL/T5fLNC5JiTPO
	 m5uOxLWqnytigSPS3uE7asGKIb3GMTh029Aac9cbPbkStcXywCJFlIHA2HTJPRdGLT
	 xl+Ye4S/o8aEAwaz2XIoY/gVmaM3zLSeusT2VGYIV4nnF0Ca1ArEBEd1MMIpBOpfIp
	 dLbClez9EfWlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9660DCF58D0
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172681115359.25071.6194462619356599206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f40e2d439eaecf8952ec78343ada388cc7bc6ace064ebf104fde33e559e90b
Date: Fri, 20 Sep 2024 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726811153
