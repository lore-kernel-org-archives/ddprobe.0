Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12ACF2BD031
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763612514; cv=none; b=bc0HXsiW4RcOff4UdKktub02ZNYoJDKEimeE8CpEsQZuS/aXv3tTwGrzODuDoatkWZV9tQYwuVrAJtC9X7EpRPX2IVLUQAYf7+vtsMhaLcpnSzZqbjyAfTnvoU8RDGop4Bd5Z3adJtkOARW277eDPvLonPQ5XcZtkd5IB+h/ByQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763612514; c=relaxed/simple;
	bh=PUmumhvbK1xqCY0e+h1Ip5P7m6wVpQaxebtROgQVLDM=;
	h=To:Subject:From:Message-Id:Date; b=iShJF6+6RABCpi/RQ2JvjRouhmxolR3r/0tMx44aHjtCWg5VMztnvRMJ8+SUBmkPgADyeN2BsPG/0JEoZapVhYPEeSre5TboK3huLw6pA7tbRinIG68eK1fQv4/PTVjXrI5P+ItXQkD67au/fwOSgqvi2Wnc4i3Z7enw2MIB3v8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkRsxVQb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkRsxVQb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7C15C116C6
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763612513;
	bh=PUmumhvbK1xqCY0e+h1Ip5P7m6wVpQaxebtROgQVLDM=;
	h=To:Subject:From:Date:From;
	b=tkRsxVQbU4a9W8st4HIk0NWk/0mWtjS2cFZ8Bt+Q7J8F+Lh282BzElr2Ok17okOyk
	 O1Wn3PPTV4E1Xfpo4/1qUU2VWdk8zkNpWdMFnkaogL5NhwvPXQXJOMzQdV3TbSoY2J
	 ZAytb9WfhWXMxp0jOFlp9agVZjz0AOdXbhpcbPGt/cPlO5Mgw4uhaeq55XpvvzJcjV
	 7pSow3VY6d4trEPum8BTf0hVFZRefHtqTLhEhmiY2EMJbt1im77Xrn3CTzCffZAD4I
	 zrDDjxp/vwu5NI1MBVH2DNHpLcXz8DysTqesuvUaq9m/ga8oiSyDA0OOAw+Ch/vB59
	 DzxVaUZIOw1/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9536BCF64B0
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361251360.9314.13204825079818757367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c589eaf6ef4cc56019efbadcd620147dd4709dcedd740dadccf377e754fe194
Date: Thu, 20 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763612513
