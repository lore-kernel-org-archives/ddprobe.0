Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D65946B5
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770944694; cv=none; b=eJxluXEmrbqFgSiKGBGuofc/VQhrirnU+NEloutYnYEchMQGsUzcur3eaes3AoW71tw4Fwx5u5al39JcLcV87qYnS8Wex7hH6H4tFUHeTKQdRoBLEN7h6PMoLi+LBRDphTTkZwDT1wJesdGqkksnck0Bhrprwuc+Z36Ko5+tRZk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770944694; c=relaxed/simple;
	bh=XO3Xo5BotXHoo5RfqzV36Pz4bqgVl66EXM+mcEAEf2Y=;
	h=To:Subject:From:Message-Id:Date; b=BZDj5kBR/6MHTetN4Jpo76CzGcgx/KQghjPXXX7h+kYK+S7T3O8ZzaCeMsfYYvQoc0yFh7d7pdppBNirnAFucEPDa9wpVaASBh6FotVsPEy1mZULN6Fx7CrdH8pr6W6HGQ7PpIzGetftMDsjzBVPIU1D3yUyYi8d/CcmkYUoSm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I+kemmfo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I+kemmfo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE462C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770944693;
	bh=XO3Xo5BotXHoo5RfqzV36Pz4bqgVl66EXM+mcEAEf2Y=;
	h=To:Subject:From:Date:From;
	b=I+kemmfoiArc2MFfUZ7upyoLGcJJA1gpV5fcasoqdVLiUgkQqnSzspcYZeTXpfOi6
	 /Fbxh9nfGdn0aW7CYGSsEjMK6ENwY7ZRzXb/C/w7AHjioHWjdp50dFvAaa3KBb+6i1
	 kEFFuWDKBxAUYifNh35IqOzlX4ncmfYNvufZpCdCVYD6Fx5w41q87Hv49oHNjxuZT8
	 afJpGEu74/VAU2JqyY0FJBvUSH/qpEn7EpatoWKcUc1V9mYV5NTprsjKGIT2KkTpDP
	 G/FgC+s1/K1KR1AcODdP8pGLKlpszjPh2AhLlOsgl15zS2WY+bBNu0DtP3UKjoj/5z
	 zs8rxfDwqwRcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96929EEA871
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 01:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177094469359.32002.9329888542780463147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d34d370e4f5d2a4ca4e63e23f8494ac38f44dd31b0ed4e2d368fb06aae468ba
Date: Fri, 13 Feb 2026 01:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770944693
