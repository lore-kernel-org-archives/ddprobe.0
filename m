Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 197701ACEDE
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773608694; cv=none; b=BXiwmn7CrdBfy1zI5aGl0h7f5+mRcPdOtW0vzwEPkKAgbonLks3T34OOjhdABcWKDdIsY5Z9IO2ejLIo/CuZq17IKA/Vb+WqjDjVrbQ1m0UQzHFPHY26SzlfIL1H/ZNL10p36w+S86w58ki5F2EmBK1R/kyx4BRduBrLheHP64w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773608694; c=relaxed/simple;
	bh=XmzJ33leU23F+stELvxrbx6EVUtTWjIoq8XOILPz5qk=;
	h=To:Subject:From:Message-Id:Date; b=D5hbScN9BlwtopE41w9wDrTz0EN2+zEqORhRurcMxDGpio8Em1MTJCbV9wATevbfgazH3lobysdZntYVmMwrqqEAlv/VVLVyCEbsVy2Hye/9MnqEb+sn+tiWuMmxLXl9e+9ui9YqJTOIFnd2QrV/4JUzDPxm141Yu3ynF4Cd6pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pa1d/+Q6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pa1d/+Q6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56F1C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773608693;
	bh=XmzJ33leU23F+stELvxrbx6EVUtTWjIoq8XOILPz5qk=;
	h=To:Subject:From:Date:From;
	b=pa1d/+Q6RvP/7lRCPayqFOMvq2lKQcH0vSRXbJCQU8Efq0rBMcB8fwVmdsg6MGGrz
	 Ig8ok47v82GdqjyoZO2w0rCtRlnTwcx2jYPwCuiF7j3HCiJRBXCVfBerBCGOsH5DpF
	 OLT5MCLKVyvyoLX1NoGv59wwdTiiAh/6x2ioxsz4hcPo/wSyrcD4KCrlgNWYmxJDCY
	 1gV57hFtZ9bIFk8Yj86FjrfhTSp5wz2boNJsUfVgwgExyrWOsX41JwXVLIbgJrKEPq
	 kXxuSjCfOPGSocqICiCIaffvU2DcYGUXdQ8IMksWyXgNjTUIKjd2W8MUKAACfh+95V
	 OZZqI7dUqQZqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9502BF30283
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 21:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177360869357.15919.2392736567934677466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71a6ad9d08cebfdccae12dd8afc4f03d04e708d88b2007cf30f14de5a808bbf1
Date: Sun, 15 Mar 2026 21:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773608693
