Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11C8A219A89
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767750834; cv=none; b=evPmIRrnYUerX4Z04oNcdqAEXR0ZcA+S5BYeRq6ntmcWhB+KLxa2HGhS77axXTlQnZt4FI+VBbI/rfYqXrnvgY9SELGyEBzkmfd4ks6wBAvtAypE/RBPfKkT5d7SKGEMsC0ovupswzp7OEC8RdfLg7CwJ/aFGnrAI9n9inFqj2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767750834; c=relaxed/simple;
	bh=tCxrJir1rOAiFauGiaep+buBZJ0STvhBYZ8xkbNA8EE=;
	h=To:Subject:From:Message-Id:Date; b=Uc1LoUi480b55I/r68/bt/AZRzFCrvkS+8XOZivPIJ+zUxpFIN6rBGv3B9mUy/SzFd8Yod+YtyPBO09NtIXgI4gth5V2CJ8dfsYNEZ3DtywKORe5W50v7T8bKDWYrJ25EWpw+ZKGofMVCRqlWcPdAG2PkZu/As9vmMtbBLbEYL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIWnDPpb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIWnDPpb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9E9C116C6
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767750833;
	bh=tCxrJir1rOAiFauGiaep+buBZJ0STvhBYZ8xkbNA8EE=;
	h=To:Subject:From:Date:From;
	b=FIWnDPpboUrikYdWs97kQ9s8wrJzEXS4+LMMRt3TN+JsQzWT9sBq+aFoThJv/aC9w
	 LxMsbpiz7MWLkqhCqE3r48N3EWaVqHvT6oRCv1zpX6l6Og1uPtvQycpNwHnwXEj0p7
	 vxppxzSaeHhmqQsaX5Iw1hMK4VcsrTkWSsgEa1V2ivWlOfJyqZBESbjLhO/ztX5gwS
	 eYl6eYBsC8eENMv+bstDnYsVHHhFF80EvFzM+sjnBqbl65cYLd6EdKp3gPETNRHiSQ
	 0CQGZYobGHlA3iDbZtw69/2bKen7hHmiYkc5qP1+AmcySszGPZwcL0eNdXd/cckmni
	 9+qyGx2alrKEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F811CF6BE3
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 01:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176775083357.20751.4338529891187899822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 676cb5bd88a933e89b3f2d227a8549e143880f3749d306918c7774f9966e9cf0
Date: Wed, 07 Jan 2026 01:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767750833
