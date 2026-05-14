Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5BC038D6A4
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778796633; cv=none; b=o6WDVFdYbJc22fqYtA8xdmJKhj8qwqmsiAz0kT05XXrtXFoZOmQpNl8BABrAM/rE+g2KXnmgg1ukw4x0WWyV5LSQ0DC8tsvhj1jy7EHCan3k9pxux0bchQ7YDVB/zRCumRVpb5dbjexjqMq5o63SPkwRgwm+vWGP/6inm4Kaqpg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778796633; c=relaxed/simple;
	bh=9Q6eSxN6X3pT9bcGugR5AnoJ0hP0ZThWUa/QM2CG5lY=;
	h=To:Subject:From:Message-Id:Date; b=cMCEQDfUO+J0+U3MgUAk1RTtr43uBLM9vtEHfH2ntz3i3o2fCZVaZkQPC9xXOKB5LvwVuMNgcz0sGdSjtZEsEurjD63LZmuevV4As34xm+pv6shSnupBH3zMvIjERYRo8vZvHh+xOxLsrfgW2SVtoayQ19spyupk1caRSkxx76k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uBsPGvWE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uBsPGvWE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BAF97C2BCC6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778796633;
	bh=9Q6eSxN6X3pT9bcGugR5AnoJ0hP0ZThWUa/QM2CG5lY=;
	h=To:Subject:From:Date:From;
	b=uBsPGvWE2pfaNAnvMGtU0baZ1BkHiNVQdQesYpW3yGEVLri2P17DzrUtDeNkMFPuU
	 NjOKnuavUiVxfNh+Jtpcp2M5ObFO8LFe/nq0W70be4EWu+v7qJOiyVJaF0BpShqqb9
	 yMd99wuzFzUHRyVG1JYdvSHJyjn98VxU86RXA+rXPtgzJzsDsNNKO4Bq2xJs3zZNKC
	 kSqz1Y4dieoMTfPPotqL/RIvUXijbo7AsgCVWHMrANnzx3PR2CBdAchxnh4CEVeEzK
	 1iaZGW84XxoLgIE0Snzwt8kyHOHdyqn5A5IUEZWVguPzYHuX1bIhGKIOUX0zc+N5nZ
	 gdGiPzN/ymCJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA8CCCD4F39
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177879663369.10023.14142196806306449757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1c661d1642cbb0a963d98cef7aca265e8004edf4184d3dd8ac14aa579cfec8a
Date: Thu, 14 May 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778796633
