Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DEEF342CBE
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758033594; cv=none; b=U0da/QP0bh4RbhYEgw7XDclTDHVTxhon1Mj4NtGdplLBpKPlIw56cUTT8TmejtXkq7b+0ORp8qFGjeaFWvMNnz+MS9jgN+agQap8qbUzCFxgkhclpE0MFFG/ZnZph0XjVfwEjZfhVPYve7y9NDifW5KU4tmARIM0O3HSUZ9fg7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758033594; c=relaxed/simple;
	bh=kAjGs52PqPYmqnkPzec2FKL9uLLrXARrqlImZ9OPQZw=;
	h=To:Subject:From:Message-Id:Date; b=Y1meWxLlWl+KJ5hE4rNaEXgOoJogdTeLxYpK5lc1QhKBfxymodb+215m6oLg9JB7AtAwPfRxQY5Jmhk53/cMk1zM+X0MGSPKoacIT/8GWE6csVlHA7SMTEgnoQRmRPAm5Q/eVjjdj5QphvC7Guoh1SepwYkQOXa2kXBDE50wcsk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xc6xOPBA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xc6xOPBA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEC3C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758033593;
	bh=kAjGs52PqPYmqnkPzec2FKL9uLLrXARrqlImZ9OPQZw=;
	h=To:Subject:From:Date:From;
	b=Xc6xOPBAygRhkGbkFX7aWkDQmdNum4DQ1YeKdvfllia5YY8rfeJgtrRhhgNFrm+vs
	 kJ+UuKHAfpq2ORuUNz5EFF7eWoruD3eLzgRhpJGDo037t+g4XAoH6Wb7FUmFV+JJMX
	 d5T4PM4HcXHLvJA4b8zmqu+7YclC415jtBzEkCusjPQBGjU0eRdcl2T6taWSs5U6CC
	 bXUgnKHEpm1ZmnhpOjq29K8yCF9et5KZkd8PKrk2Q4DEJAmIjA45VHv99vwlxuXDth
	 BuTQgP1okgNDUxf5IT+XU0beBDra/Q9DPrWxPPEEVz010B5LuHRw8uQY/IkQGVMV8D
	 IOCs5slsKkrDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082FCAC598
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175803359358.14264.15251744728612793563.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddaf7f263ce8f7780efe34fabeb2996bb36ef5b6276cdd9588ed3dc5b92d891d
Date: Tue, 16 Sep 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758033593
