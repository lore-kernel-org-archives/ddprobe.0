Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A8FC12DD8A
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712662697; cv=none; b=KZgcNbmMd4vSFpu5MFzOgicdRkUb0PgTZFoB1I4rhVxhBdeYbr4T/k5BoHFjSEcved8ofb4IrAcmCKkS4236GClChXgNv0ClgxUf0OQUVX+7kwTQ84KuMBxv2zkSJQhGyA4/7rAcZSr0blpfU/1nHcsVKaYuDWPPBonGdhOQQ0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712662697; c=relaxed/simple;
	bh=39HMvgAKaYq3KboU1fHQGlA8TkZHODeY9N3jeybsFKM=;
	h=To:Subject:From:Message-Id:Date; b=h3VpME3+nF80Fjw1EjS52zi8FPJKmO9Rfb0SkleoeDDw25JXvR8ktb0FgVcA1WsLhz4pHzEC1pUxhwYPHC4mHYXSdPfZBmX+fnsqIcm8htfUIwj1r3WdUxAUVTSmtexkNHjWNPdXis3XzNzU2bmPGLe22JOstARHzKWT5SoWb78=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AnTT6S5f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AnTT6S5f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 89034C43390
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712662696;
	bh=39HMvgAKaYq3KboU1fHQGlA8TkZHODeY9N3jeybsFKM=;
	h=To:Subject:From:Date:From;
	b=AnTT6S5f/xGSjynBU5ADYmgm3qE+xVcOyyRqbWYKdmC+YtRhgHZ3y1dCi/S/IhfN8
	 wp5V1XyA2mrkrPrMRBgjctiCMP6YZqE9vjvQW1ubq+o5UUyE2skK+XS4+k7sTrFzjo
	 xLAtIUgKfRQ86z+kBaRT3pi3e92V3xUN5yhGzhy9QpkZ5O9wUQgbLl7/1d3+WQuZkG
	 SabmQW6CAuM/vQemfi/2BWkJkkcMZNPIgBhpDHwASYhX6BYL2tzdnsgoh6PEZonTqa
	 QcbkLRBahLiflqs1qNXlhJ4gV75UqXtecaof8IGgneNT+PRODJoc/X+vw60DKS1u8Q
	 l8M2du3O9qiaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77418CD1296
	for <ddprobe@lists.linux.dev>; Tue,  9 Apr 2024 11:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171266269646.19356.14200327555473598695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99c509b3a0c99981b66d5f83d88005b8fc88c5e7f6d6f795d80e379b263ee5de
Date: Tue, 09 Apr 2024 11:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712662696
