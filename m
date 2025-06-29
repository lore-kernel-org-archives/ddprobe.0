Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0945A78F2E
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751223594; cv=none; b=EZ7lkcRDm50QkENuaJVp0SyzDcg++Irk6zlGHnfxShLp65N/zeVXGYQUyslJy3+QyPPMGoC3H7Vnu5ascJmhilcU94X/UF9rTDsbGUZB4aDMKYW/CjXRE5ehzcL9A/jyZGj8OvLrXQ0YEXA+XSwL28IiwfKDrWB2LYK9ROwhuNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751223594; c=relaxed/simple;
	bh=y927co2IPQF1ONcswvoFxXBfYs6gMFHrDotHGVhKFaM=;
	h=To:Subject:From:Message-Id:Date; b=PUcY9C3Ot0M7MCahNzGqXuzFiQZ3cR3dJR4cP+mNNs7VP8JS2m2SiBDmyroj4oDlPAqaDmQVRgaVt1mTGcj8pXYd7ndoT19+vBpGbX7KQ6zzMsbj2pXeN86K+JqOdJt3i6wYkoHJd9l0Y/EqB5Ml197S4gwgt1G0iL64t8aXqHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vCige3CF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vCige3CF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A045AC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751223593;
	bh=y927co2IPQF1ONcswvoFxXBfYs6gMFHrDotHGVhKFaM=;
	h=To:Subject:From:Date:From;
	b=vCige3CFy2ynbHhwH9FUM4IST3lYvbpk7z+eQpPv8zEHSx/hGU4+DVFERcPEz2zt5
	 /+4Pqb8yJ3AOzDGYT6uF3poElo/GjpeJA+TOeUBij4bYUKwUwMRhboblZsdcqNK0gJ
	 h5znRqJ5rWJDeL/Lbehc9ikM1NCAvz/nVfNzC0vIzeI9lx+8ouSVFpfqJMySTljc9q
	 Ei4AqvzL3k6P1hC3odTSt2+nZQkt/PTnbfLdOji+8OyVXrdKYpsEB4YBP/2OVL3MW6
	 OxKQApcv5GFrpb+aVTsAjGCj1Olihc/47nUyF3D5tAGD0E6fu+ZaR7QFqvnki4WFAY
	 9uVXm97CovCAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E222C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175122359357.11830.2736694420339630606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213d4f755aaf2788e1c158fd20b7dd608dca1d16363920e34e043ada5bb5ffa5
Date: Sun, 29 Jun 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751223593
