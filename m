Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26A101B1D4A
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724250354; cv=none; b=HdjWWFEcdo1UD0p9AlFMSxOZqOIseDklVrJ+hoBEkr1xKioRkRogM81jboi9lA/lxfiAYQHEJAhKG1XcJP5wxXAn2WXfFu/lGxn6JGD8mdJlyC524GhSZeNUm8fNhG/uGjSewui0+zRYCR9w4Njv++sH/i0+nu2DS6VK06Kqi7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724250354; c=relaxed/simple;
	bh=9LSOYSkLO1kHVYnB+uXt3rSfxd7SI9P2YLY6mgRs08w=;
	h=To:Subject:From:Message-Id:Date; b=Oj2FAFDaTerQIEMIs+n7LZCeV+lwPzwUoncdqzS7LbEE2yvN86QlqmCC3lMed72ExL/Jt2kd85z3X/1kQnLsO1wFhRznXO+gvvk/s53MUR3x/T3e666q6033gCwm3lXnfWgL4Qh+9drZUOSMG5KPaY6wwUuKPXhquUamG6eKunU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cIGPYFvs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cIGPYFvs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB584C32781
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724250353;
	bh=9LSOYSkLO1kHVYnB+uXt3rSfxd7SI9P2YLY6mgRs08w=;
	h=To:Subject:From:Date:From;
	b=cIGPYFvsNHh85xWbpZ7XeCdzJiR8scATNoHqpiS3yOm2lo1iFBw5UphNhv3LCZjmR
	 yd1peUGHUUeK1e7CDgJ0wpkGEGUa0di/o0/sjQtiKKgUB21QnHn/KuXU+R2orbdWmo
	 6SVfrpDaYmZgbzth1NXmxMa9eGMwfPUYvvdvnGfSrM8xZoTOv+mW4eBEdtK5A6yiQW
	 /bRoINSKgww68vylXWzwpM3ldjT9Q+9ILmIWYq0C8nVPdBQzRk8bK9N2SbhkxW4NKJ
	 hgcD5EY0KJ61ubbS2dyRk6qjV30UDQHjdWsonDynnB135uvJssxU3KbaNW7qOefBlQ
	 eSS7kzGDEv9Kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A2AC52D6F
	for <ddprobe@lists.linux.dev>; Wed, 21 Aug 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172425035360.28238.15956608746896988575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3776b41d3dd6c05813fe7f7b8d776524d767c360f28e0995488eae776af5268f
Date: Wed, 21 Aug 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724250353
