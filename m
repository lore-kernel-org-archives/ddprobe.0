Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5849748F85C
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790056234; cv=none; b=s5zKHgeYNRShf6SykcD+vn/mIU/4zbKngzcgMxHLezsId+B4s+/DQqv1BR9kqagMpwqyra3G1DY4aSqc37ZD+SDUemX4TjVPAIcWOUnmm6/XoLFiHN8WbH5w+WxmIT96jOJiXbYWCkcrIot6zg00X3jRUQtnIcGlLe46PtoNXaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790056234; c=relaxed/simple;
	bh=PCIOAMaUH45DAw34utOydSlkVkVxsMfTd2X6AxNk1KY=;
	h=To:Subject:From:Message-Id:Date; b=MPJ8NU+M/5ytH0Mbx4XQL7zs8dNWDIw2JPLDhnvPcUE4CzXNo+QXmq9Xu+XlshVQvb+5UPhaPy+1XG7/8e367Z4mCKPv6MfW9H41JuvuB+3r4PcOk5QgRIH4DpFJUsok8e8iyGQjarjzLpj2TdUYfP7pZgD1t868Cxyeq55vaOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEwETCjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEwETCjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A94C2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790056233;
	bh=PCIOAMaUH45DAw34utOydSlkVkVxsMfTd2X6AxNk1KY=;
	h=To:Subject:From:Date:From;
	b=ZEwETCjZjCyMWI0Pq4YRuMV2HKBOSUphuurTgcTjqrL1+pl8p58i3U9nJc6WDx6jE
	 zZAG2rAEyOpnrvhaf1jEM1sc3ph2nc8vSpV2di31dEOWtHpvc5ALSLaxKSUocEMvVn
	 bn2SbZ6x2H5RjimqGKGTcmHVTaMFo5+4owNKyUhGQw6qoXnTBQMXjt1nMy/DEsgpXp
	 5rf90vbaPQeIvsq78fYwx4q6rBjEd74suedYppui4I4w9TVJOw1wh9Ro7IWM+DFujb
	 gAb+kVrIU3v2VBUcD7Y15IOfNc+MrqeXGmB/4EkZPy38iuKrkKbTuJJzwaJP0Fsv11
	 elpIkLHX0H6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1BF3C98304
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179005623369.5639.10148832717153223594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d928835223772b4881aa8630345b3476f52726e83fb33623e654fd02b46f856e
Date: Tue, 22 Sep 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790056233
