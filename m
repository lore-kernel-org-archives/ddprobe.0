Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F3F2396D38
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:53:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780134814; cv=none; b=BB1ZHpOUUE/mmJ2co2R1KE6GPkHVt7qLrio124MVagkVeSISqy4K9vYw9fMm1vK8RaV90Y/3SCXlYOYn/ZOcYwJX23q0OBuda0RmUUhbc1h2CWD4OIGn7jDsaO0L7peeM1FWTbiy2yresGCuHvwg2JsBY4bupVoe6+93EMXl8Qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780134814; c=relaxed/simple;
	bh=G6gU5SxoqlYcGqOtyV4OXtP7+1N4CDh7aMQMNNy9w7s=;
	h=To:Subject:From:Message-Id:Date; b=oYHVgI3yOgXvi4CcjjcmEMnfSIBtrfp8QfKdG+WjrLLTk3KHGGp8Z3k8geq6KW6SLZE0G9VPMZsHgrK79YHQt/7cTvnpbVo34YpGqEhNSrTY5nOGnEW4AuMe3yeoiYKHBpaufL+muQvwT7AX92vNljBy2GFXMAgoTBwT4SKVbf0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ILs22mhg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ILs22mhg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCD94C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:53:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780134813;
	bh=G6gU5SxoqlYcGqOtyV4OXtP7+1N4CDh7aMQMNNy9w7s=;
	h=To:Subject:From:Date:From;
	b=ILs22mhgBm3S4UPQr2vGDR//GUaBf6QyVSecA4zfIYOcHRiFWACv0cGRlLBf5ylzX
	 JWrcmVBDAPyCd7TErYDTT1aaJlWHEyFKjw/Q33jhO7pXkN8br952QiQq4oQKvdqKdX
	 cRNYT9eY5Ocq56CYlyWFTGo3MeIV1ZNzXuXdvuB9Ear8xIUb9EBT6Yfqy8cDWbkv4s
	 1V924wG0ItCPOraLryprTmopQlvFEBKh2KLdHj4z+2Y9ZQH64B6hQFXxyi7kB+uGxC
	 HKlbizpX16XAahqQJiL0dqShccoAS9XCsYI2dVvzO2oSbSSO5GXilB6ntYJwdInLJK
	 G7ZpPmIrNvJLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE58DCD6E4A
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 09:53:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178013481368.25558.15455433392702685192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f393d585f184fdf662f59c9513197883f055f135aa70d709cae23075bc77e0bf
Date: Sat, 30 May 2026 09:53:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780134813
