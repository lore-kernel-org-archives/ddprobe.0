Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B4AA2FFF8D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:28:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783247314; cv=none; b=EMoiRSmTnARvjJjPCrl9kl7TliAedezeEmqdoEuDisGWmokvkxPFXXQ5dJOhvOu83o1EIYEM+Dr+v80guZ8YyhNDAmLaB6P0PuC4492B16UA0UXiIzmuyKHXSHd6U5wTfsKSjU+y8tjOSFxdJ7qFcWYhauBFwOldm6vi7FSO/yo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783247314; c=relaxed/simple;
	bh=80E0nm0zy0hYnREJtAtvK9bTNrlY1yolCJR28J7keK8=;
	h=To:Subject:From:Message-Id:Date; b=efBrky952HVRRA80h7FSOkGmUPoSXiC4kjH8I+9w0IoO1BqGsdnen0prXqMFpeM+QlmyYJfti5ZG+t62lGLq7msZV6ZacrraBm1GXctWucRJPgwRKEi7a1GPgLHh+8SWlsLDCT4NziwhWADkHboeqXJRp5di4deMgZOVyaHwpr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OdMR6/lY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OdMR6/lY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD712C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783247313;
	bh=80E0nm0zy0hYnREJtAtvK9bTNrlY1yolCJR28J7keK8=;
	h=To:Subject:From:Date:From;
	b=OdMR6/lYMUAJxhIX8h//hgigrEulHL/KRE+i+6JfUAAycqFjF/Goj6IVhsY99pIx8
	 DMnRVPtv5k9s0UZ2Q2yCQBN5wK7v8YYNKLQ8V5X+mon9VBqV2t1DhgRYvA+/IO43un
	 zY5EqYZWdVh905hOQpB6fQSQygngQlX0NZJ4yZni3SRDNavNCSF5TE6ZOLmIG8FWrQ
	 AiPW0P53vHS/WWTOFYAEAt4o/Li9DioTI06s33+yy+oQ436Ev/T02qdc82ReND80wp
	 qQlHsG9NrpACi9PZUxWO4haAMst75fAjYNrxPYg4DHlvGiPpQAjjHUA9oqbav1X4/5
	 JoI5TRU8zSQ2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFD3C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 10:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178324731368.8262.16216537744188773387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1479bf2dab498e30096dc97b4b3f40b446a8b795650022a99ddb4c16ecd63b7
Date: Sun, 05 Jul 2026 10:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783247313
