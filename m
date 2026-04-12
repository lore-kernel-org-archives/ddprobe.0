Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 173F417C21C
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775998054; cv=none; b=clPP8aKpRgDGomc6o6XascJvLbqbQwZLzcs23R6Kgpk4r5FsOdf1OlUwTNKzn2T7oe8I/cFDxdakvD5XxzVTsmKZO629UFWICSBOPhlC/WFIQFOin+2K3GBBGBCTIb5v5RBqxdZ5JicMqZnqINESE6zbHbHxT2z5OrGUD6QPZOc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775998054; c=relaxed/simple;
	bh=mxCfZICuDx4y6B5KGKBiaIFVHr3W7sPRYvq0Solja5I=;
	h=To:Subject:From:Message-Id:Date; b=GXuk+uY6B6X8m/3/GLcSNmCHOyTC37R2CB56IqBY+tZaPxPGtqYKFylKFdv6DdFt7m8MO/o/sO8JHXC89IWLVhrqwJCOxklIp0j9awe9eD0iRBhKq9OxpPJTlVPo07PT21nxZaaxwtCivjxHShESZ2zhJ7lLNSCyXfiR4qgERqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qqhn3szq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qqhn3szq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE586C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775998053;
	bh=mxCfZICuDx4y6B5KGKBiaIFVHr3W7sPRYvq0Solja5I=;
	h=To:Subject:From:Date:From;
	b=Qqhn3szq+sqsY8s0sXYNtSX+I/c8YXN0OF3pQUteACkZc2kJHyUrh7b3xeMw2I4rz
	 wAdNC7cS5fi5TsbLeoho1TvT7fKQKpuRYuQfMj+Sqi+7+7Efzj3Z8NTBfQ5QI0WhIV
	 ZXd3Z4W+ArKBUp8iIz0NWvxYX2u7QVXPgNFx0K8h9KeGQ3mGh7S+MeYfu/WLVIhqjF
	 ufNyGiwCTaQ/8TQ4gyW0TcwACIk5NKinbgSHGS0sPFCPk0CMfEYO+mvxUqZZmbLAHW
	 DeHngUwVzYt7B5/wERbK/Tv0tgNFMohBkdZ3z5HwG9Q+Nfi12pKVT1I98XpmmXe4Yh
	 Q0z5Ynz83+Zeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB621E937E3
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 12:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177599805369.25882.14290696472356487944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c44b423dd6472aad69373d6a444b9518843c62546d70a1cb10381ee0ce8a4a1
Date: Sun, 12 Apr 2026 12:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775998053
