Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B5EB33C9
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717898843; cv=none; b=ocsL5iPEAE+e2StTcktypaVKnNyhEMs9UYiVsKMgTpitnoUuYLRJos6fx+qT0qTkJs6erfWbosRNKoLhW+EXo/4ft0Dwy4FnvphVChm4G8b+NDcIlfVJAonpGmxx7aaGY+hPJebUXZgYMJksCI0b6Nz0ecCqyoWcy+7RcfwexRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717898843; c=relaxed/simple;
	bh=/ijtbov0bFiBaVW2lEyyQJzr8FnfCbHuh8KKUQw6NmU=;
	h=To:Subject:From:Message-Id:Date; b=TBdAkOeOxxYnXD24/LuLQTzy8mpsWFZ7osDH2bMoaw5cVio2Js5nPu0qKaM9w5qVkskwC6tUgeRHst7OQIVhwP4v3kGLfqGChZiH/9wSmqslrgMlfHFJ/kZdXfM0sAuE4QzaCVEVtobS1jejhXy40JpXFaXoMqzGY8yiQN7RNW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS5pMIur; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS5pMIur"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9221C4AF07
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717898842;
	bh=/ijtbov0bFiBaVW2lEyyQJzr8FnfCbHuh8KKUQw6NmU=;
	h=To:Subject:From:Date:From;
	b=FS5pMIurlH2ba1tJEaTYOl48wgvNX51QW0W7bXBs1g0zAGQDlZhap4Wv+d79zRaVu
	 vW74j28aoLiIDcs/DfxWauD0/KQ5jo9krifBubY3jiag48tfqkrbR+YO0wJ3o35jdU
	 QcTgqWcSoBoXTlnNL/rDKlcoKCBnTodj0E3cGLHZr28hgdKydoYVRiL+e2xTH7pfGY
	 QZt6FxaXcg1TQgLSia+LLrjiS7Q3Xf1wcpMUnM8q+r2piGQh9cy0JMqZVyCwImKh6K
	 acCqoBpk5gqX3BK87vfKRgwVKgaVqk3pFClqaIhPEQ04abwTWXaqTXwAttGSyE+2NP
	 otqaW38zscfvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFABAC25B76
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 02:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171789884282.6488.14804968282514048333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 831e0b568d78613d6716d855010b9ba1dd178e2bc82901dcb43c8f5c6b6cb236
Date: Sun, 09 Jun 2024 02:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717898842
