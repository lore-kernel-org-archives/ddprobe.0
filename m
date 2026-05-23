Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3164FB672
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779510154; cv=none; b=NEW4/ZiLqMxBgv5sEjf73awuI1dqI1KqfWBYWF1WL+bZJJBSkPBqFTj1JI+4Xq2HakCGHZMfxVZkF8i3Y+mN8kfjrwHXZkv17VAof4D3cf9YDMPzwLvkS5rcsFFogbm/i4s6vuCd02d6HMW9/NykseQe1ZQn69JN73WDQfMuNt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779510154; c=relaxed/simple;
	bh=rUNb6IkZW0xNZ5pOwSrZQAc6wJ4trf8Ph3N8G7CgGGY=;
	h=To:Subject:From:Message-Id:Date; b=WFmIULdakiSfLce36+G0sE973hUM+M2bBMZwnyMnbRKujgmGC9fAr7eFLU/g2DBV91+OWCuDUNoC1YgVdlImH8bgnxfPYVtTZ2tkKIwvT/gsxxv9FivkoOKu4KgYY4FKAyxHnpwlMEeDHizejMGID3PbXccgC/NgLwhXSqqorR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYYdDAz3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYYdDAz3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8858C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779510153;
	bh=rUNb6IkZW0xNZ5pOwSrZQAc6wJ4trf8Ph3N8G7CgGGY=;
	h=To:Subject:From:Date:From;
	b=AYYdDAz3A3Oo1SUyZbTKxj7kHoBoku4kitANndzo1Sgip38OWsg+EDdGmw9mneRmW
	 H2gwCMG3pBShFV4q5thDhQoM/PuZe1pgqAHMVy2y+tIh6AceI0/SpFSBA9gtYXtF8b
	 URNfPkg1KIKzRHGJ16QQSGSv4OW/9TYMUg1aWZw/cwUQqN42NffrByi9li8CN9sLqZ
	 tkbYg9oHWpSv9qTJrSKRktmi/sCCEHU41tFKvGL0Uel6AYX+u6UkSFMbSPwy2t9CBA
	 PW3R4OFDZr5KMMguwdYuAVlaJGU0hiDaqmDdvt7QpY8BGkKiWXieCPjBbm1ofV7ynH
	 f4YhArzIuSoyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A42CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 04:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951015368.6727.10693781312992457420.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd2cca285f2998d6b862d1cf2615758ced43e40ac617bc6e1c3535ce5a2341d2
Date: Sat, 23 May 2026 04:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779510153
