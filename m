Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CFC019CD1C
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719243743; cv=none; b=n/mODN1o06Q8S0NhshZ6K7Y6tvbMUaYpqgjVs5L1fRhdHNzY7StBNUr94Fnj4rS5zGeX3Rpfc++upAdSM9tUSQgR4gaWG5vMip/NPTwVe2UWbSmCE55Cv/Ex+FoWEEoBcL6sQTIRGDCdpwfQnd/JOLQc3YKAkPdi9i8ZxhnNQ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719243743; c=relaxed/simple;
	bh=g1wcoFlh4z0RctPlggqmy/ywy+sCvIIZjyli5oj1yt4=;
	h=To:Subject:From:Message-Id:Date; b=sRKFx27s4eWqAaVhQs9krlBLoYCsxsH1rpEu2dCNdYh4esQQMwsy44ltaacCMayiJnzDpud98C7m49d2b7tmcY+ilTengqrXYFKRkqJ8+TjOnuOQzSs2YJGxN20YRp8KFBKK2COGtXkiqUBKfofInY41kYWVnpHujwGhGvyxJ+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WbeRexAk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WbeRexAk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D971FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719243742;
	bh=g1wcoFlh4z0RctPlggqmy/ywy+sCvIIZjyli5oj1yt4=;
	h=To:Subject:From:Date:From;
	b=WbeRexAkDKCJVv5X9SxxN1jDbpbxutfVN2e4j8gI1PQPEMIn+HWoUMs3m9j3PO9kc
	 Wvjrni9G143+cn6NfxX2nAFtt6fsmviSNRurj45yBOUnghBc0FKF+L4Q8D/AuCKVhN
	 lf5AXU9qWojQMIcJNglVSbrtA+tAjJU2OVyvGazGJZqUloEcNNi5AOrz9HrLDJb2K1
	 UxE9s4M+AsvjUWBq7/4qnQqy7LoGr7/z37AuYTT6mM3wQs2hr+nxfzpIoMUgDpDLaj
	 M7/olT24F/mXiS83MYuFs0XXmwW5pmj2kYWFv1Vu+HWzMq3YZ3EKaSzLSBXamY2jki
	 EYu4qAs6P/X7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C516FC2D0D1
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 15:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171924374279.19689.2753551688655788840.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b38dd158ef830de3d83d056fccbf25eb9475d66ff5992c8f07bdafa6f632da9
Date: Mon, 24 Jun 2024 15:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719243742
