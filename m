Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FED81EB9EB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755785994; cv=none; b=q/RuURQsBryA4Vgs8t5RtKVuyVnvfTGPhIR+Ppeqr0S61zYhW3leBirVbHfSemtI7sInl9c7Awgwa9ZjmBtGKHkqaLJe4XdSKDIbluSxtfLYPuIFsXnflSY054c339edpuVS4f0YiNcBYL6vbhsvFuiKffIWFMwVD6non18DxjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755785994; c=relaxed/simple;
	bh=dtIVDEkyLDaGaD4OwlDw0MbNK8lj2FvHPBBKM1lp5Gw=;
	h=To:Subject:From:Message-Id:Date; b=FWsKEGmrcuX4nhLI+R1jcro/cynDQKJ+l/46ay+Rp+wryOrTZVNW7PYVGlaWY1oegIJwJNUZGf7KUIWTx0q53dLX5ZUMUP5lwcByRxlEyaqLFumY46KjWOoPQuU6oEeBkxKmMJIS9q90ywGoITQPWDp66rtVS6x8v9WBUxm2ZDk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GwwwAj4N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GwwwAj4N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAA5C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755785993;
	bh=dtIVDEkyLDaGaD4OwlDw0MbNK8lj2FvHPBBKM1lp5Gw=;
	h=To:Subject:From:Date:From;
	b=GwwwAj4NHO33GAiUc848ST9N8j6giqNCncaFO+n9Uczb+LpvFpPL9FRzMRBMOPjbS
	 WXn+fxBJk37T7GpVi8nh7vdcjxZSXuDjaEGGFQQK9bF9Z1hnRoJNS+NXCJkXPSBb/g
	 wU56dHnET2a4YbVkSqzrfP9fk6uAdJXLDcWukGT/xd4gIRTrYKqNMAmupsJCVKkfU6
	 Umo2JTYPqMxSSI5ifT09Q7VmXWoA8ZMS4IgXW1Ys8BUIVuNy4Jlo7KN9Vn1Fiq5CeY
	 cch8xuyRWP5rDSsgB9FDdmZ0tMFOasgwuuEKqJaU42pXlhNdZ8ar1iFylt5Gq3T2XU
	 323WfrUGAiCpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB15CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175578599357.19834.10242181791288666838.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9ea4214be0741db5c0ac584b57be30111966e3c81ec43827f5fcfceb6e9f238
Date: Thu, 21 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755785993
