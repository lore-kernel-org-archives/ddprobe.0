Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D23F1DF25A
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748549394; cv=none; b=C9OC8xb8NzGnlBix+u03tKq73tRICWCjn/jobkRj5A8gA8LWZz6mT8CHIZCzdWGscArKGzVgH1+T1Cau4W6Dn857NMDrSTV/PeEMXOA9tGMwfRSHXpDkr9f6Cz+FUDpSc5YtQpSUhXFb4oSV6bxsv5JRX5Cm4Kh6zsEejtUhawc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748549394; c=relaxed/simple;
	bh=n2ljTfYcPzHH4nlmtADWYfnPTtoTm/UG+8lBihaozCY=;
	h=To:Subject:From:Message-Id:Date; b=FFNpkBvkGTsVs8WqpqxNdedPPvDWhuowYOnlgMfFhR5UE2MryRTQNPlv1qBUahwed0Lqb/iWw403lkySReFW16U4g6mngTIp2EW2vPbBTHGfwe+WE4UpeH1Qr7ONn/2aSBVwBDwN5zbAHxGWF/6D6ydO3iyJ9d6Jq4jzQ8vLqww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIHj7DeQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIHj7DeQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1041C4CEEE
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748549393;
	bh=n2ljTfYcPzHH4nlmtADWYfnPTtoTm/UG+8lBihaozCY=;
	h=To:Subject:From:Date:From;
	b=jIHj7DeQX3vhwnnusY01+jzHffgZFs82FWpGNBl7F18eo5sq62oNiFcnkyJDjqBuz
	 Zwu+Q8SsotAl2OH+XL3XIn9FDfRPBmIPU6b0LqQyhtHV8cT6wGsHIPRs4EaF76VB8E
	 PuN9j+JIJ1YSn5r0iJsA8q7aBclGWmqbGiYTQffTwsOCkPev6+vuVqUANwCGyL91OB
	 mL+rszDcGTz5P0t2jPSdyyKB7xe6LU+qSkGlDlXqFZ4RVRwMgoo3MrLYnuuFQA0WD+
	 3ARdFBTDu7QbccSkFjXKHNeUgAlSTXNKiMTeaWFIpLnWbwlgi3bg29SQr7wv4hLCa4
	 QiY63dJ92r3mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C02C5AD49
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854939358.20055.9614076128750336209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9feb743f1cc6fc50bfa35aa6083507eba24604fadc713fe85bd0923cc6bda60
Date: Thu, 29 May 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748549393
