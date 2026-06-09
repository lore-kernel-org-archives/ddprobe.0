Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3D94D8CE
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780988074; cv=none; b=KoVASPTJH3sRizNZhg/nf8+R8505mlpkoM8lPdvRe0yOhlLm6pKeSP0t5mRqBLU0usKoHICuXukiWSlJr/GhX+d0wV76GgFBNwccX3iT6ONIDg2F3/TADikuTzl3v2vJc0XTdbKqhSrkc0sGO8Q2eWh9k2VB8FG1tYQqXWDt+ic=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780988074; c=relaxed/simple;
	bh=aW/nRACU0rQHlLqZh82gHJphJ7rNqcbjWnTxqXoHLNM=;
	h=To:Subject:From:Message-Id:Date; b=K5GolsBbRAEWYKC/iU71YArozx3pxCRTj/d1mUg1uHTSL7OqW+hGIqtZ4SwfZJ5Yi40Ma6L4qXN8b4NKphKmpFc9s8U057wTcq4PbXgtRprFybwhnmJt5sEiMXH1dJbdpTmFvqfO6mLJdcytUjKRK8Am23GzwqUEqFy4TeTJme4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aRN0JJuD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aRN0JJuD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD079C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780988073;
	bh=aW/nRACU0rQHlLqZh82gHJphJ7rNqcbjWnTxqXoHLNM=;
	h=To:Subject:From:Date:From;
	b=aRN0JJuD2Zu6UCroXKBoRqPVhodwsstpXflJ5SEl7c5QvvlRL1ABNKMtbMeQdccR1
	 cHM0u3bfTpuZc/CnXSjy4LNpqb3oI5elNUaeQffnM7a9MG1qDrwTkPuRotoVt3Yek8
	 iQww4Y6sgv06+3vwWATW55PhBobT4RsWJ6HPp76x0xxn59eO2KScQQiLiSBqFjqXdX
	 Q6WsmZxirJ7gkf4wTn3qJ9aotxLhKKURdvKZ4JTD0gsrQuGkTS85GKy1s7KoqiCLUg
	 XOwaKIumbvjFOmdPrv26PYGvCwjwUJReqrKmzMJyVM6UJjQzvTydPp8WsZYqV4wCSt
	 l7GCwbskugxvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD976CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 06:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098807373.8748.2983506894169638473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a9fc8a32f14f1a8cf06db31a401cf19be0407cab14a62fbe92e15c426440806
Date: Tue, 09 Jun 2026 06:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780988073
