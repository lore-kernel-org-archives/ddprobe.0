Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50C8C31E831
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785581434; cv=none; b=mMPU6wl2PYoUIX2JZTmScrpr5Be4qwk0xb4FdT2JJr8svy838kEA7rZFtYCnmYK134R3C/DvW0qVhewOGOhFOz5CfTS5o6I8ZD3rKSlaGXIRjFrz1xw9PkSI54BlhXhRLj9/cJgVnh+b8GOOPldXTWcsMjHrIG3bbaYudlu6gSk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785581434; c=relaxed/simple;
	bh=OsenctbsdF6bkrkIk7oO1aJlumKvdDR6stcQhN4CSWM=;
	h=To:Subject:From:Message-Id:Date; b=SkRYUpFcvXGS8a7CzDuCm3ssUEznx7fQUUTGkAGiIimHmjqb1fZvLPVBTyLGGfBQKERoSWjYTj6mGwvueDXCKmoIc5elfSLCLO1yMBaDnEPRHrmIH+Ay1QdzGkuPkqEdup1EFmehYMWBzPQlXu6uGm7ioAlHy5nMIM9EvXNw5DA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J0tUPsJW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J0tUPsJW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D466EC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785581433;
	bh=OsenctbsdF6bkrkIk7oO1aJlumKvdDR6stcQhN4CSWM=;
	h=To:Subject:From:Date:From;
	b=J0tUPsJWY0wBfCyGYkg3W25Q1Sz6lp290KrgS4SglO55tcgdFeHzc1JsDpOC3HLJj
	 oLiXH9LNy1mpep4YGgX0XWrpYXKCHdCgVTUVZ6kz0c5nqE9DKX/bzTM29mMPSrkzl5
	 WRwHM6UkipIK6ozrJIDNOIJifxIfrJJnM+Uu24v58pTANBvlIduG+lpgKoU9eP7FC0
	 c04IVkW+61pjkjIczOJhnDDbEPRFKDmMQR8gtt+BFYAB9xx+ylJrQsX2tksJ3O0oox
	 15WoAUXBL1uDZsAqXchBJIhFwmIDn4QAXJR2no/W49ab3oXnXoDWDOyF3FtMYfHfcd
	 UCB1+nLgm8gmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE255C55175
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178558143368.1981.9983517302619468841.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ab6d0f679ccae331d7bb004f2e985843165cb510cab2d62d7b823fe3981fc3a
Date: Sat, 01 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785581433
