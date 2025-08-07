Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D6F26D4C0
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754586594; cv=none; b=GpYmFBKFCd11T0UXKi1t+B3I9QtXc+EFQWJFUBHn9UaS5YEp0bhyv7tCRs4p7IUs1IPnU3whJhnlRzhggZ5lb0XNezBHmEDprYrgfj7jbW0h9//dDo0cOsKYIQkV4YkvFC5pXwQkAUurOs13NS7zQuDF+SEpHPxPIoWmgw9R7Bc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754586594; c=relaxed/simple;
	bh=c0zUYtW66zFK1E420Sb1l+5gWBYjQNPr5U+xtCL5J4Q=;
	h=To:Subject:From:Message-Id:Date; b=NQFU7+kH2H8WMCSdjU/AMIUlS0XoEnWNLUVaAvXTcTFpcaWswwDvAcIWNq9l21iPg537bSVNHu/BKiMNabmEovjQqV8xU6Ij4/gvv6dN62wb5ggQjKE9z6wu+97HDQDKNKM1RJZhigV86oSKlPqLiVgSKkBVCNre6Wgeavkd6Cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kqXiakhM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kqXiakhM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A509DC4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754586593;
	bh=c0zUYtW66zFK1E420Sb1l+5gWBYjQNPr5U+xtCL5J4Q=;
	h=To:Subject:From:Date:From;
	b=kqXiakhMa5S6dcOkLLSVnLceWn/ZTM4w2D6Ylq5gHgL1yzDjLPTMV2KWjlLxMHZVl
	 6g8e+QsXSyE+V31T8TNgLj+WHKbXSig29HKtLUX/Q+K3Rs7l8P6VH1X7C20LV1rv+F
	 RUm0wDKWODu48NxIreII2rvDqBxSVB2JACCi229fqQ0Ttkblxjt0Ny9HFXIQ/ImlGo
	 wRefIybVOFJAdciZ79RiJfQQpHAZHyY5Mz9N2dLeUv/Ov83i3fFodbPHGQZpFgz3X/
	 7lhDt9AT5kP4gswPmcLLKDDB19oOeQSdsSeb1I7ZIZlnC7TRY6UdZtxMQR1JoOWZ4j
	 b/FXAh/kasP4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907E4C87FCA
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175458659358.381.3531173373519958054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4ed4f0509f0c7335af60a55dc7698f516d6898f3ad5f75a3c68589c2a085457
Date: Thu, 07 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754586593
