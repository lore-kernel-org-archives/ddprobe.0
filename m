Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BF3F21CC47
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756351196; cv=none; b=n22eLlflFL35l5EEUrT3hIIpVeOgnM8JecRuhOFjyt3SdxRVR/VPkrZ4QwhKSU/nKgSGXsWxZgxE+6RvhK3VBo+fSti2pRHdB8w/myk2mqsGPQbwjzo5TV91YVHNBJf7FFqNGgwq0hdqPwGcb9v3h5Z6naQFlvlzxFgZ51yWy7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756351196; c=relaxed/simple;
	bh=SZbChxifMEXhmFw6vBgEtheNsoZx4cK7f9XR8UG6GRU=;
	h=To:Subject:From:Message-Id:Date; b=dT/HmHjsV3xVnyNkfIQZGRW0xBAa8sg5bqR2Hu5fkB328hI6gbywVQrnSbBzUhLOVzrMmar7qAnD11SY7lRbdrJHoOzrpcdcLPaK+8gDRLFuDkVYC4wznRoZ226tIBsuz8NQuaw5T0t2TLDwiKl7fUlHjALoaaRT7he58HwA+9U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mkgjzDbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mkgjzDbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A17F4C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756351193;
	bh=SZbChxifMEXhmFw6vBgEtheNsoZx4cK7f9XR8UG6GRU=;
	h=To:Subject:From:Date:From;
	b=mkgjzDbE5Utm+MwJIdF4nBW9jNCJmXv3TDRRa2T30yBLVUsm47X9CwcTz6Rr7ouIU
	 ZECSXa07dgjV1k4oLDsBjXkCwYrYH8FReFP8e0AZbwUeGxnKEmYO3lk8z4bN+Szw6s
	 zfsW9ZFesI1jaM4HNJHQROti5frdl3vvlOzcLcipacG/umFSz2VNhDH4nC8p/yUcxJ
	 FAnZypaazE7i2/gsok7z7xtMzZGvwwUNAxOxkeNL4irXjUH8bZTvaVh/eUXXd1HWwa
	 dbAdJPbGRTzkZaJivwq+lfHRIEbczqKtB4aJhlYssXIjvP4ibzxqHKLZ4NnCUz8VEj
	 5vA8sJf1CNBCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A2CA0FF2
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175635119358.10748.15746585894709223710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09cb04545064276d305d89f4da1e18713516a80cebf660d9096197d3037a13b7
Date: Thu, 28 Aug 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756351193
