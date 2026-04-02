Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0736E36E493
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775123134; cv=none; b=TISume03inLZ2e3pmkz9pCdCCDXVf0XZUqKMsHlb8r7+Vd8X9yyFdFF5y8Iq5CaK9+6cqdc/1lcOfKk44BFFc/HhzVgMj5bIgtC/MNL/rCXm6VOfvSaKLW3yOnJBH4EoKXmUUhp3cx9KwBiaxxYWw7ibTpQyVaRyAnLjkQOky9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775123134; c=relaxed/simple;
	bh=PInpiVDJdFo1IchfdeaukglBSv/SrMfEOcoZDmwb6zE=;
	h=To:Subject:From:Message-Id:Date; b=ArEMeHGIh07CCqCUZzvgOEj+RRh0kXwi63vLPHZjIGPKr5z0KDXcRicwCjTm7jEzST7FNs5TGvv6a4uwaybiq7bNzs6KHStyi9dwTxcHdqPRJvwLUm2LBW7dQzsCyA3F2u6NhIzjMjdYaU+Id+nKic+TTd9Y73kALXQa9E5tyTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BW6CXJxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BW6CXJxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9394C116C6
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775123133;
	bh=PInpiVDJdFo1IchfdeaukglBSv/SrMfEOcoZDmwb6zE=;
	h=To:Subject:From:Date:From;
	b=BW6CXJxyVkJLchYr2DnucxZH6pC4kmxxvU5j18qLaeCvteLHJTVWP3mQHbB4sjDK2
	 7rByJ+NKFx/d5BsWD2Gq9xdDQqmtFANI3VzRkH4DWgSBigB129BIBkyCqHISPS5x1T
	 H8QzZ0XbvB3eIgMx7klcCofybXMcGpbG1QKVQ2EyE86+kwf3lvbmrE+bmmdknr+bFJ
	 mIyeJM8j+fVpqrxbOctO9q/Szm3azBZnzfjRqAkIcKXywfmxXPjea95IA2J8xHnvUe
	 AJEu3SLdoQt46Jt6e3aGNJPUMU2BeE0egzjhAgvO8/CVZXlBKs29W/rVjaB6S8CF6H
	 wYPah/JIx4FYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA312D39403
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512313368.9494.9018389738809620820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce744fa4a54395923a38a22391149879247fd341c7ccd14524c1de270962a08e
Date: Thu, 02 Apr 2026 09:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775123133
