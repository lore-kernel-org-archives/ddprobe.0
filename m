Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56E2710E5
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750480194; cv=none; b=qbcfnQtUn0VMM8GVMdwKsgDfylckyzWC5CRogUpx/iRne4K/ew+cc+P5dY89+z+VdyVpo7hNx/MTyh/ksvSYAQAJQi2xCRAD8q3rpvC7C5lkySQrlDX9Z+M+poe5cCy69gK1muSsAuUqoHRb8WXME8w0ewLXTuWeHRKmGEAL29w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750480194; c=relaxed/simple;
	bh=H2JQnR6LwJ4r9dnVf4eIRGNjcM4ogp1LEw/PbOTDtkk=;
	h=To:Subject:From:Message-Id:Date; b=Cd9z4NWNDUjSJ8/YZxBmhwrsKFLhiArGda9Cv/4n5aNIdHR0OAxv6Xuj1Jz+qjDUBHkqIQIILoP0859MzqJlzqxeE2xZWkB/8ow/g2pMK7bgouoE6HHtl8GK7Xwqk6WcQwOYZM8bZktI7by5nSzB9ofT0A/Z98uvHz2IaTLewGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqQ/mPh5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqQ/mPh5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B41E9C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750480193;
	bh=H2JQnR6LwJ4r9dnVf4eIRGNjcM4ogp1LEw/PbOTDtkk=;
	h=To:Subject:From:Date:From;
	b=kqQ/mPh5u5R0rg9GDW8Kahj6tzJJlvK4YW5JeHQoI40Zc7JtuANAISST1uPHaBuKw
	 Rp3+UxjagiTvNtSy3di28yUdRsXSvdt9htszoY4dd6IkkUOaQwBtLJv9Gy6u9FmU31
	 +slt40lKiyicIpQHyumz3P2XYBaZblHzWwAYR2QgM4RtolA8rKpYazxFCAGsuX+mKG
	 ynW5ZErcuzWxHjGnjT9hVtZqxCHUNi2NWGPKwOI9VUZGdLTOwlxT1b80jntb0W7J8B
	 81v44OHAy34L4Y9VXAEOot5ap5VhuNKeIWj1CDnpGiZ0fIIUA4W5qRTdLxGRvKw3jl
	 IRwiWps2wy0fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ED7DC71157
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175048019364.6007.3341169516154928370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71ae10acb7eaee5f0e9b166cfd6e74ec8c42c9b1bb877840e7df3d4d07946177
Date: Sat, 21 Jun 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750480193
