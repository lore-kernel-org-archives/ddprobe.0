Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D1591862
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768095234; cv=none; b=mkYXXwYmyV+roNqbyZJUSdmvYLZAS8+H4nRo7d9IScrmgD8JP0QHXnE53fiGbRJHuj7bf/fml9/X/sP7ve/swf296TxNOEbwfQBz4vk+A2dTEOx6EPpMaeGHbbTy1rGFvMxdv8D1qlCFBhiNRqccBAjp9+3Fid0e7/sZybjvM4Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768095234; c=relaxed/simple;
	bh=f1Zf/ncoSYc20Ah095/KUZY+z2WkJ4LZmrk+BvkggEw=;
	h=To:Subject:From:Message-Id:Date; b=MzemD1Y/pzPFz/Pi0R3oNBB9mbZbg9H7IRNpbwFDZK2ovBt1fsJO0o7WO54RAyPdO9tdIrvtbcjNS5p//x7UY8LiFiw8oW6ecRBPdkB4VZyyG1ic8lKmRpNrPaaJRRGxW+WK302MyKopYSF0ZIWWosMuiDTRyOX0wyPEYlPSF6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SeqtToTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SeqtToTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EB3C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768095233;
	bh=f1Zf/ncoSYc20Ah095/KUZY+z2WkJ4LZmrk+BvkggEw=;
	h=To:Subject:From:Date:From;
	b=SeqtToTzaOKBNjnJ0xv58VNZSu/dceyP08P3Ioo676CFRk8pEcmbAVqOc6BM1C4Qz
	 DhZE70Gi2meOgR3JLOQStG2YvF5VQiB6gn+6DhDI2sWsk+hwKjxITU/ob7jKOUAi6p
	 LgmR8o15z3jYjRS9+QsdDYplnOS8lgYUiyeyc4yC0scBPaOvm3RFr6lb17CPfPY1v0
	 P9apoQ8DBd4FJ5KgPZdWGCMgSVqkzyO9d/7i/y5FlM9QE0tZVHDX9ILgFQR1uRqpZL
	 iCT8hNaS9Nc+LVxrXFa69KB5TVhqF1SdUyg0aE5IiyTI8qrBHzUf1AVssnJQ2AXy/a
	 4pVYvhDyxfndw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A77D2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 01:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176809523357.7783.17978133984769247757.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2d68b00e1fb3215a0e4c43d50454f5cae6fd7c55d977d0b2314eecd9b2026b7
Date: Sun, 11 Jan 2026 01:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768095233
