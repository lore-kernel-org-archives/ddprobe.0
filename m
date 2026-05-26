Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3633D38C2A7
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779810754; cv=none; b=m4pmtcuLB7dAWHcss0xbH7NZOx5kCXf2q8fpU6bHOEZ4HLgSb/k6XvHZFCEHf/Z2lFP2f+r+zpuN4dUjoO3XsrAW9AEZNtM3WzFYnCgw7Kx1kMhgzoiG/bMXR4gU5+87SZ1IGDA7aZM/7MPyhF5Or/8djBYn3tanyDLUFw0rfRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779810754; c=relaxed/simple;
	bh=zAbW9XRrHkF/zwiWdAeVOpkpwndsUmlVkmRLteI97nc=;
	h=To:Subject:From:Message-Id:Date; b=EAVXLSq+ezHYyW+BsuYjKU0oSW05GyqlQK/j1eL86tNiTxqcyEKat/abGuScrfkuB28MSQnMGugYDHTaFc2UKueAFREpOuQjfei+Me5sBzF6DfNRzmZMmIYhHIqOAU2LDfwTfdRMHGh3WLRIYOyg2YecV0tg1dZyvWqcuv7ZIYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=isd/Vf3k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="isd/Vf3k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1492C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779810753;
	bh=zAbW9XRrHkF/zwiWdAeVOpkpwndsUmlVkmRLteI97nc=;
	h=To:Subject:From:Date:From;
	b=isd/Vf3kVbcfX1FeGuCB02TxziRi6LsX9gHiurecP3oZiYYut0RRO9/AS8PoYCRwM
	 je/rTH8rF4gg9UOvFCYdrjzaT6+sOo0NgJHQcevD6D8TlCOYHK3CoNhjXVr+jBI1u0
	 JtrhfGeKms8V0AkBLDUeFVQLYbLBneYs24p7Wnb+1p1FJGgGL38s86bWIT9qBmxID0
	 tmpUXr/mn+qbNCN/LXY39hycf1fT3Fvo/JimMDmTIWM4OhXd4Zk54kGKgyloR2/Qgy
	 aXGDkIGSy4whZHpuvsIZ9CQnJzIk076SRL7Ehhu3OMatJDbpi8Us1U5eojIRCI0USW
	 RG5Exb215y4xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9335CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 15:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981075368.11274.17778586723906320173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f48c6c978f9cb7f9a59b10cea5212acc7b7ff8c2d387a8ac93ee57a2cf6fcf
Date: Tue, 26 May 2026 15:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779810753
