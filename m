Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43810AD55
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722779754; cv=none; b=AYKe/Yz0yc/Cj7VoWxhFsvA/pksK4NPOWLTc3UTMGe9hywN4wPESTtWoxH/sGP2xx+GDHuurf9+Vx0ZgS4F7EDMbBne43BeZIK+cCfpQ5/77ECMfzPK2BW5eZzcPTspgmQjmFhKUPH3uuVvQZJzEQGmnGK5UXYX7tSQPUR0VDts=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722779754; c=relaxed/simple;
	bh=fqN7GzxIwj5CeS7NQ9yrgXtlDBj8Un4zhF+RoE8hfm4=;
	h=To:Subject:From:Message-Id:Date; b=Q732W99KaC0W9pqy+50gRtGIIwNKzhgrgkgKhp+up7p7pec/lKMU+IAnrGY+IfFub+WM97i4bTjUVtjnN+C9YCarkKA9VuHNiVGCdouhA6D4dP/e1t0lIBcLI+jjXoTHurzsH7AkDuwIrg7jtew9T9r6rjhYcVH6Y7qVvTrSPbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jbby0Yy/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jbby0Yy/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9323C32786
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722779753;
	bh=fqN7GzxIwj5CeS7NQ9yrgXtlDBj8Un4zhF+RoE8hfm4=;
	h=To:Subject:From:Date:From;
	b=Jbby0Yy/vYc75D+SByvDzu8NGSlSxSU9HiVecl0b5C3bpEN9wP9lOLdRrpDXsvB1Q
	 t01Cbq+TUVrxji0JDAlVnFHS6LmwojelagPK9bJ+0hr3w5s6pUdxgfBrMR1e8rnc3p
	 WxjtL0JXjHxab5q7rIz8cBbZFp6ITjnMTALhpJKj7ShdMX6tAzDfTwWF3G/Sr8InYn
	 KFR5XoOqUzlhKia8rrxbspTWjaRS4OEgGc41JqoQmpGkTTMRvvT2jd4ERpqkqWo9Dz
	 jyd5AKVs2clzc4zO64HEwz3Pv7aCBrkJ6LdvkohR6vnXwjxZSB9StLQCPdVzlLrgEb
	 +AI6bh38nnYvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A807FC3DA64
	for <ddprobe@lists.linux.dev>; Sun,  4 Aug 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172277975364.19031.17248366336884009719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e865d61c54243a6afc2e935decd681a1a6eaa8d27119bdcf7305e10b3f586a5f
Date: Sun, 04 Aug 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722779753
