Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFB0224D6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782599914; cv=none; b=At7W/sQ71g/DkZoTR/MuL2cF6ecxxXLx+BmDPFIcw3F+TR4J3D4i71ENdDIVldWnUjoGei7WnpjN6OUuk0cLnVbr5JuluidlLAov+DQxfyCtjmkY9nkgLCSnHXhlQtIbvjECcopZL3ovq0qbon16RlbjJkAOpK4UDVTHlte43a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782599914; c=relaxed/simple;
	bh=5v0N+7xJz0tDS6Uk2p9GY2rW9Uf+STtSTk/S2yYuSpY=;
	h=To:Subject:From:Message-Id:Date; b=tMrfSqapSNJdbt/Bfa1yCt6l8fERg7T0NCf6FgzONY1b77FA6d2SZ+Rw2Tj0gx3Ci2tOoi7KieTnN3zCkBEr1yGo4E28GZHZkwt72lbd0fi2SW5gtZLs6ECj6JvtBsTbiK+qdMMSk3mDm5fmhbJZKaU06F5XkEPSlyaGoYuna4k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lcJMO0No; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lcJMO0No"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC075C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782599913;
	bh=5v0N+7xJz0tDS6Uk2p9GY2rW9Uf+STtSTk/S2yYuSpY=;
	h=To:Subject:From:Date:From;
	b=lcJMO0NoG2gZc/Jn/qBwkCdOQjer3bLCQgQqh3jcaLIOXsbigXcExZzSLbhiFuQ5O
	 h7J0MNfNdIX4ejpuOCi6hJ1K3wopLT01otv+5p0fI+yHBwfsxWkdgCroPOXdyI30Ju
	 9JutvJnydX7lNQy157S6yxv1L64VJiihHYktIAPMlaLxv8EP4nJYbNlEMFBggSL1Iu
	 3QXLLPyDOW873E8Q0SlAeRZpqMukHAA1d4PJdRWys3juzIh2ABUi+8IuWkBDHhDhjM
	 d8t+RyvOnPAglTKggs+JUG9nDZB5+Crl0Jr+Fk7EpQwu9FTfzFuNwUIAChURM2KqAx
	 HCtRMXHRiwAJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB616C43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 22:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178259991369.7237.14196309750613893846.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a8383dd0bfc5f253c45a3a7987364deb6fbbe751057c583dfeeca8f2c94cf5
Date: Sat, 27 Jun 2026 22:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782599913
