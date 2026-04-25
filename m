Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0658A242D9B
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777095454; cv=none; b=IiEcn99kkhY1+VbAwefy1TEXnp1FjxCrO2WU+y29z+18pO1K84ZCkWg4SjiVBU0YHmGMBMMoCFA7ZTXKosL3n25HxUWCDwJ7baH8W44cdIk/W1oTMn29Y64KCXqDjUFHT7/F8Sg1u+G+uVAZC1BDeYONEgOTkDezYWVfflgJ4ys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777095454; c=relaxed/simple;
	bh=1zkT19VxanKA2LQG0GOPr6S/Nvr1qzcVceXbjd5nD/4=;
	h=To:Subject:From:Message-Id:Date; b=uVfW6cqGqgvlydkyPNEKxI7UfIBCWbPNiayoXOckuO7OFsdmFHrwFK24cwv7ozPlpjHbb/Vx+EXz0OsV2ifc1mUepzM5uv/G2Mme3vJg9zV/NFNLSsw+f9ocDXGQZWn9GDs0si2u9rzM9vM4hgvo1v/Y2gsfwwJCsUjsUQbm/JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5S4xORG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5S4xORG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED46C2BCB2
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777095453;
	bh=1zkT19VxanKA2LQG0GOPr6S/Nvr1qzcVceXbjd5nD/4=;
	h=To:Subject:From:Date:From;
	b=V5S4xORGRO26GGVjAJbXzBgsmhtFecf+J7UF6NkkYkGJnqj1nWzOhItMj/rIOICTu
	 sUtIRiDJjEXOjmteZPRABEohq2X2/206SsJ3I0LretFTifolc0WjwtlXcE9gZFoXND
	 PyM7fs1mNUxLITNFjIfmszcfsskH979lSwpJFdiEfPdPhEQz90y1pWdWFFajc5o8nx
	 rLfUPno5pQ9jLiBPbOS7a9bOPOQ5k7zib5Y2TXMZzTu6xds+f26uJmGpU20yajYp5+
	 YcqOOLZZUp0Z+9am4W+bIXFTcXGQ9by8dXSU4+HC1vIPSP4Mlb6rYgp5TjwFEiamI3
	 MFgC7dVmy6ReA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF12CFF885A
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177709545368.25829.10795831511473035099.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a24b7fe31a0ad6b1a8df11043e6ef01528418c3de1bb6b430044dbdc569a0c2
Date: Sat, 25 Apr 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777095453
