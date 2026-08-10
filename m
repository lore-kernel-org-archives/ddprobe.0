Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 375B8401A16
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786374634; cv=none; b=T9I57uAoxjkGkFPS3IP52BRwr5bZrSmAOfeYmjZYytKx1ywsmd4tfY3DBZj226lUV9aUWeQEEsZNmkNBjNmdVHB3neA99HgQjti3YNghntQWeJs4D+y2rbvsybobpn0V98I2XsWg4Uchk61T06kWpnJ3wNezstM5VBX77MunaFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786374634; c=relaxed/simple;
	bh=CFP/5W39Yziknl+iDWFNAW5Slc9XyOs4b5NAeTJaC0E=;
	h=To:Subject:From:Message-Id:Date; b=JJqAegd6exatKt/pKWcupd8L+UyA0J2IOQli2x4mrNJoxCcij+aIrcS2ygLqyShrXue0ywrF4D699TyiQMdswulG0KW8GOFv1hcORVCjMjK1gcTUpBG1Y2xEeCUFXmQ/Xwh9mGsEq8O5I20PFH1PtaU8LDYvwEVLXjn6TMVIWHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cNxoohWV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cNxoohWV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9000C19425
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786374633;
	bh=CFP/5W39Yziknl+iDWFNAW5Slc9XyOs4b5NAeTJaC0E=;
	h=To:Subject:From:Date:From;
	b=cNxoohWVTf0eEKozNy0Ry7xPi+382yzvDF4HUXn6CC7MGJ3bpseZil0YNqbBZ5zBZ
	 KZKLcR0WNhkxUBZCoQBubcMwzK5rYSC5Hig0V2RdKAdtnpr1dqAZjvjMuD4pIPYuWH
	 5zLjN+wvsRB5agB1rt5SpZlWiAvcof7vnElbu7iGmw0ITwm1haX4VH9ykWmMTDIi4Q
	 wTYcHvUybInEebWn0Sm1QlkPqTAkLzSCYvMvzd7RyZiPcHqZjE6nM3V+ioBo1y4S3N
	 6bz/jjk0eR5vK3p3YSxhhI5/T6wm9fEv+cOO/kzie+eu7eF6jG3HKK7cCE+0FLdQGt
	 a5ocjjSKTWnxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5923C5AD55
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178637463369.22374.16986540957855896457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6bd4b4113e0a1fb57034b9f81705b56f7138c74125fa1b6132444b3d399f84
Date: Mon, 10 Aug 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786374633
