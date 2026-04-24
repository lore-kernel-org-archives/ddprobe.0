Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D222BD587
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777046854; cv=none; b=ncDGROVBkvuoEjficDEpWLvpBIWzYv14JV5sBJwMRo/kqa3Og64BWuM6RZtcg4blQmtLeCnCqSv47M4xcZZOpGa0OOJz3LXo3m5xiKWtVp3uzZYMC6gIuRojlnkwgdhbBoMY0sBcm5WeYcIWuytPG5Cn3e+78idxOskguXDCK7Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777046854; c=relaxed/simple;
	bh=W/6wsLrIRanuszvv4S78h6z8FnuYgx7g9c1fnCrtcO8=;
	h=To:Subject:From:Message-Id:Date; b=KVYsFz/m8J8EpRS4F27i3erYVZJQQQFr7WbVq22odhVVpDmGyxq6hytdMvUepMaXnXMtSXUYbhaPNl/HtmBOpFMOLtVEsHM1TG8xEhMOyClwQFxUAkWEpCEg0O9YXUjO+WuLtIe5BkDj+UVA+dQAqblgrcJkLybw21QEyJod+OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MPVUTw0r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MPVUTw0r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7D57C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777046853;
	bh=W/6wsLrIRanuszvv4S78h6z8FnuYgx7g9c1fnCrtcO8=;
	h=To:Subject:From:Date:From;
	b=MPVUTw0rl9sKbnK9Vd2hZ+fAdLA3nqM/h6uac71WUC9HJlVim5yLH24vXI8b4JNF3
	 YDLJyH4hfTSTOZ9h9+YjA6nLRnCbQPtLrjGdDN1AvJWVKpeYTd9ZgcLdVsGtdOYkVb
	 9L5gglhRGtQ5MgGv7Ca9gHDyvIKCTiL2cmP19xDzdu2AOPwNHtSHusjspiVTDBFxtJ
	 mZ81lPQsfKKMWRLtjHB6NICxiewMVOuP5Z8V58lJP60oHqA+/oZF9AmN/OWLC2EIlM
	 CXSVCVT2+QVFpR3daT+FEhK8NeuS5f925sJdFp60kL4v+HadWZkbHyxwnDr5cE+ABb
	 jrN+QEHSKqweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9A74FED3EA
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 16:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177704685368.7621.3389328431539535228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 28bc1fa62e35e991db0496ef94a025a6153a10531d9352cf4452e573331e32e0
Date: Fri, 24 Apr 2026 16:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777046853
