Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095781885A5
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772002494; cv=none; b=lt2aQOcGp6eb/+vknROOmZyOSWypsUHNF4iqrDOKYWQrClqWo/LLf4APVH5HEH0mATSB7c52XCgiXGkioWsP01CoHGcKEVHzOH0tnxHX11iV6czNrxjmlyi5Ukp3pryuWzeW2IHlUMv90yqv0zPVX4omEJaI25sn4KzKv5fnTik=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772002494; c=relaxed/simple;
	bh=EMfVNCro4Xrx1suvrvrhJ0yfHIqC9Tlj8poN2pr4XMY=;
	h=To:Subject:From:Message-Id:Date; b=VmNUX4mI+E12QXgxQbxXVY3sMcTBophbHT9ziGtZfod1r8+6WKr5wFHOs90UAz6IBxZM3QWSeR5+CheFLFpXa31G92fzjJdeAGFAV1tXxxsAJ+pSrLRboGTpXAS8O47jucQff0trmkM4zo5M28DGQFxJQEcoGFzN/KgbxKHnshs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nc3b1s5G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nc3b1s5G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE966C19422
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772002493;
	bh=EMfVNCro4Xrx1suvrvrhJ0yfHIqC9Tlj8poN2pr4XMY=;
	h=To:Subject:From:Date:From;
	b=Nc3b1s5GvXEm6Jh9hR0PmXdm8PjYUwKcK2MDgBIx216jQEbItTW9Ryz2mL1oA+PC7
	 3l6P0869c7gRDfQKyDtprascEpRxBDL140OpG5hirk42qR3ya+eLIwzQr/4/eHmmdM
	 EAFS2XhacWPvBKwJHmAXwYLYedPdfV0IZDu6uj6LHxE92B3eKLw0kNKR7vr3+vflDY
	 FxwyMfJgmuF85P/1leD2IzqGYNZLK/zwN11BizUnu9JxP4I3dXTyr1alyZzey9l4lC
	 gEzPN3qKvtoWJVIgNaUrUeM6XECkR03P2LSRCPHTT/8QTb/Hz5wDyhujKuYROzgeE6
	 vYERLlyZb2I4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BA9FEFB7F0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 06:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177200249362.27216.14898308645289630164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c2e163360eeab215eb05bac8ae9f78c5a2afac59f48a8e1188e981ea55a541
Date: Wed, 25 Feb 2026 06:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772002493
