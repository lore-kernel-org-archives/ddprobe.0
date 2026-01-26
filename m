Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12BA5246BCD
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769462634; cv=none; b=kAgeKyezQ7Nivrw8o6H7kLHEXphgjjJz4OBK2x8byBTPZB2vZNOnd7g/Xgr/kqq2gJtfcfO/nDSWVz85FgHVUmkoA9W2fxCRtnYWJ48oOcaxGg9T/vf5A3rC9nVEeqRTX5IPyoznFcy67V3SSk11sHvXY0oSiQAPGg5U3O6GfyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769462634; c=relaxed/simple;
	bh=M2iZlzULPPg8/YixRcxEdSRclWtYKxNx48knR3xgla4=;
	h=To:Subject:From:Message-Id:Date; b=cXmbtzDPZIVvBRb2MZ5xGCJJFL5o8CNtRX7FSgFGr/Xnx1xwwiTt3rJ/d3JAJ3MFC+ygUDMafN5383xqqOlrEht2wEJfVrx/KnjIT++6U3rtHNvH9mxKZqIVpbqfqgr808Th/jHiMpji9J6NdVyGkh5rsBpysnehaUgKUGcvJvE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGduqv5O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGduqv5O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EEFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769462633;
	bh=M2iZlzULPPg8/YixRcxEdSRclWtYKxNx48knR3xgla4=;
	h=To:Subject:From:Date:From;
	b=RGduqv5O0r244kUH+x6+U+JCGjW3yZrbUzH9Msjm5E/5Ofkd2fmA+hnfpgYeSM6H9
	 I/n971RlpnfySo7dAWPDRPTJokzKl94XMM85utKVPfF8DxxZmsHucDasi9uasZZ3/E
	 b+QugviJCaMXQVcuthmHWWAhQOuS0DQM1r+BFW5sDUiJTVGaxvL74ehL/TziIKkQ8w
	 UoF47LbLh7bByVGdVpHiuoG9O2RgKbLlgxqpOWJG0nQrdfjKQX2Tm9cMYYy2q+cBL+
	 825SCRo6a1fyCUx9jgFASversc/OUvBxlJmdw6smNEGQmPkOegDkV84uV/3DZGFbLN
	 y/Rga1MU1OuEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928A4D1951D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 21:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946263358.6360.14437357143708560628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d8291b4ff3e5d4e9a6e515f31538638fa608b7447e7750cbe8b84e0bdc786f4
Date: Mon, 26 Jan 2026 21:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769462633
