Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 509DD31F983
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785995434; cv=none; b=RqRL8j6osS2e31MIotjHkkKL0A8adg4wMrfA21jzlOrWH8zyXWsYF8mo6lVEIJTUUVRApDTwSaovcwxdvj5HVsvbZGWaoHa85hEZxjMLa77bv6n8NP8S9P1cs5xevFRWduI2V4OleOKMkx7CncUMRBwr2A9z0aG6wv5oCDWA7oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785995434; c=relaxed/simple;
	bh=DxlMKvijGIkPPr351bg/LxF7jmUJmV+iAmWfbWDzdLs=;
	h=To:Subject:From:Message-Id:Date; b=qD0XAXp1IefsAieQYHolUbJfeQzW2n3f0u/lOpbBt/x/7Kz4MMgwhFqPc9PFFYk5qtJZs7k5tLPRyB0uRuwIWhebUVxHQ6MU+Ho55wUYlgkMi1TLRG0jNhVfnkB98M77DPGpnAkmy2UM9iANVEj2CZSDlmFO4kN0KF3SOeTx4Zg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPZLNCdc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPZLNCdc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC79C2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785995433;
	bh=DxlMKvijGIkPPr351bg/LxF7jmUJmV+iAmWfbWDzdLs=;
	h=To:Subject:From:Date:From;
	b=UPZLNCdcb7uUc7+YxjHZJM+Lk10uNpVfOQl5VdH00lo9JvLChyKa1BYlhfG7TkV5h
	 usQGq6p5nO1sa6d45WNY9TG35tWbxvm1uG6C7uthd6JfO8jEFFX5agvFx/sKJDqJ6T
	 /v1Hbkold5iX4vgt08pFOfz9CdKO+9ExA5PbjjDx/+IDhHrXDZ70o9Zc6EdpaXptff
	 oDxxDtpIG0m8UNDSUyi4Wew6Ek0/8YIRWfJ6rRXaICQwm2FTbWxxFqpf82kUGzrED1
	 cke3fXQp4HIcmh+KSsLA2LwtErbtLoqqdT5AGzCmzdjd5EDPnn+3SIAvWgbKl6ybkP
	 dVRkPp1Qx1HFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB117C55ABF
	for <ddprobe@lists.linux.dev>; Thu,  6 Aug 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178599543369.11179.4926520629005836203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d1c4d52599cd187f5c0870499b60788095a37684c6014f216ece4193f7d8444
Date: Thu, 06 Aug 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785995433
