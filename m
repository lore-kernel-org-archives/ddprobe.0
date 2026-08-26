Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40DCE3B840E
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787733634; cv=none; b=gNE2zfJ/D7swZDZKvxas/f8dIH0WFk8Kc/E/iJiuchitbNH3oLVY/RvJIgZM2ib6E87qKbkxt3tHp9kdc1bQC8H5iFZWCs5QQl5cs2uEYW+CpussYlhpO205QXZ53YotYkAp6LSbILOUXBNja2l5aVFlwo5hzusHLgeBmuFZVLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787733634; c=relaxed/simple;
	bh=MkdClWBllA2Yw+QYir5CHXezL5O+RMFTYSmP2vvLcFg=;
	h=To:Subject:From:Message-Id:Date; b=gtfRJj9MNOko+Ik6sr0tUmNagg5ZObEDDCE1p7cBT34bQsOfvBcdzTD2NyHy/lMjjEvDmzBnreOf1HVVv8F0mqGluuBnt77/+T4YQCPZDW+6YbCpKoR81XOCjCFlLlEokJOCAgbO1LVeKTdcZbBqRui7h2rcukqUlycJ3NgD6TQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jHyFO1UW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jHyFO1UW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C71C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787733633;
	bh=MkdClWBllA2Yw+QYir5CHXezL5O+RMFTYSmP2vvLcFg=;
	h=To:Subject:From:Date:From;
	b=jHyFO1UWDk1hZ+Apq7B9P9RkOlkk3f+ZPAu8zzzbw02d8902CzQ5+HgGm7g6vFMzN
	 nIgDxauao81K4GyJAEi2v1nEUKPuBKcFGXdiBB6Rc2olvGLztdxc8cODSVfdvvEMnz
	 lRULdo9SHbBgM+UjwRabC1LtUaQDJighNSNv3++NFmvy5Wr7n3cL9jTzfA+ZysbA6U
	 d59SxTRzqJ00q8ANa8UEyNjYlP3ER/Udo6npGkbdv0TfdmjGL9CDiOsliAX6L2c7jD
	 dBtnVMKIi/shVUyF4NjOFCgEo0Z21KGPfX/n4PXSPXARyAh7yu8dYVlhwfdp2/Apna
	 A5s/nV8Kfkj3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF1FC61DC2
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773363370.12258.2313035675984781560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e68649c5e178428f530bf779b22f4de905cee6a7c0718150b2f6a542b1a3ec23
Date: Wed, 26 Aug 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787733633
