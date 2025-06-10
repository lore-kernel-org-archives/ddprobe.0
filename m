Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4EB21019C
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749577194; cv=none; b=dy6vQnxum+QqSK6DncyIDi7uYYbkh83WOL9RjfyAp1mCqAQvnTciwhGLLfXA8Y4Xp207xx2QDT/KqL7pJ0PNmtXTGWtZ4IJmD7KQYoz2soxOXRD+/DtEAhA+eCROnm/c93UGQDQhZljJ4KMZdlftf+h/0cuJP7BcMFi0VuvIdyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749577194; c=relaxed/simple;
	bh=j9JON/BfpyFv82LF8TGwzmes3WqZWhzX+CAGqpnTUPk=;
	h=To:Subject:From:Message-Id:Date; b=qb9c3HeRyQZC8yp6VePFo8IZ9ai6uP7dmIEuSVdjZ5JulCLe5EAWtN1QYR+nlm+cPgzIDZtB4vKsdiZeU4XQIsEaQsqPq5vl/YEShC+4KfhSTvpNe5MrEC8zPReqiy0aukW76ywNG7VmwP8JRHYq4lC4wRlksSVLb7fwIngH00E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nv00ANfy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nv00ANfy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82A7C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749577193;
	bh=j9JON/BfpyFv82LF8TGwzmes3WqZWhzX+CAGqpnTUPk=;
	h=To:Subject:From:Date:From;
	b=Nv00ANfy5xjaj6Kd+7bMmXieTfl3EX69Kk0GLCITI/VrexuS+/6sUuvf9ciY/Agic
	 Xijd+Aml6Kx1C+6b7swgf8+9mAQWjBjw3MQMR47QuT1f3MCtiKsqhGbIkgmjpsCDBk
	 TLLqpQUJ0RY7hWK3yNZ+uLbtJtl25wjiQnWfFteGLashv9+Dj4wjYRresPYZK3uCgX
	 IHnfqKowAmWw+n10Edyfi/FUni8wNIkYPEwUkS1KYkC2tuFOjjcOevIFjybg1AU4uf
	 B7PdhHXXPle0DEOdtx2JBtTDdwNnzGZF5bH/5XjZxurPOx5GhBLirBV6OOZSaj44GQ
	 LNH37bl0CYFmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9608BC5B552
	for <ddprobe@lists.linux.dev>; Tue, 10 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174957719360.18057.9707453678948208676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d0d24f767821d10b33ec88a32e0642c7241040210f5c4b9cd5d93a18127ddbf
Date: Tue, 10 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749577193
