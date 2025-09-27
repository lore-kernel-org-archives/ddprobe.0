Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 283B11547F2
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758934194; cv=none; b=AF0+CScdRPCnRrBxwEyfAvspoJOFl6VtldeQggaKzr9dD6hYXyyplvty1gCgRKUDqsTZ6LHWQo1/vfKRlEoLOrBZIGzwOQe4wbfxnD4hIG89VWJariUwZPc3RQhN8RHOKRBh7T4i8QcHmksC1zuBiSxC77c87R1Al4ORm4etFRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758934194; c=relaxed/simple;
	bh=XGM1GYnGtS+Z04JrJ57BuNOv2HgCI6z3y0LOeEN4UAI=;
	h=To:Subject:From:Message-Id:Date; b=P4JsGxo+Rx6puUslVRx61I/TjJbqdlAjjgbcgkDWEBa/tATp7/epzwVP/VJfCFbN2ktlcZ3rX1wUcbb4gB78QAv7AW7BzAYrBsHJe3fYEi3suxTH44y0TufBNPtedCsjAm692AmDefpxNyCmLc1wf2UXFpqzwy+ZG3qyefNUYro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PcDTDNGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PcDTDNGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B58C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758934193;
	bh=XGM1GYnGtS+Z04JrJ57BuNOv2HgCI6z3y0LOeEN4UAI=;
	h=To:Subject:From:Date:From;
	b=PcDTDNGmgiFZYv+TFg3mVjNgppWaFVca38m3sEcWr3pjxPKsnQrkE4aibyKev/MqO
	 wWhABTPIOb/BV7XZRNBnEuzB5/PF8jqCzW0ginaHTdUBu3ZBcya/w8hPwvsZaxXK1B
	 cU8IzcYroig6kycs9H6Qriqi5gYznRq1l3eLjncVuLrCUfodQpEmu0pC9SuBnBdLgd
	 TH2+oNx0ozPncuroS8dYxlkW6R52tS4iSE4Ib3g69fmlztiJxL3eRYnkP8H8JrV58A
	 KBOfptu2wZMz/G6mz8pFaSOKlj0Hw5dwRFr+ZHjJtVpTjh4E1QO8F0bMbsqJ+A6/ZT
	 kOv+IOFA5pCxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A5DCAC5BB
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175893419357.3066.9344707227566910050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fb59957f7c042e7a45be1a5b8d24b8448263ae051c3693895c50ac8ede62708
Date: Sat, 27 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758934193
