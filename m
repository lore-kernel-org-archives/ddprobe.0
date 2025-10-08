Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D86527B342
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759953594; cv=none; b=I67ssD27r0bNjGqZ1cBuKbHHDkK5nq3QJoj5gpTq1q10AdmmCMg7X2mgqdSEmervOid0jkLrVD93lQx0tgUD/56iuI3YOyFzhg8RyIL3gawVAPHby6UAeKeWPyWaUaRRnjUXMwtVNvbzYsD1hc34BzIhz0jlr5WFV+eqslSv+hQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759953594; c=relaxed/simple;
	bh=7qEEOKpM5nGf6ABCFI2TpmFOQQj+9/vAma/EFpvmY1M=;
	h=To:Subject:From:Message-Id:Date; b=bJMHe6b8td2Uz345OoeaeC2hy8BycPPt9g6BN2Hz1r8BDY9YDfi6oMMbn0a6MyeKa3jqhSIoScDtBJuarOIaOimMj4GYXH81Wj4znzyDLgcQJ7cVEr3Zk667F7PjJCJEdxvCr5n8w8EguAs7/E7mGFvqkpTrbwExF1Blb4r6ics=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9u8e7Lb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9u8e7Lb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14D8C4CEF9
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759953593;
	bh=7qEEOKpM5nGf6ABCFI2TpmFOQQj+9/vAma/EFpvmY1M=;
	h=To:Subject:From:Date:From;
	b=i9u8e7LbpEN8j9/UF/SYw41XQudkVinTIsFDbW254CLajmXkntEdREQ/1fEihkzu5
	 TKG6Fp8T+qAFYii00L1WFbzU7UWU/Ks279UFi32uEi2cupexUp49a40HuN3yX5ok0O
	 1BPI6HpfOUpN+HE+36hyraw6HSbhJ6HsY1Z0R/1RAiP7y4mQKPBQqAd+g2byZDpR98
	 J9sDtWjq/SeiNc0lTy04bKMcoDfwR6PTuu7wAEM0ZYTCY1nagJ924KAQjhpofXlvNs
	 VS3drcRS45p5VTe7R2Cj++ZZPvh9bhDMhZ1ZkprJznlJvX/dipqabiq7I95P15PTg5
	 VK1JFPoEvvxDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924ADCAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175995359359.1494.6838733234752625740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3aef27e190822966ffe3279e2c8d5365b1b68e81547442294c7a0ec04e2e7b64
Date: Wed, 08 Oct 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759953593
