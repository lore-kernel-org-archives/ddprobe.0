Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E89C1DE2DF
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742536794; cv=none; b=IrQsQAQ+tcHLl917qGA+n5zLJCHM19tzGp8AqJ7a0Pp3vkSrtgEXIgSb+GGAd3rZhK02KerLY0uzQsiVG7jKWcRnTITqY80laKQe86hdiXWnThjE9RoZmfN2/Lub/adIlvK44qvRYTJD1ppxGgCxs3p4sQAbfN2DA49wL+z0muo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742536794; c=relaxed/simple;
	bh=v59dzaIpmme0XtK1jbQEcxGgDK9DoqS1bdds/0qyo/4=;
	h=To:Subject:From:Message-Id:Date; b=OLNRhpGRmnh11fzuXajFsIHgJNBBQh/7oEexJEh8Kov+ANb7vvNH3iu06IF69TV1UOD3ruIr/hpXNCDCTS6TwRsrwukxUxhJj28t3fixIcjk8WKUdv2PP7hjl+Raj7mfLAxRD5vYW+YwybFmBgNoZx0VWbUuNx4PA1ApeXTHR8o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijjSqGHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijjSqGHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B10BBC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742536793;
	bh=v59dzaIpmme0XtK1jbQEcxGgDK9DoqS1bdds/0qyo/4=;
	h=To:Subject:From:Date:From;
	b=ijjSqGHITN0Y1MkWm3JG3pRPUdFChIjlynAsOa0ITqLai6A9SwtA5II9W4rVkEkz1
	 cmleidUb5zkjFuEhlVfnRL1Ckgqjh/ejJkVYZ35dhS3po5xTgy0Fg3oQo/0VuM8kvt
	 lCzJRkwDLCYCQJzFt0UUUUsvijDiLPqAbYJOo0waUEI/MaJCPv4tcPj7ORngHJ6Ve8
	 Tp0MREo+dzJ1/dVkiG+BMdzlVipF81tVT2gZ+fb/v4i0l4WUFPUlSl948YlXbx9zr4
	 VLjtvDmWDgW2WBlMAIBQs5UOpAy2VY9m8b1vYmzupPNyDhDJyAAD+/uNHpHIXQr9RX
	 HeygpC08IHQlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B11BC35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174253679359.22426.17468421242565904737.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2257e4a9e81144ac8593730b0de996c2d6566427c1477af83c41f3261f0b87b1
Date: Fri, 21 Mar 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742536793
