Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 121C23D891B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781589994; cv=none; b=hRcMCHEkkMWuVgHZ5DGzoowoL72hHO2hO7FxkUVhaSVq9HOyGDqq9IV9vVotWbtESF2+YEg2TpgS67OUu4fUamRvY43TUNgKZHoaSGphQ7g4Vxgpx7FKS4GX2kKgxdfTS5A67xr/2dFOlRvQPiUClzvD++2GMf/uIdSsP8u4so4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781589994; c=relaxed/simple;
	bh=awPf1vx0HFm1xxr+QQOz+zI2+4EGQg0jcmNuNJFh+uQ=;
	h=To:Subject:From:Message-Id:Date; b=AbotHZvJjeuWNsLIXQDOmCaVFf2cF9Pu3Np1cur+uskF6SU51ZWjQzGrNtaijUXMYjEQIy7DFggJSVfr00TngvVS9APsKlOiyTHjx9EFq7jRGC0q1JHxOxqh4erEm9vsn6twoQN1Q+JpA/hYrNmDrEziIKvpa1ZmrkpFcwZJwQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iu8GJWBZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iu8GJWBZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C05CAC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781589993;
	bh=awPf1vx0HFm1xxr+QQOz+zI2+4EGQg0jcmNuNJFh+uQ=;
	h=To:Subject:From:Date:From;
	b=Iu8GJWBZaewTTQHlkGtNvKKubBdcpK+CZi6q7GNAjTwlIw6T6JCm9EGVqGe3TFfQX
	 inRDDLIJkyQ+U29QoO37cLUIPc9/nGQgJc42HFhHEDnKmoF2UH8uBT8cwvWzEDUkMC
	 KSJjyTlHDG5XkzK4gyS1TPtBsggvSRBH+eDyR0CI+UDpnf5OH6D9J2ZA1eOUGkY5cW
	 UQaSJxsqjApKyUwqlEcbcj1DqjRdXMt4Ifol2m235e/yEs9E/zviYXMyr6cWCmqZO+
	 YBZeH9DMWeezLUzjRzUm/CEKUSC7Tra2kDRVliT1ydlzRjKQkHeCm2B1ESf36lc633
	 mVnMLgik9oJHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8007CD98E3
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 06:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178158999374.12638.7233641142893056961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9abd7d05ed4765547a24895cf2f3695fae34f852e4db1b7bc602a0a28c1a07a6
Date: Tue, 16 Jun 2026 06:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781589993
