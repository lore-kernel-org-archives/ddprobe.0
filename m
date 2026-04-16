Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96B4234CDD
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:47:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776368856; cv=none; b=RmEGdGM2yLeddYlBNBHxQImvh5bu0LfGiOsZi6tuHDyJRdhCAkB3wfN77J64fTWovD5LQ/AAyJt/R501pWaYWVJ83tV3I75/8nKfPozUP5dZE9wFNxHHZXMdtCJMLTTNo5OuFy8/7wD28uPdO6ufk/ylLTyRMd8ZcGs9AX7TVRM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776368856; c=relaxed/simple;
	bh=Kuu/zf98S5mYKYcsZcXZr5nTfG8yAHcE3Tr5Clzhr6U=;
	h=To:Subject:From:Message-Id:Date; b=GcZGizjp4im7MfQJL1brZ3QGD5oufWxKG1D5eBFOF42QCw7p31KbLWVgc/jfsV/5hgrtAXKQerfTtFj4NedFkh0FEXzu0Tnq9q8EkzCWs/Aa/4Qz/l0CIrzN2rjCQkdMXGtxate6zmMZEgZ3eazvUIrMXxAejQeSsBC7M9o9taU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RgZbzEV5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RgZbzEV5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC4C2C2BCAF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776368853;
	bh=Kuu/zf98S5mYKYcsZcXZr5nTfG8yAHcE3Tr5Clzhr6U=;
	h=To:Subject:From:Date:From;
	b=RgZbzEV5o052GO4GJnQIl5vqedIF02LCwsjnJzsIFUYk5mm4iZ9USSKnLsNpTysIr
	 5YZ8PHsuW4evKZC+YiNVPMAZzcqiQsOizhdKFbazAWUK6CACF2CZ6b0zHyb3KUxVTe
	 6TboDki2ua1sU4qOfT/ewisK15JUra9XMAfPGy7BGdSuRsp57Xh295lDchBa1ZZ20j
	 hqUgUwdvfwBR+nJaOrg0oFuzDLXImlsuEiOesUv+z/wFvmMaIBzAAvX0LEPdP8UIOq
	 NGJfVZ3wv3K35UWo+2QahYzrR17iUQv4OAeTILkHu5ULWoLGMDOu3VpPe3Uhwybeu/
	 kLI3NbGOaL61w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB577F8D76E
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 19:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177636885369.17924.8064360070237975786.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a2b2af6c3fe22ce7bfb439664d619618d3729b6ad24c5115bb9dcd229c393c2
Date: Thu, 16 Apr 2026 19:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776368853
