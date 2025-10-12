Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEDBA920
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760230794; cv=none; b=sm3TmnPPEJSVkbkAcnKKKr2lCFQWI6F7nTPBntwLJ0yVs1Xod2wR0ZUmelxwoNiQ5o4UPOLQnp5ojmEGLWuDsjRqqwknjLUsUI/QR8sOyJo89Ud8UxwxBmVTTFiw0ZQGMcWRTV6dSW1XVai3Xk2uf0gg1/oDjd8R7AqOZJcOyuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760230794; c=relaxed/simple;
	bh=nJ9F/DN3+sDZuDI6hiSv/w3sfJzkmKpzjl6DgrmuxF8=;
	h=To:Subject:From:Message-Id:Date; b=KI1Evgv1TkLrZxxgNkV0mpBwCt7emM+jwC2oqGzA0AftzF8YMi4OiE78vwSBAlLzE+3p5KcoNEdmsle58Hs6Nf3Q/+LLZOqGhmB3CkC1nyCnd7cdU9R13WxgWPkbswJ+fNZHbgxENvyBKskXSf8kD9iF2Fu4cKm30KOhC4mKMrI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i6Sl9aAR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i6Sl9aAR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51E2C4CEF4
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760230793;
	bh=nJ9F/DN3+sDZuDI6hiSv/w3sfJzkmKpzjl6DgrmuxF8=;
	h=To:Subject:From:Date:From;
	b=i6Sl9aAROwOKBA83ImDRcUmLceUQ6CMjKm4dYjaPBO4Cle4z/z/uweMTWRkR9wxtj
	 d2ce3GYz325hJe7ig2UHVeRqb856pdtEtviKRYqEZSLgwdsgIHFzkt94JbYyaWs07U
	 wx6JB8l1O3ul2Keo7uRFDEAO5NFs5/kR6B7WKiP0wtAB1bd6p4de9jv47G4E4qlFYI
	 vy3sHOVs4V0PxX71u1ee30azm70YzvOqAOjXZRGJ49TodRmQh6Gm7FkAfH3IzojFFa
	 SLxaBVsW59Q5XQue5AjL+DfOacUcm4BHBykNM4ffdlYEjp0Y6KQkvjNtSYt55Bv0kp
	 C+tgqHDPmHUzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9406DCCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176023079357.26207.8567181958165315839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e85ad2d10ac7ae6d7743a08791e2aead90276d185133109643af6492801381
Date: Sun, 12 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760230793
