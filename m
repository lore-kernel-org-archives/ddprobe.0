Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 228C8179A7
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752205194; cv=none; b=e6kjt1pUUXG95FWhwrDFSu9aE36K2dtg+JbcjDOFEipC9X4l8PHH49kxK5T0iBt2UlWR0VR0b0iJIpbDfhVg0ZOQ4eHsm77YRohnIs3oj/BQ+yFEWQW/bp7YuYs6+bLl4Y1t2m6U7j2l23qJEI8Nq3RceHXnC25NmK4uF+kK2ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752205194; c=relaxed/simple;
	bh=cfs4VzMgKgLTwhJHKAhDTzqmw9hsdxWC7hF8dp+p9T8=;
	h=To:Subject:From:Message-Id:Date; b=pgtI0hjTbgLid7+aHTY6VpYeGxxbnu0uzOnkXk8gieaiZvtUqHKZ35tcyoo1hCeOOmBigjX/fhcfYbaiiyQo8CsuRnwmeShlLdhOtIaXK/d6V5OII/PsAZc2Z1uMAQImE7kHCBdfTnEbHkOSvfuZFtz1RrpgCfi4QSoACtTJXuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BH+f7lD+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BH+f7lD+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0983C4CEEF
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752205193;
	bh=cfs4VzMgKgLTwhJHKAhDTzqmw9hsdxWC7hF8dp+p9T8=;
	h=To:Subject:From:Date:From;
	b=BH+f7lD+nboqZbYlS4g150SSrHD16BT4ERjQeQFl2p1qDww3Nd66kEpi+4QSP2S03
	 vcQYUEvLyi4l03cCNOHFe+UzCkNduOoWD4hJ1hKlNyjPblwqPsHONLboHVSdui0ex9
	 skodmh+8iH+o83zTfxPduWr1hdAuifD+6qVxULdofPS8nZv/K1ELq1uDANx8KZqhOn
	 hCaV39j1kvG/Obz8MXsR6i0jSLnaOxDyabiniG7yeyAxslhrvxWWIALQLkv+WsUfF3
	 03zyEaHmFuUo3szvSpBcdwDguD3qksWaFRDNYQ+Er61b5Z0K4On8mWbFYmvOyZ/Opd
	 PKA97bixc2Aag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECA0C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175220519357.9628.739805046609577947.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b51c37f438aa92e6409459c513bdbe0ba3d8299f9141180c750b77ba69d4e7c2
Date: Fri, 11 Jul 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752205193
