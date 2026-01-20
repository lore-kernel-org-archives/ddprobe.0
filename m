Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A4533D2FEC
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768946034; cv=none; b=c47SSYotMGVZEfbzFO6ww4bvCucyQvMyWS5/+1e8Um/j8ksyYxSdcZiSt8OX4ujPL1/3IMna8L7O3HRtLhbFGfB5ceB7PYyAFZ52UIYhL07ZP851cvwYyQwTz1fy7bk7w6poVG93MXjeOjqcuBXtPWXtm9m3aPd8qjmNEiQxOrU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768946034; c=relaxed/simple;
	bh=C6haaNP1N/mMLp7347M3dfDy0E7L5xv8JyfgSPSvtQk=;
	h=To:Subject:From:Message-Id:Date; b=OV3VWB+YXRHKXSeymFW1esvTJeD+Itoh5exWnDLyZl/U+NH4Rz6bxD7pUu14J+V+VbAAUhEUMPLFPHP9qAjVRmLsfq/eARjpzbB4HYBrVEivE+Lbwn56ws4u4QTOSFYQba4TKMA4E4dV5sZhBB9kBZVK+NX42AH2lgkDO/ClVgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FiOxQe1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FiOxQe1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA69FC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768946033;
	bh=C6haaNP1N/mMLp7347M3dfDy0E7L5xv8JyfgSPSvtQk=;
	h=To:Subject:From:Date:From;
	b=FiOxQe1w0unziRQmMK9/kLFQZyzgepsYvQVq4762/Tx8KPbY1JJdWjI90JE5uoqlu
	 d/YsOFnBN8q60916ls/iIHajaWsrlbhf65fKHsJfivnqdsTnL+PFmOf/1nLH2S9egr
	 JrKApgEM9jR1ZdhXjA8GafI/lY6J/1LPMg1Y257DGbpicqv6PMuGUv4QHUTxYLweU+
	 yU59azWtSHoW9FQoqD6niYqgO5osYKVb4p0AsH2206K1UL692urYCmhKufXgwcOans
	 H78UM6ZucP9NsskAfCebFH1pcGSXc8hM1OVcN8GdbUr4AV0per4cw8YFu6UoigHaM0
	 Drb1ieVMnEUSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96D43D262A7
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894603358.22199.9264855235443159942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e87f843e8f6bb56295d1861d2c413a0c8b9196fddc010c2b5f6236e7742b01df
Date: Tue, 20 Jan 2026 21:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768946033
