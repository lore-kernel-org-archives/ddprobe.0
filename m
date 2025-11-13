Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C6A621883E
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763041794; cv=none; b=dlhxG1Mb45hmBDFMhw3yMRrPoHi20wGe5ZQL4YNdt4jOv7WRKbgAu/bBM4Isksk17XjMc0eevTF90sH1b4OXkVPjAap2GquvP6Ixel8X79jTV5JTJO39BoJey2ttj6qAq3NydUUZQiSYc+Xi9zqiyOt+ishfgOgNk7sEehQkm+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763041794; c=relaxed/simple;
	bh=QQWGiT2dYePSVYIENpiaR0QLDODGDeWMuX5GZvBBxcs=;
	h=To:Subject:From:Message-Id:Date; b=jLuFf6tncrZhflh5tNzRoWHRlRhbm9DyDSysSp/oGCXgNq1qyHBsqE7BUB1bxHyIWvWBKT68ugq3H7F8BSIcXlxkNJSlE9TkuBbZQFFRpbNWoNnDvSy6F4yN08VZYNdxzR83GKy2dvtX461VrM0nntcYtXCNmb7Og9xdk27hMQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RZqSt0em; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RZqSt0em"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29ADC116D0
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763041793;
	bh=QQWGiT2dYePSVYIENpiaR0QLDODGDeWMuX5GZvBBxcs=;
	h=To:Subject:From:Date:From;
	b=RZqSt0emAVZBmjivmBR0k9viPM6QTaZMmPsyZiLtFBbLtyLsqgOgrD7nXFHTXp9V/
	 HeSd1/CjIsiwf2HgOCuRquzqGm/qs8NRTJ8mFY8DSjVP95idHOhqNF3/Pby9abhP/z
	 xIJgUMBnFVGKrJKg1AksuZ6i74rpuEbX8xqmaS1mHi/VTM4mJK6F+8zkz+e+XzFuUz
	 3TU1hOznVUfGdBoQB72JVG8cOXczqk7hI4fEq7NaqoUA0eIdiP9FH8munx6DgYX58A
	 AJHiQ7AuEL8eYBPWA0Iu34Bxe1Vd3XV8343Ucxwc3DJV9OybPTG+ZHWSqTdpSn35YK
	 QP60SrUY/t4rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E847CD6E55
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176304179357.23116.15720854450047478364.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f064a9e33dcb654e9c5be52dcf3445a2c79acdf3da23f2d0f30a83b2057a83b
Date: Thu, 13 Nov 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763041793
