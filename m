Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D5BD2E371B
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752406194; cv=none; b=uPHm+n9mYOEIFTJIM2I/HGshNpsj81dbM3DScmkVycfI2sc02fp/yy1FNvqOnwUsnPnI11+u5okzomMyaeN6mzRn1Z8JB8IRdrUt4YOx74Yta27cMCZBw1nee5OEGe6DrGR9Ngp7nLDO/SKmuC+5chO98EIDPSee3/9QAsOugug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752406194; c=relaxed/simple;
	bh=OLA38p5L29UaKXqhhEG0lu733wpi7txYBObvFeNw4Rk=;
	h=To:Subject:From:Message-Id:Date; b=Jrz7N+ZD0FuWkOFgAYR1PBlcSSGs2+qtVLLFWzrOTm/PiwTld40SH4PuMm0zSYuJl4lRmv4BIjOFVYmvREehZPmIhE189jQDzZ0KA4zfh//i4WR3SlIWhPAxzB+nknFvZznsHWr68O5E2CcoeWW/NT9sdwiW45JrUyx0qAoQhTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iOLB3Olj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iOLB3Olj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E02BC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752406193;
	bh=OLA38p5L29UaKXqhhEG0lu733wpi7txYBObvFeNw4Rk=;
	h=To:Subject:From:Date:From;
	b=iOLB3OljaDFm+nqA1d7zUagIIG62+fpZKV3cA248HX101ZBQw8nttKXnSW2ImHDXS
	 /S62c5W0QYae0smWi+B+rpE3CIrfIzMo/kIYdqMHodj1Yy94WVeO04/gl7bWUDDayO
	 jFMPyZdPkpYuxU+FYgQjv+6cibwxjp0Ftog7WamO9JgQGXTgxTQJ8ZKnlb4yeeuZ+F
	 KhlnviK1ixL85AemFfkr19PCdHGIicdulHNql7DGjMI56t9P+r2xxn1ZAPRu29Xgr1
	 +nh4i2sSoMye8idShlRvqPzK6KDTK4mROkNi7AluAy+ZwEymaka2TCxbskWhKR+1C6
	 tTyIFrb9kl2Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E873C83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 11:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240619357.24486.18350973455477069201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de4aaaf3aa13197e5cfb0c4fc4508433b2ef77ed09abf3554c4ea2367e623bb
Date: Sun, 13 Jul 2025 11:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752406193
