Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 461312DEA95
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775066734; cv=none; b=TYPHphnXMrAhqFifMlw7TqM0Ke5xiZJywr7X3Ro/JY96ZfCF3XkleibFIh3ICyI8jaY3iavc2BYoyRksvO4bwNrSNVlgwCzQY45zyqEtoLPLmMsmn4iijCpt6lv0cby7Fh6FzYDicOL5dkWroIxl92tF2pOT4gWtXqdb2aAGLTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775066734; c=relaxed/simple;
	bh=efM5rJJvdwnvGNGx35Ruk5LgsKKaBu/9KeqezSDBCs0=;
	h=To:Subject:From:Message-Id:Date; b=Q9EXtGZZYyww8YFBonPRBDtXseSfr6y/bOYYRFV8qTUufCOzVaOBrlEUW1ivndg7c7GXM/hgW3T77C3MZQS109VAn2kL4LJYkPS9L5CS4H141k6f+YvECSRVjArrV+g+9HMEiedMX+mzZp4HAKka7AV2o9nCLBvDk7wu5UiiT3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGR+jnvW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGR+jnvW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEA3EC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775066733;
	bh=efM5rJJvdwnvGNGx35Ruk5LgsKKaBu/9KeqezSDBCs0=;
	h=To:Subject:From:Date:From;
	b=MGR+jnvWm4jcqcTue/St52SnXZmxEcRFsKp8SRbIpNEU+M4aShoRBGZMRqCgEM3Jj
	 0qvw/qwjcrW1Jgpj+bpXMzTLU4yTIjoAELMMP79cmUkR8RTieaaBNkreSMqErVB4gf
	 CxjAjlRlA4a+Mc5rpiSvkO4GFJ9mb8ZPph/bisCU5hKwes1MdN3wBDtSz8re6NpsfJ
	 iV9KmXFDoc5v2s2ThfVMR4bGsqazWm8ymq/h37YN3ZSE4PpjMMl5nA4PZQwO4eaDsl
	 PSHoD6HIfjTHUFS0SYkfpl9Cb+HZtRMhaihKbh84tUs/1SrcAfdyoUM06nd9rW7815
	 tOZR5C32Vxv2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC317107639C
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 18:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177506673369.11142.3994379522568981447.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ff7cf98db9ece5cab53685d67abd996feaae57dc53cdd77fcb39326366dc41c
Date: Wed, 01 Apr 2026 18:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775066733
