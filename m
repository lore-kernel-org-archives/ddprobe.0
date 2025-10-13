Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E255C3126A1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760369994; cv=none; b=esILNVxdLnvRhDNymwg4nFck4Cs9LBYAIkMOqB8xLKkdDVonSHs5i4SL4QSxoTDqwKCbN590ub2l3DuvBhKccYnRLmqs8HRmwsRWRaoYPF05z2X/zrBcPQEe//8YvjYMjkun49rrsAo1nh+FaLem1afBwgFrsBtpLAZuRhuW12Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760369994; c=relaxed/simple;
	bh=cNRBha2hrRdWMP6MgYtICJ8GmIPuNc741QVcVe88omA=;
	h=To:Subject:From:Message-Id:Date; b=Ab3HWo+IB0DAR2GyMzWVrUB5CxwSIhBT2buxpH2Oazy0gF6XwQGHoWaoyawL8DTozZ/sqWhVPtGuPbFrvRE7BAzKBLfJXsg+Lq5nOijZ34XvmcmEEw6k9PIK2B1vbEDdSDwQYIKsCfVzs5mwZ7BaT9F3KIeaPSaQx/9fgc6KUqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bJRRRrbq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bJRRRrbq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3EC116B1
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760369993;
	bh=cNRBha2hrRdWMP6MgYtICJ8GmIPuNc741QVcVe88omA=;
	h=To:Subject:From:Date:From;
	b=bJRRRrbq7HPwUXgGkhbMdI9/lUJi6UdL7scZ79cU6KwPSb/VoFBmH/4GBKC/SuYdh
	 HYUI7/mY8QpXTXVQuNx+BVRWozBB0ffEKWR3quIP15zbHO5CmarNrWT27xXgvKqBlV
	 FXyAjOr9G7hHCOgu6dXUMenrVC76IgZeHilZskdVIAOXpbi4HUTsd2rhemhtMsur0F
	 XTI0k22NqR8mMjhN0lPFYunk5QhZTS/GXReFDsiUppRLND3kv5ETEwjuQ5CM/tqGX9
	 mPCHkDdCmP+hQqxcZrwj4vzSJQsapc0pfsTlKG8uLHE4Hx9ujFB9RHd/bFkYKSeOCV
	 78/ItM3UH9FtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93514CCD183
	for <ddprobe@lists.linux.dev>; Mon, 13 Oct 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176036999359.26625.17999333170268806564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d0e4413480d97187244640ac8fd8c1e9bb8ad475793e5b528b8b537bbf0eb8d
Date: Mon, 13 Oct 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760369993
