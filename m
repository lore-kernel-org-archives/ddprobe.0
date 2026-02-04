Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A061395274
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770194634; cv=none; b=iDpBEOxmXmeAu9q4qoJ9IomG2wUe9KjJ8zG5aL/1e1xspnwiYHomEnWaZVBtkfmj8whWO1YVPAiKEslI0ztDR3sxGCXv1wF70HAVp/4rBHjnn5iFaMW+V9b+KLIHA0UChwRv11clrL3xfX+dd6qVxhsZv3unGaoWN834RY+5BuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770194634; c=relaxed/simple;
	bh=9pc2SZUrtp71pmOSfsdSOZHHqL2BdONbfHKHY9W7JrI=;
	h=To:Subject:From:Message-Id:Date; b=uvDgibwUWUSq5MWRjKSADGXMeQ/TiJxTLGRMggG+pzNG3qvbyyWUuzCnscP5vkcwNXLb95S9BW39U1SG+pGJy62d0CKo0a/WKPeaHleq7Dknv9G2aImSCYY6rUDs/CFHDR7dWzH7QmADewr+nfaRb6nMTUMktgBmxgcU/nP4o/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rGC2T0RP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rGC2T0RP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF3ECC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770194633;
	bh=9pc2SZUrtp71pmOSfsdSOZHHqL2BdONbfHKHY9W7JrI=;
	h=To:Subject:From:Date:From;
	b=rGC2T0RPVuURg3O9JgZVx4AY4MATiNqkQP7AS11yPwfqyHyKTO/vAtGliPUNdfS7A
	 SGEvUgBn9X3jaiBChqiwnTw+n96Fzmm50XcKZRnBTykXZpfptMgPKvuomsvg5gBTXE
	 AGHs8XQQX7rXUuvzQnJESXf8ey2TOSFftbspF7wPGgZ4HOblz9Qr2iGjMayqQWTtah
	 SOwSY4izNZA8CpIHKeqeIWhbPW+BT6iKW6xmFTTN3NSCsNVlsHHQbjk78E/LmvRwt5
	 sht6sw7pezQl7ULmKAIKgcknCR7Tj7UutDAcEPBwJBVzDRKZvcOZiY/l2pgMgE1nzO
	 XBG9HA87jee4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B230E83EF5
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177019463359.21063.6403929736772256992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c357721ef88b2966f0c7637c42475b3b7c37bf22edd34452760a65ac475c59fb
Date: Wed, 04 Feb 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770194633
