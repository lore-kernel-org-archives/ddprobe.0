Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461B95B1EB
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779523354; cv=none; b=p4VqrzOfeVKdjS4cJA2nQ5zcG/dqtRcLG3F4U/UnaC28Ygq0xAPR7jiLt/ZeBBzDnqxocL4u6e8h6uswpQWNZtXuOtQwwk25CPDGdxyJ7WFQPQV93qVmjg6iWabu+KVXbIn2nvuab6x6cgIZHCzKp/TDoEpFJ475yUhy0wqL0oA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779523354; c=relaxed/simple;
	bh=bUXrgPIIex0VLEPj8cQ/8OLyTAcitn/J6RL1RsEUnA4=;
	h=To:Subject:From:Message-Id:Date; b=hIxHZkl9qkN94mX/430bZse5lXiiMNXPEyU2+7yBLg8L+k1roH7mUQq4iTatWmuBXkcjeCLSOY0vN3mnTDlJwZzJ5vQxXfVXcy0L/daqh4sLDKhCa1FhcSfGdmhkT8Sh1qza2z35FcnlusJLRQ5EtBp8rOX0BJ8S7p/t/Mc66cc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FivgMdhS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FivgMdhS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD486C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779523353;
	bh=bUXrgPIIex0VLEPj8cQ/8OLyTAcitn/J6RL1RsEUnA4=;
	h=To:Subject:From:Date:From;
	b=FivgMdhStpo+tGKhzS7MjKnS3gi70pkz0Gepwv/SPgBY0DoYXWEOxbRaY4m9iPB6R
	 OIziSdzBf9JlVZ4TjiQDbViCKCRer347v6Xcbp4uHoSLi+gQZtGTwEd9QBy0Ilyras
	 YTekCPA42IkpvxWsF4DweX1nALRA0s+7C3f8Tv3DJsCkchrdUYs66nBXyUOQYb6LFQ
	 mF1g+wmf/4fhQ0dOZ8SqVXpW3tbSxOMbcV8q6yfWk3wKY63AJEghNm/YVeCEjG9VXE
	 s1MRg+ORl7jxFTWaWQ4m0wO8iPUpv3o3CEf6qvkMSsRhriYTdPd6AEVvyeEbRmRhfZ
	 ZP3vmtFeG+h0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41A4CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 08:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177952335370.31277.3911456075940835798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d6eea610a78ccfd6ee110c068543a68b24aaf46b1d5ed92f3d8da44bbfd0154
Date: Sat, 23 May 2026 08:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779523353
