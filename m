Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D21E2B9A5
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754895594; cv=none; b=GZk+erVkG923+f78vBuIsRXPXE1NG2oMiwWUL2wKYDO1mIzvNucs9uat8NfRE6tdgbZFt+gRLUq7wNgtvD3YZaDsV+ovMhbiemF/0DcPD8w+vbegR72crS/pxAFxFpeMmbJIaZUZZ1C6i/VaJcyR8xlPXKZdus8kJbD7hurELOA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754895594; c=relaxed/simple;
	bh=hWAALva9UguJgHRgzjoqoHYf+Wt0K8SlduE1JAWVuDo=;
	h=To:Subject:From:Message-Id:Date; b=pTV+0JNXWBZfniaANr1m+cC0FLllfQ0zKUA9ounKqHWPJi8LGD+Yiv0h02u8OIUO7yYg1nQgWpXwdpVcV8xgccKf6pso7hngGTf9maGT7rLNb7EzNNs5PqzyUNEiJIdZUvrFsGaXClyMayHNrIEl2PseAvp/dhid67wGyjrzLfk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qVIHmciJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qVIHmciJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A765EC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754895593;
	bh=hWAALva9UguJgHRgzjoqoHYf+Wt0K8SlduE1JAWVuDo=;
	h=To:Subject:From:Date:From;
	b=qVIHmciJWPIWez2uB/gaaYh83WsX9TTlHczc0DPXI9EDgWuKhWVNX2TJ44GeA0s0F
	 YETZ+1boXedhH01MYTq8Sy6Pl4ADA6YlbKPujpgL0Qty6mK6gxdXFVYESnR/AmOkxC
	 Ij7bgTP/xrEH3gOWHNYkc9r4BBYEJmm9HfW2tH7XdFuwx+40SufrAeuXgvK0A3abwb
	 9IwSToI/6fuMmgj+Exvl6rk97o7TX0OevfSHQjzgvLcMWO5yDfgwn8eO37naYrZsRV
	 SE/xLsJqX879rKoEyytAlQwA+NSmTN1RXd6IlUQJaphr5HkoPfCJ3HEsb+rky3inMW
	 6CoPWGd6OeCmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F546C87FDA
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175489559357.25651.6978783793236050129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ef5fcde1cdfb5c6c6ee2ba830cf8681d5531fb7d2ecd088ca0060ccfa9197f5
Date: Mon, 11 Aug 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754895593
