Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 325592D3EE5
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774686894; cv=none; b=WyjiZqbmyPebX2jhj22/bPSGBaB30K4NvMFgbEoVEj/n5xdcwoB/UKyZfFfGlM82i/swpRgWEa36vZ9Tt+8+9K2KHolwqJL4KI321ZhaMoM/HEsoLYuok9r7YRBw00YZniz/ZZkfjtYKbL+B7CSQVykbzT2jv3RZyXH6NaZweDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774686894; c=relaxed/simple;
	bh=T/V7OpV6F84s5azzQZvVdRggq8NE3KLLZuN7ovpkL1Q=;
	h=To:Subject:From:Message-Id:Date; b=t7zX2i20PyhCicmPHTAqYlA51eXr1dyTDkFF0l/GTzg0JtD/R4KjT2CKqObmchENtFHR/sN+1+NuSJSLqYyvxWLB+xzhgNGqV3wSjamjeo2DxpR91AHFCr662dqeBo47BKULBE3zWRR6Fu0lzMcf2cuE2wwKpCgCfIBtaiSsQ4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ForFloPq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ForFloPq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8318C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774686893;
	bh=T/V7OpV6F84s5azzQZvVdRggq8NE3KLLZuN7ovpkL1Q=;
	h=To:Subject:From:Date:From;
	b=ForFloPqsqfJqA0nUVxtS65I5PQYh9ITGx6v7JVhAUugTU1YuOWlwfMeH8ap8ND4B
	 wQE104OPd01Y+Gsa7RGF7hY2Cp9afDLxDJ/80n2Hb5FhjnbvvZK4V8CMsWtIIJkSW2
	 cy+A/aexQwi1CLfC5aL6WIEBHLNcFBHAOhs1ckWddQc2DwzfT3RDxcF8bGp+SdRoC9
	 nB6xw8E2Y1CIF6RCRRG0g4OgyVitJjTleelw6bbBBDT7BcjQx0wtAeoCf4Dyn3Gyxp
	 j59i929utWFNXglJJLLki30FOyRu7Avqmg+pcpc+dRH9LGuqRm5/l9CH6tmI2bbpNH
	 g7sBr6LBXmkBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908F710BA45E
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 08:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177468689358.14952.18265981227617418833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a12bb4d9e39a2c7ee56c576883e74911a65a70f669e44fbab91db133f8943e56
Date: Sat, 28 Mar 2026 08:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774686893
