Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 216A51E0E07
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728407154; cv=none; b=LezuS+ABFu8kce7snfi/5CqCsjU1eXlf9i0DwodF4yTLWAgs4aB8Du/zOO+xbHqU3p8tXmgK5mdX56bKohGI01gfnqanJFHzWl0fpVr437dsxPWnLBT0gdX9mDcSXnrdpZysVgsp/6VLKJ52ci46J/ZeUtNlKwcIpJ6B8/jt5pE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728407154; c=relaxed/simple;
	bh=kCmZPm8I6QMJvBQQBDgTI9bIaNoxG8pD0SsLn1aiNtc=;
	h=To:Subject:From:Message-Id:Date; b=hwuUwp+bI1+bRmHn4r3w48gyJnQT4B9D12vNImioGc9td7I9XGH8ie3/+rr7GwLVh1ueb3xnzG8lIj9YwDAIrueCQ6t22QTB0DslKqaqwoCrlaHlWqCX3SzdYbXdeMiETVhaGENXZxPDdbDF8KiEfPvK+YwC5s7/vxekttT4wzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHhZI6XR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHhZI6XR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88BEC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728407153;
	bh=kCmZPm8I6QMJvBQQBDgTI9bIaNoxG8pD0SsLn1aiNtc=;
	h=To:Subject:From:Date:From;
	b=AHhZI6XRuP1J9fXzetBvuniejpc3eV2NtNuOUrDbVxlEBEDi/S+7PhUTOmIcMMr5/
	 DIyKXAYizQ2YudSx92dly2GGSh2mw7YNHslAEhpaweLaQR0o4+MooFTeTFjGCLZDwF
	 pbzsrfouFPdBuE8I3iZUgjNQJs7DBml0TCYGs25J1vZ/NepJOKepwBMXH4WWdinQwN
	 8SX1wF4ny6tcdDR8URHoL1xAomUXSYmKcrB50u0qjKT+iq9NuG2zhk2k7Z9ucMmd5R
	 dSpWXpmRYbadduj7aFaR81Z/52ZVaXjgqNElhD3rVNBS/nE5BhS8Ihub7PSn7hRRTL
	 Ryz0Eve1/DCYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FDECEFC33
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172840715359.22938.8647313606818086353.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dfe5e658324df2ab63b7ebe21f61f681272c2cec87ece8f258d243d6c56a82e8
Date: Tue, 08 Oct 2024 17:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728407153
