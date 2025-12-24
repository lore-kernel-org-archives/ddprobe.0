Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14B642BD01B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766578434; cv=none; b=pvzvUMz1uijI70Vz/NrKQ7TQA1sHQrDdAV/Ue3I2QE9+VG5y6H+9B+4XY3iRsLKVF2n9mAdjA5fKn1rC/R7ftKURAacNwI/dvx5kMQHM/ZFhZ3r5Av7I8P6a8cesTNi5mX5YFgWtg5TZdxJw/FCNvGAjsJagU5gEvPwHCO6ghDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766578434; c=relaxed/simple;
	bh=xPKrGDQ89FJ+wapjE2VTStnCwUiAdvSrBCLZ7LcLNoU=;
	h=To:Subject:From:Message-Id:Date; b=gHJVY6mVc5xLfm7ajuqQr1QQI0BaTrsFEV63CzgJtqGFXD2upCLuRFaflHv5i+iqBPZ8o0yS4npeYCAoCy/8U2xlxrGZCRItzH92VAvudblyFWpkLS7bDAlK5ySt9bOdFsKe0672dGlFoPTORDbwtzWjzZZ33CJ6Md/j3+0T/+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XI67AwGm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XI67AwGm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25BEC4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766578433;
	bh=xPKrGDQ89FJ+wapjE2VTStnCwUiAdvSrBCLZ7LcLNoU=;
	h=To:Subject:From:Date:From;
	b=XI67AwGmIZ1nXBkkfrIp/wQLWGpOw5GJdwLBi62F6xcktCJTQUsGjf3fWNCTx4yDr
	 lNwlC/z34E9Porm73YGSEXH72EcjoUPMwVrFxO5r272MlyStO02n6ovsUwaekJhum1
	 yOQxz1q39NZdYfHpNyoQnDEcQja3BPENx6oCQ6m9oHvea+ihCpWQZ0gS3L1sjkxzEI
	 GkNyDuqifM0F85Q/jm3Rn6GVLFnEG66IvsmQis6QgSE64a2TeHbin8mF+YQEFq3R+Y
	 TdndrpuqzKpcYbKS9Llozvz+26smEI77ggrGONwveioWWe4kQ2CU4zHDQRk+axQBW6
	 VYX8aoR0eJ2/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9467BE7544B
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176657843357.22469.13297978116965622137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 449af42cc6ea00e8592e345b60d4a3786fecd8d7cb056ee55eba2b185bca487c
Date: Wed, 24 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766578433
