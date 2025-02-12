Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 445F5200B99
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739392134; cv=none; b=IjQl4HvXGhnctAi2qDqTA+lkZXcpq4H5HpKyz7Ot/eKaQV1D2Sq2jUbhRG0utaty4nS2tWnBUzW7A98zff3dnreaN/7QbxGTpNNQ5B1NO3blUio4Y2uqFm+ocCQQDWPFbbUJ+SLyWr471S/iFI3R9c0pgDFRqLlkwYyV9veW2xg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739392134; c=relaxed/simple;
	bh=/jHKkvsKvzHL6QCgBehKQzss2ZHah86CltfY9u7B25M=;
	h=To:Subject:From:Message-Id:Date; b=bYgkXPSr4kNyEvIh5mPUkrpPMWxLvRwIpFcHHPb0va59jUHp3wXtQiPwp60DRTN2SYeahLLUpah6vIno96GauqU6gsJMkYTaODZeE3CllvJzpDHX59ZpYWrtifLzteAwtmbGiiqZsGKCuy24nyC3/kZkPAQNT7lphhm8j4+IXXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bMLPA82K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bMLPA82K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5D2C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739392133;
	bh=/jHKkvsKvzHL6QCgBehKQzss2ZHah86CltfY9u7B25M=;
	h=To:Subject:From:Date:From;
	b=bMLPA82K/xNrxM14wgGi5q73jO5lTvGD/5PGd7RNsbS1E+b8Hiiy29XRVlM9fIzqY
	 Ee+Pl4/KGCgLHa7DFSOmhur7Sa8mbJOWrwTlA5Yo79HPpZ/KG6cCFOgT7khr1cPUQX
	 EVMIy/H+nqz0vWnJ/FyPkixRU3OOUnAstuJNhTU4PTtLIX0Xb/qPqHxrG+3obcxumd
	 ZSMvXIZa1YwMLI17z3/s4aN/+nhCvW9xfbsCgfqaHfkfV3N1bW7GCiS/CKfQc13fRP
	 2+Y7iDR9PAmaakO9ixVb9qJ7uuxvX6BaJS9SV3iCCjBGhSnwFAMprJQyuZ+oUS+bLX
	 nMBGx9l5OfLrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE75C02198
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173939213361.28055.13478422870964680269.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 382df01f9692b95a967b475d10c22c277534337237b27a241eab095a2efa6e44
Date: Wed, 12 Feb 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739392133
