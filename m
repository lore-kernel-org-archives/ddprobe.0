Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEE12747B
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746609594; cv=none; b=QCBZU1HfuwH9kO+wpcwSAl6wtcfNKusL22a7RnKPAo2GGDJXeJYM/MXFYxA8ouz5saSHG6h8m2W2J+CUNKKr1pFLpqiMCVtfbiyxBfrxXooISDm+cLtKNOaBMMvU7Zrc5aJMSnXGerfCktQanLGeoSfiG4B7o08q4gE5TqFuusM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746609594; c=relaxed/simple;
	bh=OYH10ykU10IFksPLMGEAoKFRuIa15QVeILVUNxuV96Y=;
	h=To:Subject:From:Message-Id:Date; b=CemqyIus4+0sxxmFjsZ8vnE5YaWA2R6t5nBAdeb9UcTGyyCrH1z2cX3YDsW6A98jQHbxtZ4Qf7gPtoc95TQYRuiQA+jW9jz6W5AHh7QKJoaeavQfq/QzZ7xCrM0CJJRFG6Drq7DESv9KsTnsrMTd/sdyZdFY1wzixfoZvgEYVqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKD67u1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKD67u1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BE2FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746609593;
	bh=OYH10ykU10IFksPLMGEAoKFRuIa15QVeILVUNxuV96Y=;
	h=To:Subject:From:Date:From;
	b=jKD67u1j91eJcYBxhmVl2kml/t1ZFrLx4hUHnkCHIqJ82xbr/theQA3t2UDdMva1G
	 7QCUuodKRUhOELqseracUFE9wyo/uXwYIhWIBbAXJniPTWkLFFBZ2u6LgKedAVUvPR
	 +Cl8a5oftaT2iCL7ik7el9m6s/c7Id2LClU3wvU4LAk/aonvbaFISyiQcre88J9UOL
	 vCsTXhdLiUBK6Hq9oRp6z9JtMda2+UyUOEf7aDGvu39PeDYwvvQA1/QKewqcSlHyyl
	 InZnUM7cAYN5kkLxg5GVwgpuI9EGhFWN7Rb1CUYvjvVkgQaK89DkG4e3MLS3yl7ZZG
	 n2MencS2UAbrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E847C3ABC5
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174660959357.14294.6736299269199163170.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46dc0e2e5c22e3aff8177791c2a85d3fd6ce4b3fe945fe24b30de1afb7ff7322
Date: Wed, 07 May 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746609593
