Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EAC37C114
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769676834; cv=none; b=qH23kErBcBhrxiNHHcI7GXj7Stg2RysV+Iw7f3EYlATQhS/M6gXJ+Qk4tLN0ESj+AO0KQ6ZD3f2B7U2i0z+Qe/5spvsZEpgR+foazFuvgCWhdLxtou9xjAwgpswqOnhdDaSe0RSI7xxeNysSzNvVMqdanvaHN0GYC5+X+THgFas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769676834; c=relaxed/simple;
	bh=amydjKjaSJuBVD3SYdvNr2AIg0mrwO2FLRAyfsMgOJw=;
	h=To:Subject:From:Message-Id:Date; b=OBXN6KYOT4RCNUCCSrj6QLflMRP9dAeO1by0dXpYzMuL9r546Tzv0CIxkwhMBzhVR0V41FTpOT6kS7A0DWEJf8dOmmwaBGdhZw8wDvQy2Dn4QcTUkBbqPPDfW3/2PJBW+P6c3WLN0yP2pu35wtzQsIjijqhwH8eeBhPDOIfsKAQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtwUDQTh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtwUDQTh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DFE9C116D0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769676833;
	bh=amydjKjaSJuBVD3SYdvNr2AIg0mrwO2FLRAyfsMgOJw=;
	h=To:Subject:From:Date:From;
	b=MtwUDQThk3KuOrS4pI57VbqNdWhapd3ILKG0LVi9nmhAsb3I5HzwMFxDgHPHe57xe
	 tSDPfw0zdAyQZqNfecmuNguIESahj9T6l/5jXtciCD4KhQK3ZJIjWziUjemOSKqPvL
	 polW4d2+BOX24sq+2YJjtZLpYMVLsGE1hq92l/SOJ6E3iabgukx58i74EyrdJOhPJU
	 MDpMJEJoQZ6eRBgy4kSzfGrMo5oPfUWOoTwqFfv0//XKwgkYbbjLo/AQqU7TvLTt/d
	 HBfVY+fYPWx05rMszul+qothlF7hNCqRtV90KR5OXLWYXStNYvXvbsGtnk4SFzyHGo
	 N6VuiFwvWcpDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F78BD358E0
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967683357.8545.1131530008096143846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 635aadc80446a54f68c10a264590d9e6e7a8cd843e6a8d1b88d29b4174d263fd
Date: Thu, 29 Jan 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769676833
