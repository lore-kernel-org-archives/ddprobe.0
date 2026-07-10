Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32CC01A680B
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783673314; cv=none; b=OLwGbAYa5kCuPz/FAp66Cy5avI19isMSgtsAq7Sk5oP/L4/bWKHHJTgnDKk9EOXoGwfIOdECGTX0q1WgKxyrejSCaF9X2f2X3Ia6ONbOvXzIXAA4AAR1z9Y+/TYpdGPW/TDE3+X7b13xzccFac/rWd+bnumrTap2n9vnl07FB9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783673314; c=relaxed/simple;
	bh=Ssmh06lX7v+lAg5mjQ/8kHPIwi1Qa9ZMQKB9xAPmXRg=;
	h=To:Subject:From:Message-Id:Date; b=EHxwHkXxJWQqHhI0oFGFOySP0BuKZnP/94ls+A4VJLCQt2P9HpO416RxBRFDGssxMCjSU+SazxpFMU4uEIlKEwd/Ly9LYf9hkjPGLkqrA3eVIzacn1RmWz9O2ixk+62dE3FCF6GSzfO05BfqZObvZjJJlB9hwnBn3ag8Tsmdqh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGf+PERT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGf+PERT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC361C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783673313;
	bh=Ssmh06lX7v+lAg5mjQ/8kHPIwi1Qa9ZMQKB9xAPmXRg=;
	h=To:Subject:From:Date:From;
	b=RGf+PERTlJuia7Y8rUtGamrWrBaxTF/a2VedcD7YBPHkbt+FfTHr1E8q9zIQLO8JM
	 dqb0t1IORuhfMlLPoQtEAGg+aww0qoJzTFeoBPnYzwcpJSLqe2UMy9qfiFnldIlAV0
	 4I54cllkBGQ229WYuc/o6Im34QBg6qbSUMBSHfOzgbCIUJfX11gql7vGRB3QhcrY+w
	 v5clXLAOR4Oiv3At6AYgwoqXAxW0kJOOZXc550h2GI2XRfXGskePoPaDoRiCdOvJQt
	 J0PGgyGWwNpCTEbvhkBs6fxCmP1+apmiqQrRfJKtLKXrX1bIPoeJDXzYznbJfTa9Qy
	 ayPkVNUD1k+TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFF8C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 08:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178367331369.7122.11609582356094302562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c96fc45a312eb3dd2d6b788efe068c456d83b1a3d5f9791ba69e16937ae64e62
Date: Fri, 10 Jul 2026 08:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783673313
