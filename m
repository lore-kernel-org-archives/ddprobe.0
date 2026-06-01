Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FD7B38B7D1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780346074; cv=none; b=lyNBnWREafWiC9t0cQsbxhienlI4m9YF+fwNgUxLhuORti2CQxnBS/Z6c9b7XZF+/8qOxTO6eLHAfy1iQhGOQ1K7fW+BClQ5r+RSAGM8EVLZ5vHE4QLCKPfL+TnSApDMVy6vQR1z+egMM+bvD87r+rzQd5h1R8/op34YIGYw2/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780346074; c=relaxed/simple;
	bh=svxydalryHRjB6SSbHgIAj+nxuMqiEGlrunr198loRI=;
	h=To:Subject:From:Message-Id:Date; b=LF9/PxS29u2Qy8k5Z00an4KBBSaxXwCTzsdBbGTVNQZMqNre8o7fVQHiCIvDrEfHxbxANmlTuv89APeRHB3eg8Ijj4J2gewbl+Q60CZrK3IERE9sNbmM9vAwbVY4z4kvm6ggE4LVVSqOp95dCcauiF3R7a7WvUJwZcBZtdO8Prs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dLHjsNLW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dLHjsNLW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D967AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780346073;
	bh=svxydalryHRjB6SSbHgIAj+nxuMqiEGlrunr198loRI=;
	h=To:Subject:From:Date:From;
	b=dLHjsNLWIByr3VizXuxmarYDxJTp5Sv4f/nZ9a6Tvpeo7h6W2f3cCLeAnm/SxZnkf
	 lRiViUdl6BKYSpqQrwu3pieHofO/+ETEQ2g3fJ1NDAW/+wct/MeJfvbZKU84TewLQC
	 LWmd+IIQ9xpkmwAbvfuF73Ffkw9B+rSHHZ4fHKsMEp5RmK5svtyx82kUlub12CAj2H
	 Poj3k0JXDQgSRKXmq8pr/0Fw0Nzpz9tDWNT+AN6vvr98zdk+ydhtASeV5azw4Vh00u
	 qi+oONteARohXxM+E5hi7ETxTiwIcuhfxS9BwsrDL269u2AewPrOHdmmXhE2j3nIzj
	 uAdQNSFP6tw8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD022CD6E55
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 20:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178034607368.28117.3246376230978262446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cdcf3d2db7787fe94ec6179b7fc93175dd8b5ac31c3ea357b85e96a393d71ab
Date: Mon, 01 Jun 2026 20:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780346073
