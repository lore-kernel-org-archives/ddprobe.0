Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D64643DEB2
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790754034; cv=none; b=YTdDFWi764kWlrThqPGIfpTDG35BG1a+2SO4u7X1zbgp6ePkBLRxuEld30tdJk6Wl6omNYBft2lCSPy9WYlJDg4ee1tr/bLr23eYjt6xQiltIgTLDC9+qKur3Ejz8y8Q7+y8xfzkSVEC/+AnIwzPHnrmQlQDTR2Xrks8f7gjrN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790754034; c=relaxed/simple;
	bh=MVE/0RLPiBWuAZEmMdVY5b9PDMC+Tz7Cqul76aB9+MI=;
	h=To:Subject:From:Message-Id:Date; b=HVlSMNDFWRmZMyODReVpfofOjS/18wIQni3nq3YrqTi6a26rvnGqH33CvisL8dBRFsYc1sSfTiy1dyTGnMdWMhK+uS8Jb4HhWOogln/HC1UcKjMUQpUlKIAnJRwMczMOYq8NBMXoZORJKLwuwRes/uZ7A2V17GNHTsM2zIBAoTo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcBtPQNJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcBtPQNJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4562C4AF12
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790754033;
	bh=MVE/0RLPiBWuAZEmMdVY5b9PDMC+Tz7Cqul76aB9+MI=;
	h=To:Subject:From:Date:From;
	b=gcBtPQNJPA8R94C69UCSX4WgYGQUlBYhJ8Slhzeh2sD7DKrqqqU3k+lMumponsDly
	 pyKGBTFdlqPH1rwPMqhmN8GEAczV3D03DoN0do088YSnOUJg0B6q78meh3cbEjjb91
	 umCF04Q0W3IG7n8Rsa/1cphy7A4QWDQ8/nSH4TSeEZyF3dAReAytawGax4KiM9Z34O
	 TzYeazD8gvaoDdE74VbWAsKHO/d/MP3mLMI1Tg2IZbqejw/c916roA8Fwa18gHALWx
	 UA7RbqlHAgX08t9bmQU3C6bGxvtLObjmgmYKqLV+MzD91BOPqqUjvX0sX+7NKoZEAX
	 coyZWaSYlSAfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1CCCA5FB1
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179075403369.4509.11620687197287569930.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b38d7c1bdc28b20a51d49c499c9866b0d7e1ea31fca836e57d64d33cfc521491
Date: Wed, 30 Sep 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790754033
