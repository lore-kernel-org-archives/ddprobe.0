Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FDC834676F
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787008234; cv=none; b=kgx25ixqapzs7n5O10VOupprPkC98VvLdy8azvG6u0FWMOgleYfR7hZG/TolYrhWsGbbjy61RHhVFATlcZ7bA+1NSZSSmN1k+ookTWKxPu0GIO+iuw62VdCI0m0oZlqF2UfxRMEsUtcYairiKfrbVucfTBgM1QtUSPuuwOB1/CU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787008234; c=relaxed/simple;
	bh=BG6+rYRqAaXW4lDk8SBKxBM+raIH/F8WncH15qhaG2c=;
	h=To:Subject:From:Message-Id:Date; b=Ei1xmthuL2S+S6g+g6kCDxOG69sw2d8wK6hBw6FYy+dc3lOtnvaCdtklPZJpbYzg38FviLnDOUtRG+M2gQANQ4CTcsIv44lku0FpJs8pmsxAILy26U5TjU7wQrZpfDVZYwnJVYXZ94dOsp78yKuV0lcLLN+COJhT3o3BnOn44Dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PpLsrTGe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PpLsrTGe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1560C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787008233;
	bh=BG6+rYRqAaXW4lDk8SBKxBM+raIH/F8WncH15qhaG2c=;
	h=To:Subject:From:Date:From;
	b=PpLsrTGeR1WxHNLBDgFemx2V3rP+RfdrART/Nv1DgGJ/FPdebsA7Nd5gks9nSQZlA
	 ZiYADDCVipekrgBZV592T1Bh4v4UxzY6xed7RzmX/8n4NjVugkWLPJQrtjmxHJtWmV
	 K0sY8hNyZc452Ii2ZPdKiQsovZnsTH2NFyKNGk3zpcHnspI+UkQmBjKzTyEATX3PLy
	 q095Y0fzBm65fn2U2gZjxwr3nzng2JquS2l/OzkyhGxUgu9HU4E5FdHJVPgZzb1UJ1
	 9e7NCQD9GMgqxDNU6qwP90+3VYEcwr6VoHbNuh6uSjyUcou7FxBSBe20Erdlho3a1X
	 hyJkMoHfI6AOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3A6EC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178700823371.24635.3389832896057870985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a3c3bfd8f5e69ff86e5d42c2c5e0f87d0c030bc54487cc8737cdff0ff556d1b
Date: Mon, 17 Aug 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787008233
