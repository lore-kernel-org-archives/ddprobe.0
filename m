Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2513B8D4D
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765670574; cv=none; b=r1uvhtDbmGzkvddYkfQrv8tZLN2tC1cSLTLcr+mpRnP1HevedGAqyrtxh2ZZJ8A5KRAnm4zBNXMn3gkz0en4J3tKyzNHemSgWMd/CrZFeEyfYFBVHHgx8PVuKdzLddtWdToe5Gli4W4iJW8eoMqMjBBwL95cQXOewsd9blxm8HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765670574; c=relaxed/simple;
	bh=An75XRfP7nhdFXgfNmX/TXQ1grAo0J9im4qtiGfzHEU=;
	h=To:Subject:From:Message-Id:Date; b=kHhnds2Ix5/7yn1If+Wwl98MUPmo6hdeOO4gOIU8ZHKVn4mNO7Bn5z3NRQ6E/W/+4k1rN8BobvIDeYabJj1vS3LcgRVBnyYlMIOgnX0URl6EVe+OxPO3WyeoW6Xx0grBlq0nOZ4B0W05FoasUF51cW6bj2lzx2P/mihwJbOeICk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeyjZHML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeyjZHML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1190C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765670573;
	bh=An75XRfP7nhdFXgfNmX/TXQ1grAo0J9im4qtiGfzHEU=;
	h=To:Subject:From:Date:From;
	b=HeyjZHMLHVOPWZb6xrjSP8ZSRyrAJmnHYlngRUcND0vGfDV/Ghx1wYuVJ5ZH+6hWM
	 pqsbzACbwVCUH5KNO1LWPmKy9jET9RN4H6x1LHcYEIsxdSfMg1LiqPT/hTOQhBY61R
	 jKqfDSImeeISvx6nVawtljbdo9abtX6Bb4gDdy2tkHGWM4KxGVloSvQXZwQYPnwkhW
	 euV1tIlAeTIjWVGCwVJnnx0CTGyMzBA+zb8NRoyQ8QVuB9S6sc/tjTIBUT2pvtH3e9
	 EvuaDrpbPf7ifdNG89/tsOICDqOgYpJnvNN7adsiWj9o5TJltjhtSy5K5mRgsV0IXT
	 TbbjyLCntB9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC6D5B16B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567057359.26005.3390063059488756389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4ba7f998f9ae1033cd7a51d76170f5ef22c7aced6cfc6315ebe29f13abd8bfa
Date: Sun, 14 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765670573
