Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216C523EA8A
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777588654; cv=none; b=sNtxnPQUdpLhpVqkwmhUDXkK/gRfC1g5vdqTQ7iN0pDDxXHuf3DQw/2HY1p9IFvEHwLyOahjkjR6/aATRg8AUllZ3Cj8NMJqSutEj8g7VRZeqYrDs5BmPFzAU/fOGitmNrtcaHsuSZszKScjYR2BpLSwaaycaXN+oJcQOKwsjg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777588654; c=relaxed/simple;
	bh=u0qswQBSTkrlnpFutnpr792DDFOYarQFwSeeiuKLyAA=;
	h=To:Subject:From:Message-Id:Date; b=fru+WYzIgtSRB47jb06oVEdZWB1bgomPoygry4kQq3wjjpx4tTBj0cybEdeYwvWtSKP6+Qj4ePKmojt7UmONHhrTc0CJ4hXUPhxtO4VngILEXD5rILBHb/NPYNmdzJsmCz2Wdi4xNMHjcXzw+uoxWIyG6kMl+xxRo0flbdBaA8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o1xKJF2J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o1xKJF2J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77E1C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777588653;
	bh=u0qswQBSTkrlnpFutnpr792DDFOYarQFwSeeiuKLyAA=;
	h=To:Subject:From:Date:From;
	b=o1xKJF2JhXds6wEpj0KHqlTg+zUxm5hwlHDjXDQtJpIENW3lqHygFvQp4e5CNUtKX
	 hHg5C/hSxzVgxMD9Ec8RQM6lpLzAcFC+mtfq7Ry3+n/S6wOWu56slQ3kni0Ay7ooV+
	 aT6KsYlxubyBakAzvywhOlIYbT0cPMi9gZ92Xd3AmemlYByu0g8TkVyyxxbp+7ceFc
	 wchOTnxRp/4B5hyN3lDFFbls3AQ4T4fNb64yg2iBG1n83vW2MK7CmewmXJkPI+9T7B
	 oXMXW4JAjl4Qbw5eMfme5Gh1tGP1+NCOAu5vQYTRChkQkCezOMp9aB+QbqbhWj4pOZ
	 hY+jjy5aBzBlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB2CD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 22:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758865368.8787.128626033935453254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33a8243bd64e37f9a94285d128451d8f8dbba44b552412d586a6fbd3a1b69f2a
Date: Thu, 30 Apr 2026 22:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777588653
