Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48A7B14B959
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742888994; cv=none; b=turWmaFJc0m8T72oQOesmebNCU3bYx2pCOvWgdDUrEo/Ud4jWNIiS37IMI2zcQ6lDpQUmvY9DxhsNdA00Jj5KVMzC+zjxJJxLNGIDQxb6YPjVaBWFd3C883WxJEmt7xuwP3oI6jbxjsBCPumPMgS1y9coO63XwAZg0fYX6QG8uQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742888994; c=relaxed/simple;
	bh=X2J+7A4jdfe7vklr+HskIvNPyuGKwLxLr3PcsgtuZNw=;
	h=To:Subject:From:Message-Id:Date; b=rd6RL3rdU7d3E3j/6FEpPORfUFlNAJrRRF0oS+gLncWTphSvj9U+QFYp1DUrqIACE/qhwb0KKbsqNig4llKtdXWhxfX4fPqdi2bC7AlB5u0KGBbNbkCZb9/hqv4xNrY3quUN+ZR3cJkWvbCPY1jldFtxkMqEUPr4/fpM7/B0Gks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tkCb8Rp1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tkCb8Rp1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4013C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742888993;
	bh=X2J+7A4jdfe7vklr+HskIvNPyuGKwLxLr3PcsgtuZNw=;
	h=To:Subject:From:Date:From;
	b=tkCb8Rp1MmpDfIpjMho3/OTUb+Xr4hsAhVD5yVcIunrpeHh83NuBZ2nZPEQeC7pME
	 BY0bO29+8Kz+Uca92Dy+p97x3hSdRQ0oQxF5HaW6Ex0xYv6SX1t7M3oyZ995kbxzTK
	 BB1u0wBcZfzQimVV9UsRtEAi7haxfGYK7xdVP4VKfppF94DXICR5aSEHDpWN+OjfYB
	 uXDe2iRDBByoyHSAdVMamSSLkPM7If+bqLm/EWgh+8xe5VXiGeeG3F61aYL6Gt4NYQ
	 RTDLCwVp9M0MBpPPOhuaRvSj4VCAA7Zw4eoX5DvclSTI3TK0Zf7D5kcalLzGOj3pY/
	 tbjOu+FZg4faQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A04BCC35FFC
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174288899364.29312.8570595696737376677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0827f8c2809124c4653c143643fdebc0f3670bc027446a4f304b9f1bcd3c808
Date: Tue, 25 Mar 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742888993
