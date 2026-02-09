Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0CA242D6C
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770605034; cv=none; b=Zji0qaLzvsQYPUragMQ3efZbKCq01+/SUqDqyciKZpTqured6k5VNgQ+YvTQoHeZ7CNj/Qug1vjYxKIeD/JPoSuq3IfB53Zrce8W+2G/6tPouRnEyoU6lPi0K2eoJZfQZcNDYwjaux0uD1tnhiDOkdn0Ics7hOut32U/Jx70hWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770605034; c=relaxed/simple;
	bh=H0HgpGXAoLEgPF79MgnP0VhRYU3nrRrDDHApyPY3h/4=;
	h=To:Subject:From:Message-Id:Date; b=X3chMBW0xQnbXOjeSJJhrXpXCQd5pT6m+kfaQtGzpKDCeezOLeQ+pQfiu23t6hXWykjXJnjkyx8/aX+5GOV8tCuRssPcDcvAT66ODHuvhC99T278fw3lNAf00hzH+lwgT3hk1UyPS5PJsmWKWnrnznrx0MJ0NoJP7yN0P39sDmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmAhOb51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmAhOb51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18C0C19421
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770605033;
	bh=H0HgpGXAoLEgPF79MgnP0VhRYU3nrRrDDHApyPY3h/4=;
	h=To:Subject:From:Date:From;
	b=pmAhOb51urXm7oeOIanoRw0gOb4tsKl3Wnujb14smwn2eA9CLUNq3lvMI3TEJrelb
	 +PKLrkQk+pOr6P4xZcD7qszs3fNYemZcN0DfMAYwC+D7c6QIcyyEsZx4Wrlbvkt9xr
	 p63Wkbj/Jnv4r7XUFvrDsEk8cYtTUsqFK7GuOC/rhWRk1lRu9YbCYsCiaiKlucEFwz
	 eRRGGpu5G3Cg/u4MkzfqMrkQcrUhAoIDp7M9FUExqMMigCDcoBDT/6gpe5QMRwJFMM
	 gJoEjv+sEncyTogE9s3ryzmrAb4riEn9Xz37/Mj4c5yOR2u4yDTqVWkTp/cwhc048h
	 bN6L7jW/1p4Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A07AEF06ED
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 02:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177060503360.25274.737208332554609493.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 317f4991802839cb2135ed2538adf0c92b2d9f4d744e0cc61e7055c0c5f6269a
Date: Mon, 09 Feb 2026 02:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770605033
