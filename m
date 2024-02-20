Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6E9F2E84E
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708447097; cv=none; b=cKQr//EjrHwGbUbPSe0JBpgwDtabllT6KHnKvr/oO5yogdBmqbkqWP1GHx4iTW9qCOQzfQgAW/NtXeMOElpAYi0zfRs+CQ1rC3JxuS4zRvtWeswC88DCXH7fVmd/gijcVkJ6x9D22zV0C89CCzl72FdqTAqVAUjVIRLD/ReUHmA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708447097; c=relaxed/simple;
	bh=TgMSyirhrO9JOeXsxpvRIWaliRamH9xhcrQOFcDKTO4=;
	h=To:Subject:From:Message-Id:Date; b=FaBB1WVvkY06qF+ZxOOXKhSU7A6nDqpxZtdPvnll848bgLovc8kJgHL2ekJNMigiQy1mBF9XKuebDLINcpC91ZTiFpAAt+svz8cGpJqLA5CBRFE8oUcNzKxvbc4NyCDnCJ30xA+ZGleRhNB9AdZyEjBhcutB4p77Idbjwdjrzo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=krpRQIxt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="krpRQIxt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FFD8C433C7
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708447096;
	bh=TgMSyirhrO9JOeXsxpvRIWaliRamH9xhcrQOFcDKTO4=;
	h=To:Subject:From:Date:From;
	b=krpRQIxt4fyWUoG6K5ORuGTYEHxHxVtart67lU/HMnDuYa/Lm4hZVAL4eEeYVXL2T
	 n7BrHjtD/TltZYXr0oOVjk9Jr9oNQ0PqZUVpeMS5ZOXoSLXg9bJfyDpVg0dFO52SiJ
	 /5ZasM9PdRr7EmQGXT8upOXRLWcr2fE0oWWGZKM/z8oegp4LvTl9Lm9TvR3Gg8as5M
	 temE7iXzkxndpNSD1YbTheNWyEPcMIJnx2fy0uL7nDCvd9+x/091ii4SfXT8WFwt4j
	 G/I8nfENzEFuiGM/hMTuwERWa5lO8eh/3Ja2Cnjx5dbWor4TOSeN4SAPpsCioZ4QPX
	 yxnBW5tTiSOkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 622C4C48BC3
	for <ddprobe@lists.linux.dev>; Tue, 20 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170844709639.28590.15137719423352774368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db2e6316fd388adf5e4867ee322c407736d5614707023f31b7a0164924bdb2db
Date: Tue, 20 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708447096
