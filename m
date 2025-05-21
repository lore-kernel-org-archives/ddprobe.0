Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BA7223DDB
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747843194; cv=none; b=PKTTCofrdUOhS8sLda9L/wSUnZNorkvexIEkM34ynSUPpjpwl1L2/9zNOeRk1THcWO8GeYoiNersaFh0CVgZwJf9lZpvRTFL/AyBosjbYcvvNk2COF8wJcCGUBvFF0FYREK0ItvOxEXqaSR58INuZsI1YEvkjhLnbe4XHOGVuyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747843194; c=relaxed/simple;
	bh=MzIT0/MOjx8juTL33OJXkElaagQ8TYMaem37FPkwakc=;
	h=To:Subject:From:Message-Id:Date; b=L0GucRkRcsHJcFLWURt5dJ/2SdukjlBczXVBQd2Cezv7RvEGyWBI++A9XXYhnzZiUR1kLjM83Xz9QHrqOKGdSnsUt+K5+t/ptzeBdqaGunZ28uH+zcYRDpnTwj+gjdGE6NEZJdtNL1PYMKKgR42oV3oxWtz4nqhs2bsew9KhFgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmhLcY/X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmhLcY/X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2FCEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747843193;
	bh=MzIT0/MOjx8juTL33OJXkElaagQ8TYMaem37FPkwakc=;
	h=To:Subject:From:Date:From;
	b=CmhLcY/XQJ9u8ka/WPx9S/+CRYOxzFYno04Bvbv5IBePTPVC7mA+ByqhhOhJl0XLZ
	 ln52k9pZq9wN3fvdg3tHQsRZJNaexV+bBn0D1jMnTC0Z49e+kykriI3RPmiffUhcfv
	 MmdEIyeOGH6v3XEgjHFnmXWNdxeNQvqnl1oivHOTfdfbtk2YPPo7vhlvCIC4HMKITw
	 3dL2Ji+kKO3pYdoGoaSYfQ6otMTrZddypc0/iANSN11favYK1nMcu9y4Yaxetogh9y
	 NqGT6G8+S+2H9kim98Tgug7uVd42C16m0ZJPGq5tpI6EtY5Iuu7XTRvqe4iD1XN+Ke
	 bvnuhXQ1XTDIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC52C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174784319357.24765.9525098570788546398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ba8475c7945dde6a3b489db4b0698fad5084e6d4ba4858ed746eaf8c2de4819
Date: Wed, 21 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747843193
