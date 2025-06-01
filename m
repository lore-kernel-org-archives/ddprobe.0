Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4377A2CCA5
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748809194; cv=none; b=RQ/+9JigqcQaMXC9em0lADlO0iEsddhnJdhicghyg8ONLwp1DEOEfq7KUYeptCAVWbOwaU6B1sNy4hMAgW9+1NzQNzfZ48ywjK9ny0q2XyNsm7axRrBChVHLwHbzcm6TB3w1NbX3dW7SAfUa6pC62jDksa3GlAJ6KPXI3rMcK1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748809194; c=relaxed/simple;
	bh=+oU3sMvoGAt/gFGnwQnU0n2zQhpOaeaKj+NxwaEQzyc=;
	h=To:Subject:From:Message-Id:Date; b=hbXE4x0jLcT9l8q6h5CWmURuPxqCUOnc4hZ3EA/GahNKzeEBLUIAJ19dpNofsIGNnBDrD1h4QQmircRbQuUvs1OylesZpXVnTRbiM4URUkcaEiG2nb954aGRk8daPvbXxT5B1iGbcP4W+R+vdbj8tKnZHIiN9s2h4WiYDFaf9Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P2tBCE2o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P2tBCE2o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB908C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748809193;
	bh=+oU3sMvoGAt/gFGnwQnU0n2zQhpOaeaKj+NxwaEQzyc=;
	h=To:Subject:From:Date:From;
	b=P2tBCE2oiQVvUrDxfObASZyo3ZBfZ09GiCe0t81sklaqcoVxdfWwb+46vOSEarhtx
	 BfbQ052bzmb5eWKadJ+0imFGeLtdg7GEiB1KHDD7Hzqmn9Sfz6mqYnuhZj2imTWVEL
	 voj5G1F00UP0IGsyk1VViOTYy9fAdCfvwnI8p3DxUg7Oe7hpNrkK4XWkslxtEpK8y5
	 i5rrMTl8eQVS8rZVGCMR+rsE8iGrca5Zqq082lcL42i9wCwCIC2w3+Mz8J9Bc3Zy4B
	 MGoG+HTD0FkjoL5fa3+UEwczYTixI5cnNMn1/G1pSuY3eN0yKH2msQRjbmj9KQqxpx
	 Jo0Tcl6udKgqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96CDCC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174880919358.18343.10213183612269321250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fceb026ac717fad9ac995b2662afaf3e2027bcfcbf96981a5cb0082f63a0904
Date: Sun, 01 Jun 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748809193
