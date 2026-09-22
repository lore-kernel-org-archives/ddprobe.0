Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8542F7EFC
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790041234; cv=none; b=oWwaKGGjJ5mwdQjL9I+omim8t5as7eTzPr13paPz52fPV00HeaEdaTjG7zfn/rZ5PsJEfjUaBEiXASlMTHpNoyEK3asWP66zsUxk5BTDU0fJ4quWoNnhrle6wzCNe97Xek2FQGtrlwFPlEm1HGLrpxyPgCes570vwZTZJzhmUkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790041234; c=relaxed/simple;
	bh=DaPW4ua8c2Afb/M/+GeoaMaoHkdbjwD6dvpiF8J3ZJQ=;
	h=To:Subject:From:Message-Id:Date; b=Y8Ux4+FkOne40CP41X+XJUqIxeny7IY/e156aWjBXiPUSm03VlRxkyGUlIn8SCm5XHfnFDuMGWW0PiN9VPoU3b9iY7CvQBUaiS1bmkTGUNOlOicGFNe9lKUf7Xx6uXI1tIYg8BcRhjh4WcNuhqvTQroHKf09fWX2rqJftCkCtQM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pjbc0j3x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pjbc0j3x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBDCDC2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790041233;
	bh=DaPW4ua8c2Afb/M/+GeoaMaoHkdbjwD6dvpiF8J3ZJQ=;
	h=To:Subject:From:Date:From;
	b=Pjbc0j3xHkKNor/a6+KXvOFMMoJu0ny1iAQHSAAFVcmP4wplMoHM3dobOs4LnGgiD
	 00wb6T9209nuVuyX/+JSRP94Hkh5Q4TFPtLlqllVff/n1Z6EQ8xs6N0lAKBOHE/S4z
	 Jp+87z+2oabPK7YEhj4rpvlh7/F0ptsWUq+F7yUT6if/JPtdPOi4N92SYP8b/SgqnC
	 6AEwSOGACEadPf2zMQypoXBqPhvTmVrPySz76g8IWCSsWDT0C8zXeafaYpUQ9mac1H
	 VfvsZSdArCwZZ3odeN68ua91BEVPdWTtnPyF4qlC24IL2GL4XxQ2GP/WOnyF2ysHNS
	 Q7Ps2/l2iVNqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A985DC982FE
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 01:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179004123368.17785.16211689280777043525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2af8280ff5d88d82b29e6a531b72c5bd6bb380cc1fb323ed3f0590b9e8a6f6c2
Date: Tue, 22 Sep 2026 01:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790041233
