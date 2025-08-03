Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226F918A6B0
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754218194; cv=none; b=rhUI5FQk8paQrS8zcbQ37q9a46J8ilwFoHJh1VebcuLOL/UD6/ubJUI1X4qbns8+ojvsejrgPz/YMk/rmPmp8x6zTdeer2V425wGSDNQRVfPTfK8c5iIyRe1ejsgHenY5fmbowFMEzBe826Xaz49ghmVqKqBeKOGC/8rYnbI46U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754218194; c=relaxed/simple;
	bh=/2sFfHnbOQZ7AETljpezeLMnlyFzP6Gpnoy3Cwt8NwQ=;
	h=To:Subject:From:Message-Id:Date; b=tY8anTkL/qSyQcSFVgJmM10e+oIXBsaUiQqDaqm8Flyhev1XRVMzQdYSNQppXBomwvuOhcCCagtcqvw5zKwSSD655zpaEGaiJWEss2E0/xH+OIsojeCTJbhRTCnunyJLMGqu5WFWLHuSUYuaJ81gc6Y8/I0MuVFBGhoY41Cac5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qns87ZQi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qns87ZQi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B18C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754218193;
	bh=/2sFfHnbOQZ7AETljpezeLMnlyFzP6Gpnoy3Cwt8NwQ=;
	h=To:Subject:From:Date:From;
	b=Qns87ZQiK4Bta6MmoO8t5oQsp4H9s5Df5L4nBy3EZ2k8Y0wQMSLk6z0FZrnZu95EL
	 Ic6Q0km35pqImSwg+1LP3CsFuWBYiMO53k2E58WjPy4ea4nT9K4BgBJIVQyn7oEu7S
	 api8vG5nQAs7JLNM5OJi9HFtxVZCr8cLxdpMpEar5XM9PYZQ5y6b5w1XMjWRBZMHvA
	 3Es5T2H3I8BtwRcXAaUPwmEzLdx1Ze8tzDcmqxZpRXh9nUTXAJxUiUHl3DNzzWcSF5
	 OlKpkXLPKcv3/0zup+5kN2dKeFyTC7GAdUnbdv6o1sENe8+HvLTXxHqv0894WNPnX1
	 WnK8vK6fCGStQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F443C87FCB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175421819357.16715.5083393514103523331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c808b6383e7512e150dfc3b6a61143c8c827fc9afd4fc8caefd1e0e948660a79
Date: Sun, 03 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754218193
