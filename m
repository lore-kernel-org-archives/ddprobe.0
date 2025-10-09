Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2634F137750
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759985394; cv=none; b=aZldtzoH2JGclT/5OnBoE5po3X6JjToa3rzytMmH2G24jW20tKde+Mf4bwd3cTIXsJJTgUcJwpzwEXapHC5dO4S1JwxuyAB1dTD242nZ3OMczx2sWoZ4xZWarskdpSFPFpNVyvjW+nhT2DSNiPjy4zezo+u4E8UYFOi8jOMsU1g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759985394; c=relaxed/simple;
	bh=ZJuCPAMgAgErLO2RQEi8xyfX1zrXlXEfwClvR9ij5C0=;
	h=To:Subject:From:Message-Id:Date; b=djX7Uu+FpAAifMfCRk8ce5Ahkyeky/3FBxY60E3OR8Iyuj1UqkwRrZ2VY7osZEs0txaWlSfMG2VERKkbL3k/Zs5axGoCpXmCVF7Sy1qLFRhkKOOGkIwl2NQ8+OBO+jm8fK+2+OzhJVnxxzXiFcvrxylZfSatrcu4sfsau0PtrrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AIGyY6Ae; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AIGyY6Ae"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA269C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759985393;
	bh=ZJuCPAMgAgErLO2RQEi8xyfX1zrXlXEfwClvR9ij5C0=;
	h=To:Subject:From:Date:From;
	b=AIGyY6AeNQevBcqstT2jOM98AxIp+WQ+u8hZZuDoVpa4pv/4I8wWsKbpdyfUKZOco
	 XR6enZGVIQirI+8Pxh33bYvR83l3SGM9oljzkh3nV0dqKYwvmkTKCTKNDqOrujCxpu
	 3wrQgzeU9wNpPtujfMY+hcr6uUG1JH2U5G2N+uZABlrl1mba6KYerNKYDgSc6T0wN9
	 QlP9q6TJQ6iCA4Fw08r/w4QAd3+42ZgtvbkJcLTWgrH166O2ZgYrHYGbzKl+Vfq9/7
	 rDWU+OMjFpxbdd4raO1ISyUHwypO37ZeqKlnZqAx608P6MyY5VUOR6N8A7PXheZ2gp
	 Joh5DDUSJW35Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 973B8CCA471
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175998539358.12984.12914566166063566761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86f2486651804183b9b6e9b39b18631be9fa473bc93a49d18db3272cc411ec23
Date: Thu, 09 Oct 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759985393
