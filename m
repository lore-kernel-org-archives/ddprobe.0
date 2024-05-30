Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F32A186E38
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717080863; cv=none; b=mGhqrXCPkTZJ8YRma7yrK9nKM1rHgMXvqKmoq8gxqew8IqvKGW49cImpvnKgBwe2gy9hhYy2EsgvGgORzGEEiDdT+lwSMuLp5GXYnIzEyXUbwJYZy8EQ31OeuIHxReXLTvw2Lx9N0wYcnwqw4Tb3/h8mx2K0LvRFwRG0y5243AY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717080863; c=relaxed/simple;
	bh=AW7HUxko/vCV96RQZhDctkC0M979RuLpYJ7Ou8ozQgE=;
	h=To:Subject:From:Message-Id:Date; b=e9IcitdWMHlorB3iLIvCbyzvJhVgUnl/No7NmHzYCge2BldFX7+7bMmqlwoUHBVLf+/IlYW1x2EyW/BFA6adHx2eB+4eVNxp1yKW3K5nerOD/ECuBvUyePbqAoyC/QvC0uRl8wzbwVqF7M1cbNOaY115TJMDVDnwDDteAwKPauw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C8Uyq725; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C8Uyq725"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D43A1C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717080862;
	bh=AW7HUxko/vCV96RQZhDctkC0M979RuLpYJ7Ou8ozQgE=;
	h=To:Subject:From:Date:From;
	b=C8Uyq725rz+gMZG8I/qaJLaQ6V+l3+JmJBxbz0caJoKOG1U3M7t+y3frYgEdYVejZ
	 G3Rt3Lpt4yfiMpmlpw/4cV2QNhGzUzlVfz53LhF0es9o1EPAQ8UFq8XWUzBhjlVkxL
	 0Y14WpgpeQmS2r610mmmo1P/N22UilOvpb7RyTtU1ez0SJkpiYlUggkTd9TgqSawI1
	 uqRfv67B9R1OiuKGb/MANNIPY9Sf9yQuLYYpV2yuehPQbY9Kt7Az70ugoUokl+OjUQ
	 RcdrPt/2AbDKkQyFQyNjy9uztQfrwIaGSpIPGiEk50Wn2GieoUUMQnOCtWIIPdp2mb
	 czznfXlyEwINw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C14C9C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 14:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708086277.25830.8402770549805451426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8280ed92ce32723059a75f4731b740cbfc5dd8c94bd568341e5de157daadde19
Date: Thu, 30 May 2024 14:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717080862
