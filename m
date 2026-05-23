Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E5378F4A
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779501154; cv=none; b=OSSdtsBfLyszjdqpaNhkM4cgmFESyIVaw1tqDSsvr5CUQeuZ6SVYdEXBVTnckzA7MbvJut99K2cLgk+6GSFDQv2pu4G88qCCsDqqLtlcP8DzO4cplJ3pLQCMoPqIrYkbdh+h4im1lF6G8u7fRCoOYszDUPnPFyAkutqgppX1cPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779501154; c=relaxed/simple;
	bh=pPVmobgWxcmuKrAUyJLXI351he3/0Kvx3XWJ9ydIJIc=;
	h=To:Subject:From:Message-Id:Date; b=rc8aEeA3DEzdTvdqYH05CZI33cRgH28sSE6rBs2ES0Klgql3OiceW5YxhSS37wtiXjfJRbVCm/JnDlRc0ahQqcBQfO3Fd26TdbULfkB0Kh6qh8DiyqZHGXryZU/aXEMcAyhU+UNSx5S8V+V9cOUmJ7Uduu6wjxSlHoOvQISHfrs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OXT9up5w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OXT9up5w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C79ACC2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779501153;
	bh=pPVmobgWxcmuKrAUyJLXI351he3/0Kvx3XWJ9ydIJIc=;
	h=To:Subject:From:Date:From;
	b=OXT9up5wlDY+JVPMyBOHL+fShumGXtFj6/QD/6Fr5JswKSyB4bx9qeRrvLxWWIteu
	 ba+MsYTSgklwdjUjb+pvHvFzXnY8h67hyNjOxFHd+WP/JM2lTFJnjHlPYYiKTEo616
	 JuOSitZjUYZ8PzQ43Uq+Lq3hG799VkFh3+kIJRh8+9FpM1u2pxAW4mLygbjeSZdvnF
	 oGnfMbQD+OwT06+lwSo5v5Y4q5hcmmh2RMuZAXpzAzufu56PWLZeLGU2hatGKn1PgC
	 bX3nLnISXy0+yj6TjLrlo63C7OevnvbbNMqqGCKx99qaRpGtJyPrYCBZkgQbrw+JBy
	 ePjsrg2rFqUfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF795CD5BBF
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 01:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177950115368.2637.2284854105724114892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25b8baa1f27e633fc8b78ce9eeb779bb370aec1676c29913d032e163a174c9be
Date: Sat, 23 May 2026 01:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779501153
