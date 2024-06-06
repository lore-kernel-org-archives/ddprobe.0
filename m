Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 812DC4683
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:47:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717634845; cv=none; b=OBMYWTlJpFkCMK0dNgC8IO3mZbhacXWVdESNnCYATdmDBw5XHTZyMGGfnsRwuJFhU+uI/7U0fi9Tr376abcMFejIIXid/x/BingSjPxrvg1uYhuSJwFr27/BkkIT+zA937djLXGcySRAXOwsL2hHxJBd7jUwIzPVBQRuO6UO19U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717634845; c=relaxed/simple;
	bh=Yg+l6Yxev6Kb5pEnFJJKZe0w8xTGRuxzpflz2gkQ3r0=;
	h=To:Subject:From:Message-Id:Date; b=MViwQZmKQSgCmaCeCjHW0thHyk92wbBqfLoh9awmT5NyRbmoDUYQJETIR7NFdViSNwUmHC51TglTp619ehtX4pUwuKUXVR0sDyJA7yttg9qkpk+CNXGZ1IqOV9zZE24NEGuR/zhKo3HKeAu2dWw23PIaa+Vst+SQTHSsAb7GXUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n23U489M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n23U489M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0343C2BD11
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717634842;
	bh=Yg+l6Yxev6Kb5pEnFJJKZe0w8xTGRuxzpflz2gkQ3r0=;
	h=To:Subject:From:Date:From;
	b=n23U489MQeie+6glF6kmTnyikZCTH3KPVwvJWOxLtkxS/2924FbL1uBX1gkWiox54
	 2RI8d+Dq2e2NwwYLwK1roa5lnqv328GBUHLYpMPh/YD3IzuvGUp05V+4OP5jBvBU5r
	 CutnjTom/jCqqGOCBCWEw3J/2t1BfY6+fUdw4dWz+Z0Z1a9d2CS+kkvJu2OcB1X3vZ
	 fYEMiiruh6jNie5FDdhDb9Y4G0Bezezrr2Oe47eakbrDHbgLQMppoUYJt16tIbY1Li
	 b8iAXtNxn5kMHk8FdYisBFgAFaMgatoOSQgeyYEVybZN5uGfGnTSn+pfq6aA0WlNrD
	 pXoTpLIQPl6rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB17C25B76
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 00:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171763484277.22831.5624357718805698976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 881653e45b118b9d90bf22608a23396462f65dc90eb9d0df6d6f3a7346cc1dc8
Date: Thu, 06 Jun 2024 00:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717634842
