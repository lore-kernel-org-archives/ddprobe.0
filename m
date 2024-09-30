Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E1618FC89
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727701554; cv=none; b=mZkgi5mwoFXtkCoyxXKTmfTpQc2hOMbh6ltxt4JmJZrbpTS7plrDeCRK53QZYHChhHt4gX/ILGtInHba4PyLFkIyT/0gNbBReP2EO33esAtHzVqQqNaejjGX4W8R3JHO9UPPPd4AG2SmaZO9197FclZFPD94+9rmbOGJjcvR5xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727701554; c=relaxed/simple;
	bh=3J18301ysZsIQ+lOfiMZZMczBubulMiK2Tq/4iRFCRk=;
	h=To:Subject:From:Message-Id:Date; b=EDOZ4iEDkF7lSFGAAQQ5VaHosw1nQf2NJKt69qmfm+H0ixmQVod2Y3XgnBZjJJL6Rb8D/Bk8CiDm2TcEeNj440MEpSyrEEPWM8fr2rrwrfqSdtu9o0xHHBFnSAlk0tgFaemqI4GleqXmbHQ3f0lCHHKTfRi5hpqLMq9BOegMx8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyZAczmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyZAczmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7858C4CECD
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727701553;
	bh=3J18301ysZsIQ+lOfiMZZMczBubulMiK2Tq/4iRFCRk=;
	h=To:Subject:From:Date:From;
	b=eyZAczmRWygsuDFqUlzS1hkQTnftexC9/CAUbsy10aFUTpquj/BtSYgkbqdiAq7FP
	 9fm9T6zc30lC4SsULe3o/+XT3Cu36gbRCbTaTeYePj2HEjD/iX2TCoCW3Xim3I+aWd
	 R+2nNcO+oy1U6d55+PhJXsBIPBrGPSJtXJlM5dh6VhmGcf2UKLoWQ5cbwjvGfdCGWX
	 owgdjKl4LaWHnfY4A8B2LJyVaCqBhIxVxQSD1yA1k8gA8hepO4j4mqADK1yIi8VIkI
	 JE90ITZaRHMTS9XOdxlmKJ+Prg/8+hAkCZi41yrv5PBYCUDJkS/5BFU+0xi9G9ZPSP
	 ma0o7X98rHI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EEDCF64B3
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770155361.11532.15213051133444760083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fa278d06edc7da717868fe525ca86cdf0e2681f0f41f5f0b6687b1d4593370f
Date: Mon, 30 Sep 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727701553
