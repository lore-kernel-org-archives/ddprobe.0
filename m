Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D94324B1D
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770162234; cv=none; b=c5nd7tPBLaCEczw2lssZ1EBaL+o7nAxiixeWv7pzRbh2qrDo5Rly9ru9Ssjm2pmGf/+AexKCZQ2KrnzTeF/sKWzX190rAtt5lFXFEb5HtSmdsOZJW+TgjhdgxY+NoV17b/XLpR0YVCLdi+KHVUOiQoFhHw7LU6hAAjoANMrl/UA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770162234; c=relaxed/simple;
	bh=zATAueurZCoVHRQyb8oYD6vs2k1h7580YBoPOHVPsKs=;
	h=To:Subject:From:Message-Id:Date; b=uccbE2MFb87Vnmq8GEtxAAKaIQxwbbRl+xpbQbpZYkQX2z7H+x30TUhfvJC/0Omg3LChZHyzbDqF2PiMNtGyQ3CQVtCMUz9kLSKiStwD0wcC3ln0FgrW2O8dEEVp+Sp//+D/ei0k5A0UF8VuPc6FvrS4k4hU2/mkI9k+urUnCGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wm/NwtQl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wm/NwtQl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FCFC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770162233;
	bh=zATAueurZCoVHRQyb8oYD6vs2k1h7580YBoPOHVPsKs=;
	h=To:Subject:From:Date:From;
	b=Wm/NwtQlyiJmVWzsH4D6+23+g2kCBavA0j2Djwhv4vAfEDXYLWHvDAJM/dxKsiVC8
	 LB0dOGtZvRL6PjzgvmS9j1eyrr7z5+XKznjSzV/NIUDZRKGOWW1K8F7B+QvsSYM1QW
	 SXSAOcGHs41r/lUTVSPRbPxv2o+O1qrKu1Iod3PyGGLEBCIe105WMXOFHrI2jDsqs+
	 leqN848LGTN5UVw9+c+OjqgWWPHoMEZBwxWV8KMoiz07cwdSbzVXPEJJfnUI68vNX4
	 4Lkz7TJKe/ToY1kB1jQsXvA7lti3tRYECS9L+YZZhJqGgxtQIk3lZvqM+pYu8n8Zxc
	 4ZwElChRtxOWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 957ABE8B37E
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177016223359.10405.12431361324714671915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a7f0d64f7c990cd65bfa6aa3f64f3634db0e37c282033dd3da42c39ecae2838
Date: Tue, 03 Feb 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770162233
