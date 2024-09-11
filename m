Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BA595680
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726034754; cv=none; b=bbKzrCNt6tniFepGwXN7FMiCoF6ejQ7cLB6kTYVFA1wuLfcGTN2qKY6xbfyODJRgD2eaGA0E93vMGXKXnaKRe97/OmSsc04AaboVIG6K3h7fkPE/LALEh/KGHkXYg6ol5ttW+HmRuQGoRssz10W0g8LgC5/uaXtFdfeoBbQGcOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726034754; c=relaxed/simple;
	bh=RFvk1fyAuk02pheuMDpZOfrOxOVRWRHokiH7hHVKQuA=;
	h=To:Subject:From:Message-Id:Date; b=Z/4pGtLmc167l3OIaysaT3viVQzb0ZSncSnRwYGcZNRgYhmUh2TSgcgEBo6X8QoU8L67P4dgLTZctA2QLOmLNy9rUUiCXWcdDV9pqMH4dOxHjwimqVZ3Tm7HaCpBa4s7HIkaUc50zYgSFmr7pW1Ad5o3qkjABsxRZ5SJ1hUjNEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C1iquPCz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C1iquPCz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE15C4CEC5
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726034753;
	bh=RFvk1fyAuk02pheuMDpZOfrOxOVRWRHokiH7hHVKQuA=;
	h=To:Subject:From:Date:From;
	b=C1iquPCzB1EzdZ/V+3FPWEFYS8iCNl+0ymRuXNrNt3Ks/RvT8yKUYgSU6SdsTeccy
	 OIqryigHfjCYgQbvgEHtUsXN3wHtCjs4gzqG299HztIYqmCM7xpjEqsfVZI7mG+prb
	 x2ZtnsGWwiyuUAxy5LFHGJeGDP0aMI8tRmiwLfCXFX0EGpvRRGA6fhNfrUzWJTQuli
	 A/AMlvXZfDIMfUaz76CTqCpWgscOHTJxhGxwhIHAbPfA3AwCCLYDv4LZuMYXy/LTRV
	 0yFrnn8DDcZTQX3iisJ8mZVSsJuhtasU43CGe4U5INRylvzajj3tbg3CpnbLp0fOEr
	 uLiH0vOKW4Dfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCF6EE01F3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172603475358.21077.13141671130661815858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b649c5f01de54eb9de137fa2762ea897919505686f90a83f8666b1d61c86597
Date: Wed, 11 Sep 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726034753
