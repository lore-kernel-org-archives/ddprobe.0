Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2303837F8C9
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781521594; cv=none; b=SYgXYxngPRmjK8Hm7OiSlUaTeycMRVwxSSbfBRz98Cbd71O/rQe8fSYvPbQuPZPrB5jgRyraOMRGBBgg93zhpG3jO6iMFGQI32MouaBRWRRdLsOOwvkuEaSyx9C+90aWR5ry84mZCiFEVafKyBrh2TUCPGcXmRNakeNbVVf5GZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781521594; c=relaxed/simple;
	bh=fSFGYueWuKY1qY7HgOtdhS/Y4WAuJ/D/2OUxgbX59zg=;
	h=To:Subject:From:Message-Id:Date; b=PTballj1/dtus8rzEr9qNW49JawN7lC2ijZAfK6C/GgGOwU3S8sDCrovJ9Iv9twGJSdbW9jNze3D8DAiRwyTwrObRUlbYa1eiOTy921shGOGKN8K+0XkYPs/RW4slKxV4AOf/4QKD5QrYwIETpDwrhK0xKpGRTdGEwX0qked4MU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Aj5kyG48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Aj5kyG48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEED0C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781521593;
	bh=fSFGYueWuKY1qY7HgOtdhS/Y4WAuJ/D/2OUxgbX59zg=;
	h=To:Subject:From:Date:From;
	b=Aj5kyG48L7RxbQVwX9y5wwxxJajgKKIapq/lx/RJpiwk3WdOvSzzNk/efh8giyLLX
	 T8Jm4muWSX78kW+D+8hRHtDx5GJis+4SPdARVlBSUObsnX+bHecQxFsOmuWVODD7ZA
	 jcaVmJvqwY6nXEmrl3uDolGMIUBCCOhxEau4s43QLZiryB7ijUYnmG+K5fVcn/lJk0
	 KFqNWqITSWIPZDS5Kd4lS9lV4Af9xBTqSWwduGzt8hMD0qU4j24+8KfnSswqqVT1MI
	 IbsKTxez0SzJm73dBa7HfiRuKNNMfw2P63EF5dRI+8p4vV3zWIfFQ2MVhqyc5RWTif
	 s0l5mpAXxjlPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3E2CD98C7
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178152159370.22713.16045054063768006559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cc84d7d3f1770826daa26a3fb72c78551b46708106f88a0dfb29db87f771223
Date: Mon, 15 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781521593
