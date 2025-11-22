Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21038248891
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763778114; cv=none; b=VbRw2RP6VgKf0xCnYNzRsIqyjjoAO1P8T2NGCux+SqdtWPDDjvOHy+pBW2twU1f77vaMgqcwRCk1UG0LnRT1Ru0hesmTqV1TnjE25m5j7lyJNIOyBqP0a4Ub6Pc/qBG7C4fWS0InxleYg8XaCHcjEKyakcYdzl3elppWTvsq6oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763778114; c=relaxed/simple;
	bh=JSiCZ/zdlpQxIBV4kX7jXv4s33qpiFvs2G+X4ppY4/s=;
	h=To:Subject:From:Message-Id:Date; b=oDm5/PB4XNykfR+ITkEJF44+LvP0qGLQXklC19heLy88TZASJsXpsQrLWESbbdPGaON4RC578Roh51vhegF3bm2wLfwEdTjr2rN+4wno2NmawHZRXu97eAZdC0eIAcEvM2CWqWGr8HfZKerZhWh0Z+XGom0GhRhSL8QJjDxktkw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nbQ4mGf0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nbQ4mGf0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE80C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763778113;
	bh=JSiCZ/zdlpQxIBV4kX7jXv4s33qpiFvs2G+X4ppY4/s=;
	h=To:Subject:From:Date:From;
	b=nbQ4mGf0Xz11C6RnjBtUnIlBAkty3SxZrCMtmoj5DC8DDeABii8bB2YyMRj5d8sZ+
	 kfWsoPHrtIDDA9akh43qDvNfUasZjM6nTWvDIrgDHHQEl5ztpceyEIg3JPJteTcJab
	 ZwRmx1OzAUg50VgOGqjeDCrrYYI8fmQul8EFjY4IdSs3cmP47grClkq5wlo2zpmLKN
	 +v0eD57kaKDmgt1sQZFK8SbU71cmSYs3nmZMre/efVx2UrmU66zvQsmY8rkvnvS47t
	 K3dhcVpGuONiVAE2dnCNOkPnepj4d1JFgm6w7TMDPyQq+OfPKk9lJ9R7dJc5vlLQGa
	 YyXbgYtSilXkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91010CFC515
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 02:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176377811358.31098.10958068622292775133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eef2587e02136d6067cbc46e70dd550fd287cde63d9bad05f366cff305b5de53
Date: Sat, 22 Nov 2025 02:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763778113
