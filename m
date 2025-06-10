Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21A001F92E
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749571194; cv=none; b=iLSHtnmnHAvi1nMOUFHeBkUuMG2Ib9z+5OlL/iT48BtO7zVLYibfYkuLT+5njnN6bElWMU9WFF8MQW5W7LpjeEgFkheymvFSqcG98ES/OZQV/zDWnvwLv9Fz9nOz0MnhX0DThlW8a1txlDDxt++WzNjHnBrFbikwSXaYlYAAb8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749571194; c=relaxed/simple;
	bh=Xn1LCTalaCkGlsaJcaGOUSWFjtuT6KPaXoYvSAonghg=;
	h=To:Subject:From:Message-Id:Date; b=U69LWM7Dx73JqZRk7KCcezxLm/37r/xenxRLPsZUByrX2KXHIC6NvnZac8eClDBnDa/YTnQm82WS0yJEf4eaOhZEBFLK9hAw1jko8N9XcD7j0phyXq2UxDYUGQjv3YhGixE8AAql4GoY0/AplgW0JJx0rSMsxy4JVqPZp+iMG8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EBhJxswn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EBhJxswn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4506C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749571193;
	bh=Xn1LCTalaCkGlsaJcaGOUSWFjtuT6KPaXoYvSAonghg=;
	h=To:Subject:From:Date:From;
	b=EBhJxswnLZQiVthnc/N+UAlALlAoOrLSLTds5DqBGLYRGX4nVSz1RLzVSeNmo+Lc3
	 BBcGJBYClt+FW0yRmzJquDjLP5JgWw31McqpQEfbDwrQqShP+u1Rykr1gtT3K5UFLE
	 /V8krFANVVXb0yaGPdzzof6ieg5UfCfr93ARpHXRqq6/RUdvHLyWnXt6Yd2jvPlPzt
	 w/+nZDnusbVz19HoZneV3ZDjex4762SX08GuQ0iUIC9ipT4Dj42NENEApZ7Fqcsl7v
	 +EwfWq65D9UQ0+bo6ke7unhJQzXx1jbsMGDL6UHLzVMngVZP9p4VC2L/4rxfES7Shg
	 ThH6Xit1Uogow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F93DC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957119357.5389.11408862306017002847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03c139a0c15b8801c916680d65c3cb5b1dd0f0cb869d4194060027dd0dfa4911
Date: Tue, 10 Jun 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749571193
