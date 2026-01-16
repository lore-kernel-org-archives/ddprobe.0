Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6A761E0E08
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768549434; cv=none; b=ENM+9l2VeA7ALy0hw/aVcxdCYq2nAEVzOgAcDuhG5I5P8ikEfD8MtiyDvoCrBKkAJiqhRDUygW6QcmDtue1+MhhE+U8K12L4JIwdRIeA4hp1CFlqnGGlIXjpsKn4WGKd8i4j80vhMdPlMq2I2lt5ksSS8WRzyFi9LJ/FGyPyi84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768549434; c=relaxed/simple;
	bh=B7JYOlW3d72XaaecPOYySx/Yg5y4KQRTizmQW6xAPro=;
	h=To:Subject:From:Message-Id:Date; b=g2CHwU1T5KWrTSAFoSSk7PFLT7mfzc+a67m73iwHA35gGKgDp08vL8WycuVxgVZPS5b1H66u5PRRTr5sD1HJIg7aBwhvQPdHy/QsCqKSZRudg0Yj5eDZmcQa5626wZdaNaxzGs1+UrsGDYrgac2S7k1gXbizaiutgZR59rtEFBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YAsJlkaJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YAsJlkaJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EDFFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768549433;
	bh=B7JYOlW3d72XaaecPOYySx/Yg5y4KQRTizmQW6xAPro=;
	h=To:Subject:From:Date:From;
	b=YAsJlkaJncazQ1dI7dJrFnD2QBydE3nVjT6EV3EGv+63LJu85yrZeUQOUjG5seA8p
	 T+zLnMHc27Q6p+IH2j+fNDGDc/Xl1WhpuDUrkTWt+2vRsurgs0kXvxSNMHXplAaomQ
	 Qps6Ia10cYhFzE9DFnFNoLh49pk5yX4/8X5AFymcQGBnpBVKeCWHF0iPSxY4wVDZVH
	 l8Ol7d8l1xtd8ix1FhAvkg7pMibr1n1llBBBh6DImLUq+OPNKo6UX/bUujQHSMLlXC
	 lneyR6VQcjkXBz4ykTp6HOTZ7pgtN5zLgMwW7nNgyPcHi4wJQj7mD812m+ttk4QTJs
	 K/Fz7kRcBShWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB1ED4A60A
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854943357.29637.3789562592121505959.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d86d68813b02c2139edb557a31cb540d044de40425f793489d0ad523ca5b1292
Date: Fri, 16 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768549433
