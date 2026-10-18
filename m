Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 687BE3FE64A
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792362034; cv=none; b=qAqJ5Bh2QHMBObg1iCH8EKhobDTNpSZH6Uy/cSIOORKioiA9gNdavy4kyFJWFcV+t3x0U9TSrAYczlxzXNCDTk32Ser1qpb/CxFEiz4eCBA0pzBYh35rrTNStt/MvBTbwNgNc+Cr3WZSz0tTzvoka3Lulu/wje2d7E9Y0nvBISQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792362034; c=relaxed/simple;
	bh=o/K/O//a6hXtsIeslDhLfEUdO7sbXYQ0aSMjYUTc9Uk=;
	h=To:Subject:From:Message-Id:Date; b=DzMdCBkEEB+974gK15D2ikV4B2A3IVDbYbGZtILVkE/ul0GLoeXD3Vi5+5RnFqUX8UTNeeLngxBBWr0jWHx8jXz5gL1IB0Pae09lzfJwKwr8IZyUNexOz85GQ4gf1m0zyYLmLkXwi2dxvrfagqZSm13CQdjYRIPI9E32gONSvHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oHeKzb88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oHeKzb88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4E20C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792362033;
	bh=o/K/O//a6hXtsIeslDhLfEUdO7sbXYQ0aSMjYUTc9Uk=;
	h=To:Subject:From:Date:From;
	b=oHeKzb88B03cEzZ91pjMrve+KwPlBOo3U0K5037lvbXdfd97VaCIvZn7LcqW+WWOF
	 jAtiD3ivRssOzcpLHhRVxrrWBlxz/un4vg2y5SurGhbnr/tp6bBvKngkdalnc0l4du
	 u0QMQHZQ3yo/hsfOyfae81xawoMWC9S4j/kQ1ht6w86uF2+aInno7u+FVuzBBev0iI
	 lctqbg7WeFR1yCjTSj0hQJNKII3m3c6+zzJq8BpfO3KhUDADPysSI2yIohuFA2I6Rt
	 dmQB30kKI5vbpgiSA+dUWAcYvTS1pp2zdXgZC2JbaKW4t35AKiomUTPJTaQA2woIPP
	 zYIJgo0uFYDKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBD2CCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179236203368.5254.1530559329481114857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 14fc89289826d74c10686a3d033248573aa6619d3896098e05838d6e5cb46b6f
Date: Sun, 18 Oct 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792362033
