Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23AF919E806
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752086394; cv=none; b=jJRweohEQJiJ90d5C9PAEXeqE/qCdEKB+by1lNV2f5VSD3fXJCMnuw8UROgbtqonB03EUdOVNVZ9ZklE2/c37CnQcDdPCIYMiUVV+dmu4LvU6mPFHT8TcIO17pDH5okhDRjCiRhyDkA6sb2HTPhP9nTqlpSNY/nIHD+fWL/r0n0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752086394; c=relaxed/simple;
	bh=llQSC+Pnp6NCY1gBBZfDPy8KKgoafRuBTD6VxunksXY=;
	h=To:Subject:From:Message-Id:Date; b=baMPm3E6FDpBDmPoL+u4eUgFE74QbkBtWnKOk8CkVJgbFTWSYMrO3nWo82cjskBZvmXqJJ8wefyH3dTcJTqfTsnCdbXq4kSZzdi/CEIgjSGvG/2XneG1fA7tp5vWhQs8mtMj7L8yZgF8TuxutHXrNhrwnmxGHelmtaQcJoBAQtE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dNOk6ZZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dNOk6ZZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D86C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752086393;
	bh=llQSC+Pnp6NCY1gBBZfDPy8KKgoafRuBTD6VxunksXY=;
	h=To:Subject:From:Date:From;
	b=dNOk6ZZfSszF0opwshNbfhJp4VlzLgptNCvgsV7ImlvcmW1HaHiNGaHPcbCniftU9
	 +6hrseooGusc0gGMQX2JAKIvFqlqBzVnArzi2s3xFP4Naf9n87Ulmw1e18XAHoKbX9
	 McsofBcVKAXkTXC36WKBz+7m5H2qQRl5ng8yiymsQoBcvf8Wsx3zcrlUotqPBhvzfv
	 gVtVyNzNtO8YoIvB2ZG4IcyFenapqgXsHp7o/dCkzF/MBQCXKVtozfcxAKXQOjixsT
	 qxf6J+awoKCLpu74XtMcQPpaaQ+T1n0JkgQafHE9QhUt+523gydK27zETxjbw4C1M2
	 zUgdhVySCZlNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C9FC83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175208639358.7912.6011582350719331906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62b8f2286dea982154596098bbe99d15aef42c2b715ace4c0c21eff22e7d5284
Date: Wed, 09 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752086393
