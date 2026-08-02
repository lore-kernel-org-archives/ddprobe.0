Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270D53ACA42
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785672634; cv=none; b=HEj5fELqAuoFab2ZRC/sPD+nY269roF/pGkjZC0o8F/hez0X1e6lQAtE+BJbVRm3zSrxSd4w2F8MOFtrDtqDAAik2PP08hvYhJF8hbpfT2K9bNOb1cwnQAVqxdjwwb+WTRE2hvrTGl6grjRCKAOeFcX2ACzX3+rwG/SwtGjDFt8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785672634; c=relaxed/simple;
	bh=EK6L7LoqvzYsQq0aVs1BupyrzfoTCS0PIZQOOb+UfaY=;
	h=To:Subject:From:Message-Id:Date; b=ZjJXj45nDOQIbihxpmtzoPQLt6drRFOngjWIar3sRWgsQ+BhPzBWt9PRIJ5A7HztuqWuXREBeUCg9K/TCSIm4ys3xH9N4yOxt8YOGzU0ma5Hz9/Kpr4j5TSMaO+oG9Y2TqU8hnu3LS52SPSDdCLFrhHxVYgwKVQEHdoNvkIAgjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TgxiWIo6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TgxiWIo6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4B8C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785672633;
	bh=EK6L7LoqvzYsQq0aVs1BupyrzfoTCS0PIZQOOb+UfaY=;
	h=To:Subject:From:Date:From;
	b=TgxiWIo6szkut9wMtCaFV75wYeVdmWFiIJ0+8BReOXws6vWBlTxo50OXmx3nz1dmI
	 KQ4BdES0lF2pLOHQT7/fR3jJ11tNTpJKtIcVDWDqmByO3meIj4mINLEZH5Pkx6jIC6
	 HK2hnkBMwdboKinsnQ890LNVbBwbVP6ofbyAujCGXzL7ekfWpx8WxgGtB2uyvEHUlr
	 bpOlFtA808O6BMdwuGIfXAij39SQOqZkFE+kk1TiOA3GHM4pWk0pAQSTZ0hYNsckqa
	 /tnEkr/o1vrIQ/W9lj4tcHmcAdlmHaj662kXGLvr9JXUKmaBqtWT7MaVxxhJ7pZyCe
	 tnPgtLaP/gjig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A85D2C55162
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 12:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178567263368.26083.17919537839895996851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c5647431876c9a59a8565d941b69cb0b870049eb926a6fbd382a5802b64f91
Date: Sun, 02 Aug 2026 12:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785672633
