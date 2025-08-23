Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D48197A76
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755974394; cv=none; b=a2BlMBZUB0DZ3p700isN9q+mwrpoCKGcSX8RiOYrsyC/Ogezq22fCz7KVU7UgLB/QOnUScjvdmYyeGcpP/CnZIp8/qnNRL59LiG1LS1I1hPqxMZ8BwsoRjA30mZovwbtEwFx+e9yBaPanpuPY6tovEWSNv6WhAOH+3q/60auPgk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755974394; c=relaxed/simple;
	bh=dQWrhqhMLRFyIGLANut3FI1k/aLOmok6CrGxuWAFpDY=;
	h=To:Subject:From:Message-Id:Date; b=qoZQ5kZ/c20OoDZngwj373hmoAvUHD6eSB3fY4gSq9wTcLclu78m/LGyi7RHRJdleV4gw2/x7aNwrJhWbUqzwFoD+grUB8NA/pqMQSGOkRaI3AQ/r+eMVacQdIwOu8jQBJQCZjiDE42yfZbPUtpi3HWmOvxWxVRR6CPRSB3LTgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hf/Z3Ulf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hf/Z3Ulf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A167AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755974393;
	bh=dQWrhqhMLRFyIGLANut3FI1k/aLOmok6CrGxuWAFpDY=;
	h=To:Subject:From:Date:From;
	b=hf/Z3Ulf0BAK2wYoP2g4jhTYpK8nckk8snDtXXbd2TxD9Sghmj75+AqPH/R+gN4e9
	 hASIy8wot2SYR1LITO3TtZO4OtO20wZkhjkYRMBAt28sESgzbmehxFfjldQgZUbWY0
	 0CAon2MkxPwcxVia68LRz161wvZULB3Y3YojDRDIvfpm5yhcUJUSMHq+Gdky4kn42C
	 POOaeBuc3S7gyzrbpW6rKv9L12Jb3QQGoaKmy5kKiFp/lO3AQvoLPPdIB6bOrhAN0I
	 CddmzbWubWezb9mnyd12rW5DA2yT1uyNVNJCUjT5vXfCuu17hznS6SeztZsDrvtjA+
	 6Qv6C40cUY+4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEACA0EFF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175597439357.27654.16003113873149891552.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aee7880ab57033c5c7571d5dd6099d19a86d48c063d7b1f3d6d42392c0947535
Date: Sat, 23 Aug 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755974393
