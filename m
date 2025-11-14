Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F64A1EA65
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763127594; cv=none; b=WzqmcHGSyC2weFSz1KUstC3NWMUygkvvvZEqbQyVyUfSZHCEppCU5APpg/BKnjC8oa+HCTx4Tkm054zp8Zy8XXKCg0Ss4ibyGKWpst6RIqqEGY8dXTOjqjAlhMnUaPf+ki2oOwdC/v4i0ZE/C+/KPvc8t9iHtqLSE8uQY1h0rKM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763127594; c=relaxed/simple;
	bh=mXImMyKGYmG4eAPD0IHpJNJ4bDsypjeqZiMGWc693CU=;
	h=To:Subject:From:Message-Id:Date; b=jB5kZw3sD4vPtJf+BuXvsGB4lK8kT5jxaIxd4eV7ZzoHatPo6wUwfACQcuvJt9CC7jKZfGt8XN2IQTXaawYuRnp/2RA14MbiadyGbkM5VdHBny4XYjH3gYkO6BZ1Qe2QttzV/Riz1Vcfun/P4E1yHgtgtP3kn/6d1lguAgEp38A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZIKcSTk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZIKcSTk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E439C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763127593;
	bh=mXImMyKGYmG4eAPD0IHpJNJ4bDsypjeqZiMGWc693CU=;
	h=To:Subject:From:Date:From;
	b=TZIKcSTkMt6xaIA545g4EoE78s8dOTrpYf3jrkSNuJOo8pMCJbSAowspzeUN8fKCD
	 Sz57rjQ/qFCU3ZuYXsYI8mYVAAdy6O3Q0ej+3aOGWB8ccKNPMIcx+FRq+6QsxL4Ro1
	 EtOW7+EQwFvbUSeuMtXymV5u5qJglLfCbC26bk87MttDVB+pa/G1fa4vGfUa53vNtX
	 RYXbUO9Jp5kcnP52P0qQd56ZxuZxXuR/bbvHrWq/uKZ6VqYLwe+VncbguWS/ReNwQv
	 TI42ucc8WhmBHcFo8H6tR1i1IUKvxh3URkhxdwh3lYzPNLtd8MTFyTlkhp076u7tOA
	 rhF3W8yfi4oBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9203ECE7B08
	for <ddprobe@lists.linux.dev>; Fri, 14 Nov 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176312759358.2194.13742689564270623470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a76d94a71c2cd27ae012eaf6d46098a34149b603bed5cbbf8ae9d24f5cc78725
Date: Fri, 14 Nov 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763127593
