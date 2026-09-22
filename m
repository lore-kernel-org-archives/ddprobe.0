Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32F1D47C0EE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790078434; cv=none; b=QiSFujQEdhXxAHZ8+Felfeam4N72ulWYbO+HP7Rb91zO4iVXMxQJDIbpGUXGu8Ja1gRPsdJR2eXe5KiCNp0SW+d+nql39fjdWAN8Qvji/S/iFPEDJVmOKzTkqqIM/VbBY7LtwV8TADqoq/Qw7432hLOc1T4bSjUmv9tF4BgpPN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790078434; c=relaxed/simple;
	bh=XsfyQJTQQfyjRxjbMH4XdMJ5bj93tJlZyBAfph+X0gU=;
	h=To:Subject:From:Message-Id:Date; b=I+vSwbGlA+v9aDCdb+hHUo5EiuKTNpxgNfxBfFWutK05yLMpiZHgzF8VV+MZUuVAzoBuq330JhaspHJrcv31wZozjNpiHOktxQg8NaJpHEhfxqZqeuMESQDqFrmVKQBXSJECcwyJZ8trrXP7XROQeVGtDnF8Uy7fOm5K2xNIJ3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DZ1e8lgX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DZ1e8lgX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D07A8C2BCF7
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790078433;
	bh=XsfyQJTQQfyjRxjbMH4XdMJ5bj93tJlZyBAfph+X0gU=;
	h=To:Subject:From:Date:From;
	b=DZ1e8lgXBI1b/3+uVASBUBtKY8HZo2V1piuQmisrnAPJc2R3dC1z7lZ6nBXvO9/0f
	 puzbfiVYbuPTiE5cdYidpr1S4AN0eJQPMpMiDkKAy1i2GAvM7VpTjDyNkUxCmBW+Se
	 CYSZGOERstZVehGuqLb8BG0qgYeSYEKov/TJviEwUId7cl3qZo2lnOa5goFrBT63qm
	 CMnGGJkEDPhgcp1MF9hknuA7kOoEzexjdOc1RgSsADzsXcMKTabWZVgoq2+YIAaSFy
	 vV5akRRE+xdzrwXGj5WWyFYOxsdLyOWFZ9w/rfg9nxOWkaHgy0TL0MpxJubhYH2fHs
	 JzaS3b0AhayxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B823CC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007843374.11358.3548809712624804123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5421560fe695f5e16de5b347e9f17fd046bbd28e5081549975397b957ce8236c
Date: Tue, 22 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790078433
