Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397D8302140
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781435194; cv=none; b=LfIF/U/9V22PU4ALY24NLdDleVEUtB85NES/PqIXG+r+lhuY90QgALzgpR/DLtIa23wML522ayJt9jzRD0TRyhJEoEEEY6/jezwSZ/37WrvLiUYW2yg2QxaYqhxP9fT4CMc0m7OW2vVOiUSKKzJJJ73r+qtcdwvxKiELiEK7ibE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781435194; c=relaxed/simple;
	bh=HWNojj2Gb2KYuhDr9Ivv9mmqHanRhK7LbMW2FycfKSk=;
	h=To:Subject:From:Message-Id:Date; b=XsqqXtZDSBsoXXZpKnP8WE/IkakA4Wx0UAjaEbe6rvJ9NFH/s4Bp/nrY7/XmBchnnOrhAK3QyNGk7cQNahRMW53UvF8R21IvcG2KsQo5gGFtBx5+wXXIddVuTg1vWUaAqW1J7xlPGr1aHQHM0j3LAi8rHzU92B/m47vU6xQqhm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NAD6gMPe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NAD6gMPe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F3DC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781435193;
	bh=HWNojj2Gb2KYuhDr9Ivv9mmqHanRhK7LbMW2FycfKSk=;
	h=To:Subject:From:Date:From;
	b=NAD6gMPefsQDN6KT14UeuRRn2p0LlCXRon0O2XsAuxuAwuW5aarO+4cBcMpzvjN7w
	 soh34VZ+r4tBYy7W4KHFGrHVspuquJAQCCHtPWOc3K7cE2lkfTZ2+XxEUQ4mc1f0o2
	 3jgEGPBFbae9Q74RXrU1qXcXgzUf7SbQlAcR2YNaN11A2UwrOdz7qtCS/83uO3aUcp
	 yltLwcLpFawAY/z3ceOe9oobnsjxsQWFpnl1oYjS/ueN55bgByBUIKkswcJ/JiJoto
	 zj4Z/QMYiwxB7PwI01ptHcXkheecfkXFB2akM6vhBI//cvJbd3Qz8+RuonDhQXUHm4
	 eP+kgtp8J08pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE8D5CD98D2
	for <ddprobe@lists.linux.dev>; Sun, 14 Jun 2026 11:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178143519370.30403.15898179674624374005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb2474f9ba5a69e1186aa16eccec5143daa8b3b1b556e862ba8d6db26fbb5734
Date: Sun, 14 Jun 2026 11:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781435193
