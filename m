Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 437EFB67E
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722640554; cv=none; b=JacfZRlJAwBsVFYZ8UbPnkk2Gy7tk+HB7QxcPNnyuH7XtZQB4dcleQEcXrvDmoprMkXKEScl40iRMfB+wbSUrYNT+byG240j+yyc3k6b/2y9eRQS20OiiPh00v5Ap3rmR4y7R8egh1kO+8/R3cFcxqjrukTO6/J5cXTnc9Jwqm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722640554; c=relaxed/simple;
	bh=ODJAb6GegGckYn6vyzD2jXA05mw4L9pLT2AuMho8pQQ=;
	h=To:Subject:From:Message-Id:Date; b=RpQdEs/RekjMShTgC8nkolH1d+i0mKlqbOrhSenIxtQx7gYv+F/pApty0IS/WE9IaVBGJdgocaEfIBZGAwd2Bl928XORNYzqk2w0V85B/zlyrajIrpKbKC8dRApAxNv07d58316IUnmIgU78ahxnQduDr57AcypFLP5vNES12PA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nM5ENPTI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nM5ENPTI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B794EC32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722640553;
	bh=ODJAb6GegGckYn6vyzD2jXA05mw4L9pLT2AuMho8pQQ=;
	h=To:Subject:From:Date:From;
	b=nM5ENPTIlQm6jV6gctKIq6oiQ8UWG/m89tMjKhjR9CNyqVREQnVVEiVb/Y3acQhRQ
	 ra8Nc7lSP5WIc5JXdekR/6gn35qvfYAyzCdMf7AIlHOeUxCTvEWvHX/YSzFWZMCMyV
	 Hb8hmjR4iF7U+weeGm8cxY9Uz4ffabmmgEhCnak2cuM/azCqqqUxbnSc69YFHptAxh
	 2ys7Lk2tIslZHKPLVDrnxm+XWx47r/TyBiRUVnnNCTyclYIpK0zAa8I9guiEb3629q
	 WrxbhYJ3FWcBityYHnET+6kAWsVBACTskxLthcAxxPw5+gB/Xx6xsOBcap0cD+ga2T
	 Q9swulPcbs2pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E71DC3DA7F
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172264055363.13011.11909195880836832147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33fbcba13c5d2285071d1a2f32b3500b9d2c9c91d94857adc63d5781f2703f04
Date: Fri, 02 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722640553
