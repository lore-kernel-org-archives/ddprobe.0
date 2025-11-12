Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D4AD214A64
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762942195; cv=none; b=Y71zyg/rUSdGEUtuM+arEXTFE9BiFgC7ZHXOcLYa2NL0xypNUBkLIJ7MZdqdD/Wgt90Z92wAUOX9tnbS25Y4Tf4OvlbOk7KpgVjoA7AwqXfQlxWMfys96SC8TEbEyYGWX+/+jfSjlOE4VpwRu5e8tHP8bS5YqupYVaiIHage+WA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762942195; c=relaxed/simple;
	bh=ywNwJtx0J8VC0ipakoZQM/+6kHXt60bCg2cUznuX7fo=;
	h=To:Subject:From:Message-Id:Date; b=T4LcXiI/zSlJ+filvbMCU2R3pw4Ld8bR7A2ymYuWMwz9Ph+oiVWCztpHSpbVT8horuJJ/0XcpC0JAC9OuAULdz9qKjV256H9WQfmzKrDEhe4GwW2DykI8vTle0Bx+3AnzqpYniD2BX8oUihtBTGIbGEHSBkeTWXYFnHozQBgSVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b4zpeX4v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b4zpeX4v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1082C19423
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762942193;
	bh=ywNwJtx0J8VC0ipakoZQM/+6kHXt60bCg2cUznuX7fo=;
	h=To:Subject:From:Date:From;
	b=b4zpeX4vHPubMmaKM720cETaqZvDG4vig+cvYyjNm+VLN81f/6Gsw3R6UZgapD3WY
	 ZEtEuXk381D7E3Ul77WtNB7Shik8me8IUFIsc8dvj4hUKyOq0kyM/QcaLOEvIGH/TZ
	 k4Nvoxo3KU7Y/ciBrHiSCKNUdAOfhyQjDELuyWy266o6JNmbRNBsNk/oSRZEL6RpTy
	 cxMBRdgsJaR5qtagSTLQWmRZ3JKyWCJcs2E6efkNEVbJiPHStzaDSxMCyY56Fq3o5K
	 pbrkaWYclAJpodLmhMASdOvgwl9wL/rri0LOx9rsrSfDFiO71m9LNnx3hjYIenIQnY
	 eU9F+T68+U+Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DCDCCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176294219358.25302.1876591783391447986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4864a7228e404f769a8caa667ceac55464b6c38fa501041bb4d77f2e28d5cdc1
Date: Wed, 12 Nov 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762942193
