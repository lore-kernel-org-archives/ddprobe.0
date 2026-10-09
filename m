Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 406F43D5C32
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791582034; cv=none; b=Ov66Wn8oxiUEtAMGFzQ1Sqbjm0XCsLKctXSe2KUXy2mH1zs6RplY1VIxaL7PnkaBTmH/g63AGvZU4uz5iki4LAiK7RYr1xtpBnLnHvz4WNiqylIuC81tI6HG1kAYi+y9XmyfV+ZZZSnh4Eo8Ayc38TDvaGZPuXzEUXAcL7yHk04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791582034; c=relaxed/simple;
	bh=XQ1n0E9LmAcXC/tEzlktMBgM+8x2bBa75s91EW/x6pU=;
	h=To:Subject:From:Message-Id:Date; b=Y8Rvkwc2Uh/2u1PnpaSzQAluFZrwCgGlBAT89fiNkRFmbhydI2eYO3w96ddRJDnim2Cnc4u6isXp6H+Eo1MssSD+WsMJawfAePPb1wIklS1s/iGrDyOAvwi6pnorUGLMjMU3FkCNy9Io75k5v2aa81ivvIEgtXFiige0X7AdghQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PsT5mSz5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PsT5mSz5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3723C2BCF5
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791582033;
	bh=XQ1n0E9LmAcXC/tEzlktMBgM+8x2bBa75s91EW/x6pU=;
	h=To:Subject:From:Date:From;
	b=PsT5mSz5YX+ps1yBk+N8xnifVEr7v/iyqv/tKxjtFzv5w/S+XOKLh/4EsxENnU+8H
	 XwkDACkBtiVSu5rrwvQXr2yYHeT4HFyQD82OvXO7s7hIZwUvGnh5StBshAJ0cVhZYN
	 wEvGTaOHorFPEB4F/OLfQcerhU4cD9yAfl81tDzR48fhE7t2QosihkXlEOal5lzPBQ
	 mlQpeNtgBlDcaGMX0XcsEVggFA+KHaxwwtGlVpqAbxPjeus7OOI1cOg/13D9O0OK83
	 ffetrgjtAg9LR3zhamKkKSdkkkZL8kSmQATFZkxGwrLdh16Dy2FGBN0U7EwgaYaPc3
	 l432+aiEqYD2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF16ACA9EBB
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179158203368.5796.9206807636592292656.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64bb5448af414091ad07f095985fe37ca84c49a9ef741ebf4bb105c16e3efcb1
Date: Fri, 09 Oct 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791582033
