Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 214522877CA
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751617794; cv=none; b=JS4O0ya1G/nwU498cBMOQUIPgE+vtCCqBLBhnmzT4aVij0ASaPk31/4i85goLxW3ZM5nQWj/glhQPhpjCzcVLdXFPn+hwEpsS1tIW1cuKcdXPHhQ/W08lPbWTv7Qg4uqibP78j3CERZlW8Co3798nNby4p3FmxrRvvu64tLPJCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751617794; c=relaxed/simple;
	bh=bNZXc9Fzdm74oQFRDwtUgDTSW36IjSb3kthivw3zbG8=;
	h=To:Subject:From:Message-Id:Date; b=GQumQeBDV0Edpos/ytaFd2tTcwg4vHAZkXaOoO5vglbFu6WZNlTxsT+lqt+ci6mw9YKVSICWt8IZEwf8SIDuzV6FmkmHk7CJU8Y4UELphyd/IgRG5b6wWN+1gqR2DDqNiwtSRwF8PrKIGQHhKaXsv3HiuFraDRtqIdc16NWgOlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Chgk565s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Chgk565s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D6B7C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751617793;
	bh=bNZXc9Fzdm74oQFRDwtUgDTSW36IjSb3kthivw3zbG8=;
	h=To:Subject:From:Date:From;
	b=Chgk565shPQ2P4Qf9zuW+IKSg0IEgNUIdE1K9oDzcMiMbryUOKZEIdMbxbD/9XZTC
	 BO+to6CTatwwWVIIJpzhzdYeuzObadTsAwiM/TzGnUzOzLRekXKaa8ocgIJTrqBQdo
	 XiydnFwzC6sH0OX6hL2mr7ey8AYWp+SonwS+6qbBJEEPn71e3c5d5K9/XGrj35h4S/
	 +WP43oLJMC3U0eHdyrQCmgzNC9DkaRcFUOldfTMuVNq18IKbKe5Y9dy/10bY8KbFte
	 CqJZrVPrVAq99x+ky8inVv1kOHL7zBs/bIGALl8ZnyvdUfCVgnMNVHnKWjp3FV0xiH
	 08XoaT390CwkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7A4C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175161779357.24787.7848915989619880850.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8de001fdd818479240e7a6d875b9cb0d433b31bfd704e4e0c8866c828fe823e8
Date: Fri, 04 Jul 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751617793
