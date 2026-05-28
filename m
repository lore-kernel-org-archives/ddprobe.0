Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18703248F57
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780010554; cv=none; b=MAHDnK3fXlueD0j2qopuPoS28dbfn1cn21ZQlX2RilgH93E0OU46/0Q4c8IMbv+uftWUGJWzCj06ofZ4g4BF0o1N8k7hHsJ+oHm9UhFXWczzIqUu43wOofT4lk2afSQziMYDmLzzuQj+YHj4hOTo6yJUK1XU2LbPYedMjHd0IHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780010554; c=relaxed/simple;
	bh=UrXaZzURt/1e7Pt/L7sOHqzdRCyvcHIeCIo8PNVQEzI=;
	h=To:Subject:From:Message-Id:Date; b=g950SC11V27aCDh6WtHU3mT1WpqEmJDXaTHrI1LXIHVWTazKHlTnsOiAx0k99peKKo6QFMH63O1oTOCpfE3q9EgTm8nKSDGaUBUzR7fNFxDWbuJxedEWxvq4Iax4P/RfB7I9RzQWF2RemJpgWJva0/V+p4otSDa68AVVtxCLOtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fMH+W6aX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fMH+W6aX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7426C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780010553;
	bh=UrXaZzURt/1e7Pt/L7sOHqzdRCyvcHIeCIo8PNVQEzI=;
	h=To:Subject:From:Date:From;
	b=fMH+W6aX56ogPcEW+ZIN3RjOzV64zUd/o57ptH8E8zPgAcvI5oHauuteWERSaMg62
	 lwSF+nvE5u8wV7GP/3b4MFFgyIyIhuiUiyVZMbGNnCdhj84isgOcvvjmhnytToIDp0
	 ZSYOmQ2zgEB0X+A8HVqFYsRYbkPaSpRwva62sAT+FpompOA+S5RMlTQIn17GhYpEXM
	 0kIs4Ysns/99lzb4mF2rY7F7CfPB8kXWdDcINEiqyXEn/DM5P9lSuV79pa808DYI6J
	 UuvceVe9NYBytg6T2Xr1nkBA766XEQeHYvVrnwPw4LTPIgBLkP6NbNkDW1TlwHr/lD
	 LXfOOLlXImfyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B04C8CD4F54
	for <ddprobe@lists.linux.dev>; Thu, 28 May 2026 23:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178001055368.28511.849785149674671646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40803cd15dbb54e1991c6e7693602820bc494e7dab80986111de5414dbda79c4
Date: Thu, 28 May 2026 23:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780010553
