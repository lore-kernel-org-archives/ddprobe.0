Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37BFB1F7569
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780367074; cv=none; b=SExUQdVf4Hk14PPDXRo7YRtZbWzVQ0ah9A+DnJvElHE1ViJEWaAisax/ZpW1nUO0t4q1qCPcWe82kYcaLUqToWwji9VxHl3aN0Qf174dDdx+DGUM9lUo0DewMwyKuWklkvgBUWxZue4vNnrrQRR1ENwFpdXP1XkU8xWMmm4Nv40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780367074; c=relaxed/simple;
	bh=hjZjNH9mbIpwwWpXQqdKc6VuJ32QGn22JXitL0PGId0=;
	h=To:Subject:From:Message-Id:Date; b=Qt6jYZiJQpW+s8nw8EFqV17q8/4qaWSSDFyP0whhedKzQ5SFFndIghgMHwhBKUjrE4zM6FkWScTodHN4nnEj8toMKXO285MfgG+eskN1WqfHYA1F9gpsWN7dLl6/syLKj1xBNaLIF13pNyKCZOJ4DVUkqcYZyQVYHaqHC6NFxfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YWT4HDw4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YWT4HDw4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C82F2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780367073;
	bh=hjZjNH9mbIpwwWpXQqdKc6VuJ32QGn22JXitL0PGId0=;
	h=To:Subject:From:Date:From;
	b=YWT4HDw4a4dIdPrq0isV7lZom16VfaTSzz7rbUZXCE01bJj52Tj/sYOfYgf7UyEOd
	 pYCbrsxLefuJPJF67EDeX8dLURrcjPp1xp16aJ9XYaGT1N6aaX5HO8CdpKTfvqe0oo
	 j/WwuVI4tZg0/V9RB6AsH6nNR84ECArSg7RbMT4eIZ1TFHZUvbOqgNWZVMSlhCf0z7
	 DcHBGFxKr8S5bbwxiNIGFaqN3YoLLtnI5VdPG6xBx6bSN14c9Nm61skw1e8X8S+ke4
	 IHsp+y2dv9pR4bhc/Q0cJZi3Yvez6OvIRPFcgQDnQnjchtVPOfFuRgC1VCbT2hVK+a
	 vnePy11TQWKjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1F7CD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 02:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036707369.24447.9506005700978941359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a67132ac3df1ec85b408ebae439ea84896eb1892fd191a516e365d8f1235eb5d
Date: Tue, 02 Jun 2026 02:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780367073
