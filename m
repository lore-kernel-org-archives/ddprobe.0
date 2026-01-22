Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A810531AAAA
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769061834; cv=none; b=ljCEH3fAwrSM/+/nmF/YvifyByBxFJvdTqu7HwnJN19miNqRISuiCVPdyx6H2dhowH0pgeVJtUckfta2VKWYQItZ10sY46ogOw7nxCXIw5lsrv0UuQNQFFYmh5Z/6CCC0cPLRZWOP/7IJ+BcBlaoLBxhGSjRmjYyi2+r/mNd5JY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769061834; c=relaxed/simple;
	bh=sQKNMz6c3BF2XWJRlLcf3I5JaXTgyLKfnE6XCPzxswo=;
	h=To:Subject:From:Message-Id:Date; b=V/LLD55P/1rqEkAg4p8QcrScBL2IyE7cgIK3qJIAtDvnb/ypqov4f/+hRyttd/LRx5iJvDyl0d2EdLLuoIfvK1/L/2hwOVHN/9/0w/UiRzbqhRvXuJqKr9e6jjB1AlMZ2cbPj1Wdb+KhVKsy8nSER6bwrOoDbRr3HH3gVzx+mM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fUebJhCZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fUebJhCZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA72BC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769061833;
	bh=sQKNMz6c3BF2XWJRlLcf3I5JaXTgyLKfnE6XCPzxswo=;
	h=To:Subject:From:Date:From;
	b=fUebJhCZQuESkO5GO/zbngtOatNKasJt1EfGU4cVnihXt1r/aZFhieTw/5pu+u1rr
	 F/C5GbBlNiMQ2iv3FlhhNda/V0s6xpvMFzVmMnA9889l1sTtdWZOwtc0FmkMdQoeVE
	 uvtIsd2jjkZFPJtB1gX7MO2CvXfEbjXhUXM0rNQmmWlXMjqe/QZt6hFaifGSBENDwt
	 oRsCc2vLnWc+ZYELEioiIE9vmuxoytwke/G6/DQs89/MnkgQA7vd5nW3VhNSesblJO
	 G0KtIbt9RTKhzSVgqtU052dIZzzBdeYr3P3zOpMJImZmwMXiaYbrnRQ0MiJYQgGX02
	 X6tEP53Rhx9Dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E8BC44500
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176906183360.7369.877165577900300156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2ec107babcfcaac973497f088a77baea0a871f73c10065610e732a13592c8524
Date: Thu, 22 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769061833
