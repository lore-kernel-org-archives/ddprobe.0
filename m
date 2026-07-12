Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5216963B9
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783832314; cv=none; b=Ja6XAhaZUnyMNZabMs7RRHKSt/v0QFihoG22dUV3FQ0WsKelIbl5rrkPlRp0lCx6nTdFpTt59K2+Z08w+uLuLrqDSj6fMnks11dqAECUJy6WweXOnyJDD5jseO88KlazubpHNRvRuCDePJjUoruDnFhX/zbIMd0Pxuj9K05ebGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783832314; c=relaxed/simple;
	bh=rldD0COISCrXwNNmGg5rDYilX40RxWTZeO493OWYgWI=;
	h=To:Subject:From:Message-Id:Date; b=jrf9Dp+jl4V1V3Cscgn40+hTSTee3rrfk1Q7K+abvPKzY8XjWUcULrvYkQNubtbCkdfvkbb15Npzbq8dIBegWNpKmGWXYBRZLI4DlOf9fWhEQn4JvUc3WuyatK1v3uvlVWjV81uG2pnSbn3/SX7raA+bFK+Wkh9nW/yXzhxE+d8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JIT2kPXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JIT2kPXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA75C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783832313;
	bh=rldD0COISCrXwNNmGg5rDYilX40RxWTZeO493OWYgWI=;
	h=To:Subject:From:Date:From;
	b=JIT2kPXK4YNzWkFyQvtJXUsK9RxEaDkkd9Qa/RnJ4s/rMFm/FvS7YPuoqCUUsvvYa
	 12/NsHb2fkSAnIeiwzBHXRLbc6PTcghvKoK43X3uWFA6blKRSJGMkLsIb1a7Af9N7Z
	 vzF1CkJSysJeihFlFhosqgoVKpSmxVvPM3vgoDy2dXNsTEx6aiSA4h0VkUWUQbXOKO
	 N3dqgTQebkJ8ra2350PlSqZ6vSofThmMp3C1JJPe+M8CHRky5bb3jGSgde2IEKsj6Y
	 ByehFDg9Vrr3q3KmyPpcWORmyUmLwLYTBDOmzQCDU4UKQgr7LWtqjSlv4BWNLSQBj1
	 SWy9zdrDyztSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0EEC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 04:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178383231368.11861.4818817444165041336.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af2d5b857b91c5d85c9a628ec21f53786facc58fd63ec2acdb8f84c6e1f03b17
Date: Sun, 12 Jul 2026 04:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783832313
