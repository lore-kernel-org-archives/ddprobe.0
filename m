Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F665337BBD
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780370074; cv=none; b=DDBJHaZX+MRxvIIucXCfG4iqzF/kEeMGScWr4/xdLfG+rJZt38pPDJFRUnHhiR4LRP/0XhDp6fy/wRpnVaXBoB0YfP+JIFkZV1nzxvvh40XdIMePzmgaMdzBMsB/BpY8GV3LQKAnPu9ZFug7rFgzRsHB/HVa/yxjDfkdz0mKrKY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780370074; c=relaxed/simple;
	bh=QRBHR5nakxzP54uwYfzH6YQJbSicDqca7map1L8l+2s=;
	h=To:Subject:From:Message-Id:Date; b=EnUX1MuuvSRu1iNe/FV4qJJ5YTOVSWjRVPjtt58APKAmEgXQZ2S6mm6nSsfZr2dy6gmqeGYtsk2viUcMSTxHlE/AI3V5lXats0vg8BA1yE1Io93c6TOFXKIM9cVr6jWzfKyyWsssljV3pGJyoEZ3tBO8/3gvgCjpno3j73h9mhI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q8a1dKLp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q8a1dKLp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4F7CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780370073;
	bh=QRBHR5nakxzP54uwYfzH6YQJbSicDqca7map1L8l+2s=;
	h=To:Subject:From:Date:From;
	b=q8a1dKLpD2NRD0YzOkqYeeAj2Z977fgmgBfnw770TKVuAz1AQBK4tASHEJYeJlnYj
	 k/elD94Vp4PvX9W2GgZpC3WQ51oiyqu7iSNpv5AJPaxuP1s+yGio/i00ntRUSmJIUg
	 ouXxa/RFRnO96U7/a+8vWfRXjcP97AXiv3Yn/KLx5cLnfUcwS99/WJ2TMiHec2P2GA
	 r+BSW1eFVKXS0uw0B4hb1CrgVL+80oGg9/WOr/jgzxSxfft2JjOvXmez0ZBX/200Vw
	 sADfYmUL9BajHTdHI+4zpqZ+roN+QhnREafVRA6r+wN5yZs8B6twhngNYXD0z+EpZj
	 d1tFsginKdEZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA695CD6E55
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178037007369.28291.12478424236544652975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72405042ad98ee9b5ded8570df1592a1784cca50531e2cace669f957d75838fd
Date: Tue, 02 Jun 2026 03:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780370073
