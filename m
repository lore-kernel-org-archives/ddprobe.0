Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319FB63B9
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759636194; cv=none; b=hwOX0+smeubw8eNXHLeYRY0/ndwJyk+JAhWaB/r8h3tN14PMhXiE9NZPs0ZmD2DIrcfHtfkrvzn3X9OYJNoRln4tNeJvvNEbQIVlZkQd+9py5y+hqF/5nhxI6z+CrPHx2iLvIyxFQd4nQa5oV0fLhhD+V33Q+64Zdzl9qKQCnuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759636194; c=relaxed/simple;
	bh=72cApZfE+puivZMoTCWoLN2eo0xnXcKCfZpTrNqAYOU=;
	h=To:Subject:From:Message-Id:Date; b=OvFd4pX+1oWjPxZ0s0zeIf/i9roVF/nVdMNKxILBvntUwYenThVnu7k1fTK7N9P1fHx2JraszkdPSEsshhqtHdUJcej+8mSv63p7n5Gc0Sj4FfYvFTOwPhBWdfpwkXvZmZt4rxiHqQwLkryxwuuakmJI/69OQAyHa3G51Z7km00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BgeCWqy4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BgeCWqy4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A67B7C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759636193;
	bh=72cApZfE+puivZMoTCWoLN2eo0xnXcKCfZpTrNqAYOU=;
	h=To:Subject:From:Date:From;
	b=BgeCWqy4Ij+G4vft1kM7lzyStHROILCwbxuzITur3gF9NxFEsbaC5G9n02QvTpSet
	 7VwJ47n8aMJOEJJ2LPzNQjCceT7+lun1SgtZvilVjV73ZpaxWPAYSzgWlY9Tddv/R0
	 KFAxRrDTw5R7o8O2QdXOhpgCRNQi+axowPDAftvvqN2Ws0YxfqZMxjr5j8RMgW9Hi6
	 HTSxcwM5Zt031Ih3SRx7BrApDD7rFpUNIaub2ZLN7YMJFgAFNujYY4f6S7IL3wT17A
	 MVOaFgjt/X3jUh8yq5wsXld+RVeZzlPC0ENvGHEc6qPcVlnrQXUbrVs1pPWgFblpNt
	 W4ZAq9nrYAu7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E98CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 03:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175963619357.32684.7546970801659684934.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40ffffc36c43bc3703b1b85b0361478f7265718bf8833c319822ba95f953eef0
Date: Sun, 05 Oct 2025 03:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759636193
