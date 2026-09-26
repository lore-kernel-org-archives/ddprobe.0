Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5868C207E00
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790450434; cv=none; b=g9UXEKQQe9oc0A7UxRcohC+FtMGxqasAl0lSwaaKzxgS1gKqFsF0k0igbc1sUlihYWHzGy6whCzoZh1Uv1w5lRKqmjwCL5wFrrJunMymxPwsAPoQmt5gDMQ5IUqNFE9yPRDGar7+NdcFTNxjGLOQVzH9HhUwg4wE0SUYkTFGH10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790450434; c=relaxed/simple;
	bh=UwhLHvt3gRtV1PDL9NZjv0jxGK34r0vF45fMBCLaIo4=;
	h=To:Subject:From:Message-Id:Date; b=A0Oe7H2jJi5smDHQyChTQphGfqBU4jkqcgNB7LU+R7Jnehb7ILdslCIigLjAKVHwsTOkfN+YULHQY6M7InC6bWjT2tdtx82DZZefBRWr/tN9IR2AnlNulpYrVACeNA4eRafXe3ds+mF21MaqwKItUqCZLwM0ToCjx3ROELBSOoc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t895CIM3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t895CIM3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4DEAC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790450433;
	bh=UwhLHvt3gRtV1PDL9NZjv0jxGK34r0vF45fMBCLaIo4=;
	h=To:Subject:From:Date:From;
	b=t895CIM3F6iJfNgmv9gFyL03hD4dvtkIaokwfaq7t6ySMu4Rob/ktUKs46TUlTzvu
	 sfNiK8+JU8XF9TaTQ8COmI9yDEnmPXQGpHz+lNifhZbQkctpGoDUzvndJHyiRLyqt+
	 qjrFyvG9DJCN5qsfkcjKyxqKDjeYnUYgO3dh1IOah78AS420NU2xS0do2Z2/rAmyDR
	 GKu5vurGWGMESuOOkcxF72I0keUCNOaT2EUDKWmGPokrjQMNj0GcMEfwhh4Hyck8yy
	 6EOKmrLYybqpCXBlc7ontl9FMzYGs+E0RPkXG+/O5jKhaUKaRDFwNvb/gUhLsxKnXx
	 7G4LEChdvS9kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3ACC9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045043369.29458.1950039643942950103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: caf2621a61ef934b80738e9cd5b83ccf66e1ae13cb94a14074d72b13adb59c87
Date: Sat, 26 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790450433
