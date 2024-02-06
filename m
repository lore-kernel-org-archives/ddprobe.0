Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB72A745CD
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707188296; cv=none; b=egHcn/JgDJ6XIlUhFlM2zGGe6Pq4imWBpzN6xGX9+0rU/q8WNQp1yKc0LxhW8EpcEWI31XNs4FXC8DIiacmKMqhDtxkaYN0r21i8e6g3pR/SaGbdjQqLpcIYtDfcUco+d1VK6LX31aHmBy5KG47Ck5SjH64rxjHzWIIKKr1hLKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707188296; c=relaxed/simple;
	bh=Bb9+uC6t48qfPXYiBospe9k8h1fjVCBLRcJ0gx/KyGE=;
	h=To:Subject:From:Message-Id:Date; b=WL2r2oGq1uZaM9qpeS7LRrDc/OZvy4dCHJAFSzydsEFVR9A08j+9r5+uiR+IPinhFsJ5UzawiE1JlHXHd8A3/Zc1afgqFLLkIiULPPI6Bff12UEf7gQ94C840lRpg4frsgSEMrS0L9B6XDUdhuV/CKh3vXIhZHWLIpITbJaqdy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MA/Zjo0c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MA/Zjo0c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83831C433F1
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707188296;
	bh=Bb9+uC6t48qfPXYiBospe9k8h1fjVCBLRcJ0gx/KyGE=;
	h=To:Subject:From:Date:From;
	b=MA/Zjo0cQsNwGOKRf7HhzxOb5FQAOLUXGyXZB9JlgflMsgsyStylvoB1zUPs8dclj
	 jFQozz59ElGVc28xh8QmjAyDIOlmDuAV2PrtU2+05yWTf51yFIqQgs5/REJnBA+Xq0
	 SPeRPT1qEBZIBQfkxgf4whuyOOLSAH41ngJzMfF0NRqPNyrg8tRbzhbLTXJokGOU9p
	 IJn/VIDSGOVBcsOfkJg4HjIzmg2srcEJSXYru2r4inQYfC5VkFINHQt5WHOxfXGpYi
	 sJWa1otpoDGNoARzKdpXB2sLHxUPGs5kbwNybpvU3xlVJfx50F/UVIiqJj0rvpCeYi
	 ReQCw0n3/mQcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62331C48260
	for <ddprobe@lists.linux.dev>; Tue,  6 Feb 2024 02:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170718829639.27141.9179389888018085000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5223f2f63dd0daa0dc334e165bbbdd7f8eea1ab8a6e6fd63322f86b679f4d510
Date: Tue, 06 Feb 2024 02:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707188296
