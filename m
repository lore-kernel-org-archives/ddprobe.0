Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16421314D38
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769321034; cv=none; b=GqaDTbFtUg4lrSxZ33W99pv+tbitIDw6SJCR+lB1zMNrjmQvoNtXxWLoUmipVSim6ahnWuyQxhCoDC+f3f92kNz8I1r+deAu9ELPLrQBFnfV7ReI77Ymcbf8Q69iRmyd+rX5M2vtHVJS7wbcCwabie551bP7tT5l35SyBubte2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769321034; c=relaxed/simple;
	bh=9uZWin/xOrZzU+bkw88xv1rzM30Snv2ZOcUtc85cNIs=;
	h=To:Subject:From:Message-Id:Date; b=eBdnFeTdTwd3yVAfCL5Qmi/qMXgjRTOAIC38GivVyIoQEU3QstaIQO1XdUgze6VcxYciPul8p861VBUcerVZLZ2586qSqrN9I+ITAEvPFq7B0z2sAD9k/li3oDr17vP36qU/ERzvs4UwgrObenhux9YoirPXrSEiPt0wqBc68CA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GHtzDegr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GHtzDegr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0534C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769321033;
	bh=9uZWin/xOrZzU+bkw88xv1rzM30Snv2ZOcUtc85cNIs=;
	h=To:Subject:From:Date:From;
	b=GHtzDegr3PQ1lfcQAwccqQULJcZ85yjCyLVnATpAsMtNkZUQ3DBgo8FFOX/EoP8qx
	 23qVzdg7YSLbXeuci+jlwBGA5feJnyeIOZkZyLg8Vvw/5Xw7+eFupTFKghkBPbocll
	 6P6y8WkMlxi40U+qBcZwYcDWc49VLwu++Hpyxg0gnRv/9fWHvG2gk93n+AqhGQtJ44
	 fkBH708harde3N8T3qrqYAIWTNP5hnpZb7KqBvKEQD1r0848y2l5e3kwYqmaGX9wuW
	 FhoNY3+/n65JJvIWxUtHN2IPYCNKwrwVXR9niTX+0EPH/XGHs594l/eed9UOQIVkoN
	 e2ClW3YXVz7RQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E79AE63C85
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 06:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176932103361.23091.17861478404592682024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f8d55ef4a4033d14b70ca417d059697689318c286e3fbc0412502da0c64082a
Date: Sun, 25 Jan 2026 06:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769321033
