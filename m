Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D94463FD4
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748179193; cv=none; b=W13FLEhi3hPujXGktQranPfUpdeYF5Dt59SbrCvy7ePlhReZa5eTrLQ402vE7JLJzM/rjrKrSuZ3pOrsZMvFTACJMCaScZ3EFmqU8P9J0vJRsW7y0zllgOnP72GMfgrYAT4fFvfU0s3Wh1bkay+7HBWMRuMxVE01UdHTbT+s0Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748179193; c=relaxed/simple;
	bh=5L3wU2ZJ4yCgCWotYlHcXcGwZkopRTmlta9EL4mR844=;
	h=To:Subject:From:Message-Id:Date; b=rDSOGYdh+Um7b3/an4MSZ4gG5GPXBKmHFZKxKA6Dhnupa2yjR2IC7R/7BmeKDuH1YCtoiJijCbmPfpv2xE7DQMAnUudF1I0wN7jCIT+KcwSUiaeBz9MSnQfgeT5GlCQOqql3IyhAf4weBq6gfe/lZrbGaSzrQ+tFdEEUnLgXGs4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txpj9JbK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txpj9JbK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5580C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748179193;
	bh=5L3wU2ZJ4yCgCWotYlHcXcGwZkopRTmlta9EL4mR844=;
	h=To:Subject:From:Date:From;
	b=txpj9JbKJCK5LxzlJbE+3fZBUyi6bxBpGOwo2KJsfD4Y2ckrCut/aDxzK3tGGfMLP
	 R1H7kcMP+ERK/AJm+0R+vnk4NdKawn0wr1UL9bn9S+ht6G4mW/s4vC2IvFw2vbYsgu
	 tZJGp59HobGtKrFuMYStF9WN8K1oFxW22el/KHGOiaI38t2E7F8C3cu40ok2kuaLJl
	 A3fwEsJywz+B8tF1CJ+f4FXU7QYin5acc73CT0Wt7/r7XqpH+5LJjYNGtzbHw7r266
	 rv2EKZGd6ncel6v7DjkXZDu3xXMEYuAVj1sZMk+3btSFvQXUrH66yjehcMtmSrCG2N
	 SSrgr3SfzfH9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911B0C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 13:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817919357.25231.3159322591407706578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5a77b9ab2714dc680a26b7cfd75df015a4500f2f71279aad8de85196ce3d530
Date: Sun, 25 May 2025 13:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748179193
