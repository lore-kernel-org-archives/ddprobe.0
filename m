Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5385E33DEC8
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786458034; cv=none; b=gHgrl7JMBjeKymtsdLn6rxfVHVYCjK9NSYaOL/6dMnW3sab0EO9xtFB81zjq6G7jHephyF+Y+TnWufx96VxcwurJ4SVezlG38k3G455PX8EGXRaN10z7clTV/3tl5BDLnTetvQX+pQ1jxoCM8rBioE7HK2Su991iG3xQ30uWDe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786458034; c=relaxed/simple;
	bh=loXSC/O9hOu/MxCMubnXidCnh5xdeEP0S1Ww5BVsZTI=;
	h=To:Subject:From:Message-Id:Date; b=Wgk5OliRGC4SApuS5zMETkHSM8AVZjOhI/GkcaEDQ7H/7+H5y8Pbvt3F6lXjXfgvV1p1TSzIY47jdzskSUQe9mdudZHMZhvbbjNYGAYYPsf2uI6O+yKwo0Y6KLKtP9J/ssR7hZjk3RKhxrFfT2UlC1qAhP03yfqFvEDItvwvjv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FYGXTvuV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FYGXTvuV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC8EDC2BCF5
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786458033;
	bh=loXSC/O9hOu/MxCMubnXidCnh5xdeEP0S1Ww5BVsZTI=;
	h=To:Subject:From:Date:From;
	b=FYGXTvuVb5kut7NzvgJMOYIiY66e+qiEihCbFnoDpscDmX8jGvDahS46hu5xp9u5n
	 rZyQzvc2qj600P9k2HXNpMXMkCsgOmcGlGFJMC9F85P3hfvOsjqCpgYaZzNGVF5PkG
	 EIho3ZqJC1hOIw2FhlvSolbIeukxKrN4/00vve7DJchDW+kleCd/f0dOdPNDb7bRqL
	 DmTLGlK4Jsitj8vnRhO8M8lncbgoubHWRiy946MZRPwN3aYFYV3GK1BD+Iuk0JIxX0
	 mrYoLJQR0sFQL1SIradcDqN0sA9MpfSrH8P4ym6cTQ/H8EJjd/IvPJx0EZv+nqBLI1
	 kyQpP0Fo/GDtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA103C5B572
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178645803368.21667.7642036621401999274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b6a834638733ae17e6eba16cee790e6e8970d4ca812a285ef219de45a226a1
Date: Tue, 11 Aug 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786458033
