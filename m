Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD917482
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747883994; cv=none; b=BMZAFLBlpNyW3iuZGitFQV2ckHRJe6Qu5nS47FYn/JtCGJulRDkdq57SnT9cz7+Ose6GJDjF57VY/ZBHDz2rEJ7UwML6RoFvVKqRMSiGyceLzSdCVLv7jxXxYntHx4tLgJPEo2rP4jtm/+3yF7d6BwRYtQelTH1+A3Q+f4V2Qzo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747883994; c=relaxed/simple;
	bh=A7HPthN4R5iX9d8bpqPsUyKP0TkvgoDLreR2MCYaDQQ=;
	h=To:Subject:From:Message-Id:Date; b=FYYWgIpOm6cYRZmfAd+nEvspaFAV363IFBs3lWkLRMZ9HWg9OPY2a1+zIFG5KcZkAtgsE+53444tbuzj2emcK8l7kxRjVUxCM61WGE4nhYPePfTMmB75py6yR69pnyHA0z7NFh8yuEFaZmnU3Q5Y2OQb948/CuZgeVDKPO+UfrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RON53SLo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RON53SLo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB137C4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747883993;
	bh=A7HPthN4R5iX9d8bpqPsUyKP0TkvgoDLreR2MCYaDQQ=;
	h=To:Subject:From:Date:From;
	b=RON53SLoKEqK08ytzn51BMof4eIvs7lvT9Eb2iju3YpmOHoZ3WEjA8ksqJAqnBuvR
	 R1+C238DTKSv4P7RjRUZoNqZuCZ6R7aEJCvB+psO4JarKxLcx8/B2hHpWsvPfrVKhY
	 pt8F6Ndi/wjRfgQyhivFgUS8nHHtWWLsbkCPronikPZzGisky1/bBuyMpv/XqHh0IP
	 ESc5ZArfeBrj2qEek1Lsu6v7TJ+L3nU9Yswh13/DFupB39y5hRThdbGgpofTV0B1AP
	 RqICEUdh+Ybixandg4DdQDTHmaR3Ivl3VZGaBGheUqN430kUp6nTQ5b+LY0fInob+o
	 O2BTD4CKmcX+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F29C54E71
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174788399360.19465.3139942551054643089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316ce980efbc778151ac2b062a173a4d1fdb85d1f6c01be00087162f1fc77640
Date: Thu, 22 May 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747883993
