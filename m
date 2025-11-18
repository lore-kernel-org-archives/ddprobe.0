Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162CC30215D
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763451114; cv=none; b=q1IbuecrdiD6+20qXT7wObo4x1xq3HRBvM9+8uQBWyEoeHOgJmtUFd+suDEcCIhWQJ7PjDnULi+Hc9HUqAZeoG2KQZ+tintvPJpGzmpvnb2BRODOVhvGVaqxgSPRPFhCYSOIiBa8+ctkcHlu/b2Hpv4rFFo/VcFbbwYWpK87fho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763451114; c=relaxed/simple;
	bh=7BQRI62N0132L8+Q+s7kQfizUzi3ux6iK+MATMjoJ+8=;
	h=To:Subject:From:Message-Id:Date; b=H+5WFsBQ0dBN6YDvc1D/ISk3iheQwiH/iOhCP5uNX+/UjcFZrf2jHryaQhfv9gHOyjCy+3mwYSIOkvnVlMhQ+QIgjhFi2/8YvFBog/+PkCYjI+HA+KxWKwkUOnPavD48+XgtziljUeKN7a8X++5NKcdxxfzHg+F0J5Hu1p90KT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XcZdFpMS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XcZdFpMS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE3FC19421
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763451113;
	bh=7BQRI62N0132L8+Q+s7kQfizUzi3ux6iK+MATMjoJ+8=;
	h=To:Subject:From:Date:From;
	b=XcZdFpMS/VuwXeMjFuJ66Yt4AXqZzIvJejrvZchfoOTTO0Iqy7nYUs7vrwQbFyelG
	 gYKJwWgpiV5CzkoXEcqiR3EufKikbUFnkhssSyYpfQxZRsYX72YEfhIm520EP7TE9G
	 u3K+SuLSHtF7y1kD+RQmoFSFnjBDHz0OR2Ez1LUFwlOms7e7XcCZssmlehfGH/RyIt
	 jbaxG/SCVzDSN45i1LRfcktCMNGsa/AZ3+3TvM+d+Pi8f5nJb7lB/tOOXGJ9tsBDbt
	 qs3cVRPWzQJrPRzW+YRy0jyQD7R8Pgo6RREMZbv/K9O39YqShJ8YtLJE4OclDcrBsx
	 Fwg2ks19zMsiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C22CEBF93
	for <ddprobe@lists.linux.dev>; Tue, 18 Nov 2025 07:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176345111358.9627.12613807999753497302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fac9b887275664d0a1554c59122e07b317318281c6f959875732fff5b9a3047e
Date: Tue, 18 Nov 2025 07:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763451113
